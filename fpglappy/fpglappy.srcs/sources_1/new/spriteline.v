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
    input [9:0] faceXCenter,faceYCenter,
    input [7:0] facePixel,
    input pause,startScreen,highScoreScreen,
    input [7:0] highScore,
    output [18:0] pixelAddr,
    output [11:0] VGA_RGB,
    output reg[7:0] dout
    );

    // Background
    //wire [11:0] background = {{4{hcount[2]}},{4{hcount[1]}},{4{hcount[0]}}}; //uncomment for stripe background
    wire[11:0] background = {backgroundMemVal[7:5],1'b0,backgroundMemVal[4:2],1'b0,backgroundMemVal[1:0],2'b00};
    reg[9:0] backgroundPos = 0;
    
    // Bird Sprite
    wire [11:0] birdOut;
    sprite bird(.x(birdX),.y(birdY),
        .hcount(hcount),.vcount(vcount),.enable(1),
        .facePixel(facePixel),.faceXCenter(faceXCenter),.faceYCenter(faceYCenter),
        .pixelIn(obs3Out),.pixelAddr(pixelAddr),.pixelOut(birdOut));
    
    // Obstacles
    wire[10:0] pipeMemAddress;
    wire[7:0] pipeMemVal;
    
    wire[10:0] pipe1Addr;
    wire[10:0] pipe2Addr;
    wire[10:0] pipe3Addr;    
    
    wire [11:0] obs1Out;
    obstacle obstacle1(.x(obs1x),.y(obs1y),.hcount(hcount),.vcount(vcount),.enable(obs1en),.memPixel(pipeMemVal),.pixelIn(background),.memAddr(pipe1Addr),.pixelOut(obs1Out));
    wire [11:0] obs2Out;
    obstacle obstacle2(.x(obs2x),.y(obs2y),.hcount(hcount),.vcount(vcount),.enable(obs2en),.memPixel(pipeMemVal),.pixelIn(obs1Out),.memAddr(pipe2Addr),.pixelOut(obs2Out));
    wire [11:0] obs3Out;
    obstacle obstacle3(.x(obs3x),.y(obs3y),.hcount(hcount),.vcount(vcount),.enable(obs3en),.memPixel(pipeMemVal),.pixelIn(obs2Out),.memAddr(pipe3Addr),.pixelOut(obs3Out));
    
    wire[3:0] newRed = {birdOut[7:6],1'b11};
    wire[11:0] pause_out = (pause)? {newRed,2'b00,birdOut[4:3],2'b00,birdOut[1:0]}:birdOut; // Tint red in case of pause
    assign VGA_RGB = (at_display_area)?
                            ((startScreen)? 
                                {startScreenPixel[7:5],1'b0,startScreenPixel[4:2],1'b0,startScreenPixel[1:0],2'b00} // If start screen
                                :(highScoreScreen)? // Else not start screen
                                    {highScorePixel[7:5],1'b0,highScorePixel[4:2],1'b0,highScorePixel[1:0],2'b00} // If high score screen
                                     :pause_out)    // Else not start screen
                            :0;
    /*
    assign VGA_R = at_display_area ? {4{hcount[7]}} : 0;
    assign VGA_G = at_display_area ? {4{hcount[6]}} : 0;
    assign VGA_B = at_display_area ? {4{hcount[5]}} : 0;
    */
    
    // Memory for startup screen
    
    wire[7:0] startScreenPixel;
    wire[9:0] startScreenX = hcount-144;
    wire[8:0] startScreenY = vcount-35;
    wire[12:0] startScreenAddress = {startScreenY[8:3],startScreenX[9:3]};//(hcount-144)>>3 + (vcount-35)<<4;
    start_screen start_screen(.a(startScreenAddress),.spo(startScreenPixel));
    
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
        if (vsyncDivide == 0 && !pause) begin
            backgroundPos <= backgroundPos + 1;
        end
    end
    
    // If a module wants to display a number, it puts in a numberToDis as well as its X and Y coords
    wire [3:0] numberToDisp;
    wire [9:0] numberX;
    wire [9:0] numberY;
    wire [2:0] offsetX = hcount-numberX;
    wire [4:0] offsetY = vcount-numberY;
    wire [11:0] numberAddress = {offsetY,numberToDisp,offsetX};//(numberToDisp<<3) + (hcount-numberX) + (vcount-numberY)<<7;
    wire [7:0] numberOut;
    number_map number_map(.a(numberAddress),.spo(numberOut));
    wire[7:0] numberPixel = ((hcount-numberX) < 8 && (vcount-numberY) < 10)? numberOut : 8'hFF;
    
    // Display the highScore value as a two-digit number
    wire [7:0] highScoreBackground = 8'b000_100_10;
    parameter highScoreX = 320;
    parameter highScoreY = 240;
    wire onesDigit = hcount >= highScoreX+7; // Determine wether displaying tens or ones digit
    assign numberX = onesDigit? highScoreX+8 : highScoreX;
    wire [3:0] tensValue = highScore/10;
    wire [3:0] onesValue = highScore-tensValue*10;
    assign numberToDisp = onesDigit? onesValue : tensValue;
    assign numberY = highScoreY;
    wire [7:0] highScorePixel = (numberPixel==8'hFF)? highScoreBackground : numberPixel;
    
endmodule

module sprite
       #(parameter WIDTH = 64,            // default width: 64 pixels
                   HEIGHT = 64,
                   SCALE_FACTOR=2)           // default height: 64 pixels
       (input [9:0] x,hcount,
        input [9:0] y,vcount,
        input enable,
        input [7:0] facePixel,
        input [9:0] faceXCenter,faceYCenter,
        input [11:0] pixelIn,
        output [18:0] pixelAddr,
        output [11:0] pixelOut);
        
        //First, calculate top left corner of image to be fetched
        wire [9:0] faceXOrigin = faceXCenter - ((WIDTH/2) << SCALE_FACTOR);
        wire [9:0] faceYOrigin = faceYCenter - ((HEIGHT/2) << SCALE_FACTOR);
        
        //Now find the pixel of the face we want
        wire [9:0] faceX = faceXOrigin + ((hcount-x)<<SCALE_FACTOR);
        wire [9:0] faceY = faceYOrigin + ((vcount-y)<<SCALE_FACTOR);
        
        //Now calculate the address that corresponds with that pixel
        assign pixelAddr = faceX + (faceY*640);
    
        //Now the vale at that pixel is in facePixel
        assign pixelOut =
                ((hcount >= x && hcount < (x+WIDTH)) &&
                 (vcount >= y && vcount < (y+HEIGHT)) &&
                 enable)?               facePixel : pixelIn;
                 
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
                (vcount < y)?    // If above vs. if below               //y-vcount-1 : vcount-(y+HEIGHT)-1;
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