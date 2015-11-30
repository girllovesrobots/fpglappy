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
    input vsync,
    input [9:0] birdY,birdX,
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
    //wire [11:0] background = {{4{hcount[2]}},{4{hcount[1]}},{4{hcount[0]}}}; //uncomment for stripe background
    wire[11:0] background = {backgroundMemVal[7:5],1'b0,backgroundMemVal[4:2],1'b0,backgroundMemVal[1:0],2'b00};
    reg[9:0] backgroundPos = 0;
    
    // Bird Sprite
    wire [11:0] birdOut;
    sprite bird(.x(birdX),.y(birdY),.hcount(hcount),.vcount(vcount),.enable(1),.pixelIn(background),.pixelOut(birdOut));
    
    // Obstacles
    wire[10:0] pipeMemAddress;
    wire[7:0] pipeMemVal;
    
    wire[10:0] pipe1Addr;
    wire[10:0] pipe2Addr;
    wire[10:0] pipe3Addr;    
    
    wire [11:0] obs1Out;
    obstacle obstacle1(.x(obs1x),.y(obs1y),.hcount(hcount),.vcount(vcount),.enable(obs1en),.memPixel(pipeMemVal),.pixelIn(birdOut),.memAddr(pipe1Addr),.pixelOut(obs1Out));
    wire [11:0] obs2Out;
    obstacle obstacle2(.x(obs2x),.y(obs2y),.hcount(hcount),.vcount(vcount),.enable(obs2en),.memPixel(pipeMemVal),.pixelIn(obs1Out),.memAddr(pipe2Addr),.pixelOut(obs2Out));
    wire [11:0] obs3Out;
    obstacle obstacle3(.x(obs3x),.y(obs3y),.hcount(hcount),.vcount(vcount),.enable(obs3en),.memPixel(pipeMemVal),.pixelIn(obs2Out),.memAddr(pipe3Addr),.pixelOut(obs3Out));
    
    assign VGA_RGB = (at_display_area)? obs3Out : 0;
    /*
    assign VGA_R = at_display_area ? {4{hcount[7]}} : 0;
    assign VGA_G = at_display_area ? {4{hcount[6]}} : 0;
    assign VGA_B = at_display_area ? {4{hcount[5]}} : 0;
    */
    

    
    assign pipeMemAddress = 
        (pipe1Addr > 0)? pipe1Addr :
        (pipe2Addr > 0)? pipe2Addr :
        pipe3Addr;
            
    pipe_sprite pipe_sprite(.a(pipeMemAddress),.spo(pipeMemVal));
    
    wire[12:0] backgroundMemAddress;
    wire[7:0] backgroundMemVal;
    
    wire[6:0]backSpriteX;   // x pixel read from sprite
    wire[5:0]backSpriteY;   // y pixel read from sprite
    
    // Calculate y coord to pull from background sprite
    wire[9:0] reorientedY = vcount-35-224;
    assign backSpriteY =
        (reorientedY >= 256)? //If above sprite, stretch it out (use top line)
        0:reorientedY>>2;
        
    // Calculate x coord to pull from background sprite (based on current scroll position)
    assign backSpriteX = (backgroundPos + hcount)>>2;
    
    assign backgroundMemAddress = {backSpriteY,backSpriteX};
    
    background_sprite background_sprite(.a(backgroundMemAddress),.spo(backgroundMemVal));
    
    reg[3:0] vsyncDivide = 0;
    always @ (posedge vsync) begin
        vsyncDivide <= vsyncDivide+1;
        if (vsyncDivide == 0) begin
            backgroundPos <= backgroundPos + 1;
        end
    end
    
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
                 enable)?               COLOR : pixelIn;
                 
endmodule

module obstacle // Obstacle is different than sprite because we define the opening, and every other part is filled in
       #(parameter WIDTH = 64,            // default width: 64 pixels
                   HEIGHT = 128)           // default height: 128 pixels
       (input [9:0] x,hcount,
        input [9:0] y,vcount,
        input enable,
        input [7:0] memPixel,
        input [11:0] pixelIn,
        output [10:0] memAddr,
        output [11:0] pixelOut);
        
        wire[5:0] xPos = hcount-x;
        wire[4:0] yPos;
        
        //yPos will become row index of picture, so mirror for top pipe
        assign yPos =
                (vcount < y)?    // If above vs. if below
                //y-vcount-1 : vcount-(y+HEIGHT)-1;
                    ((vcount+31 < y)? // If below edge of sprite, stretch out last row
                        31:y-vcount-1):
                    ((vcount > (y+HEIGHT+31))? // If below edge of spritre, stretch out last row
                        31:vcount-(y+HEIGHT)-1);
        
        assign memAddr =
                ((hcount >= x && hcount < (x+WIDTH)) && // If in display range...
                 (vcount < y || vcount > (y+HEIGHT)) &&
                 enable)?
                 {yPos,xPos}: 0;
        assign pixelOut =
                ((hcount >= x && hcount < (x+WIDTH)) && // If in display range...
                 (vcount < y || vcount > (y+HEIGHT)) &&
                 enable)?
                    (memPixel == 8'hFF)?//If pixel is white, treat as transparent
                        pixelIn :
                 {memPixel[7:5],1'b0,memPixel[4:2],1'b0,memPixel[1:0],2'b00} : pixelIn;
                 
endmodule