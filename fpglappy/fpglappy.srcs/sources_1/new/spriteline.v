`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2015 02:20:36 PM
// Design Name: 
// Module Name: spriteline
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module spriteline(
    input [9:0] birdY,
    input [9:0] obs1x,obs2x,obs3x,
    input [9:0] obs1y,obs2y,obs3y,
    input obs1en,obs2en,obs3en,
    input [9:0] hcount,
    input [9:0] vcount,
    input at_display_area,
    input sd_en,
    input sd_byte_available,
    input sd_ready,
    output [11:0] VGA_RGB,
    output reg sd_req,
    output reg sd_done,
    output reg[31:0] sd_addr,
    output reg[7:0] dout,
    output sd_rd
    );

    // Background
    wire [11:0] background = at_display_area ? {{4{hcount[2]}},{4{hcount[1]}},{4{hcount[0]}}} : 0;
    
    // Bird Sprite
    wire [11:0] birdOut;
    sprite bird(.x(200),.y(birdY),.hcount(hcount),.vcount(vcount),.enable(1),.pixelIn(background),.pixelOut(birdOut));
    
    // Obstacles
    wire [11:0] obs1Out;
    obstacle obstacle1(.x(obs1x),.y(obs1y),.hcount(hcount),.vcount(vcount),.enable(obs1en),.pixelIn(birdOut),.pixelOut(obs1Out));
    wire [11:0] obs2Out;
    obstacle obstacle2(.x(obs2x),.y(obs2y),.hcount(hcount),.vcount(vcount),.enable(obs2en),.pixelIn(obs1Out),.pixelOut(obs2Out));
    obstacle obstacle3(.x(obs3x),.y(obs3y),.hcount(hcount),.vcount(vcount),.enable(obs3en),.pixelIn(obs2Out),.pixelOut(VGA_RGB));
    /*
    assign VGA_R = at_display_area ? {4{hcount[7]}} : 0;
    assign VGA_G = at_display_area ? {4{hcount[6]}} : 0;
    assign VGA_B = at_display_area ? {4{hcount[5]}} : 0;
    */
    
    // Sprite Memory
    reg fetchedSprites = 0; // Single bit to know if we have loaded sprites yet
    
endmodule

module sprite
       #(parameter WIDTH = 64,            // default width: 64 pixels
                   HEIGHT = 64,           // default height: 64 pixels
                   COLOR = 12'hF_F_F)  // default color: white
       (input [9:0] x,hcount,
        input [9:0] y,vcount,
        input enable,
        input [11:0] pixelIn,
        output [11:0] pixelOut);
    
        assign pixelOut =
                ((hcount >= x && hcount < (x+WIDTH)) &&
                 (vcount >= y && vcount < (y+HEIGHT)) &&
                 enable)?
                 COLOR : pixelIn;
                 
endmodule

module obstacle // Obstacle is different than sprite because we define the opening, and every other part is filled in
       #(parameter WIDTH = 64,            // default width: 64 pixels
                   HEIGHT = 128,           // default height: 128 pixels
                   COLOR = 12'h0_F_0)     // default color: green
       (input [9:0] x,hcount,
        input [9:0] y,vcount,
        input enable,
        input [11:0] pixelIn,
        output [11:0] pixelOut);
    
        assign pixelOut =
                ((hcount >= x && hcount < (x+WIDTH)) &&
                 (vcount < y || vcount > (y+HEIGHT)) &&
                 enable)?
                 COLOR : pixelIn;
                 
endmodule