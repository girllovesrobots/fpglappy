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
    input [6:0] score,
    output [18:0] pixelAddr,
    output [11:0] VGA_RGB,
    output reg[7:0] dout
    );

    reg [6:0] highScore = 0;
    always@(posedge vsync) begin
        if (score >= highScore) highScore <= score;
    end
    
    /////////////////////////////////////////////////////////////////////////////
    //////////// Scrolling Background ///////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////
    
    wire[12:0] backgroundMemAddress; // Address put into memory
    wire[7:0] backgroundMemVal; // Data read from memory
    wire[6:0]backSpriteX;   // x pixel read from sprite
    wire[5:0]backSpriteY;   // y pixel read from sprite
    
    // Calculate y coord to pull from background sprite
    wire[9:0] reorientedY = vcount-35-224; // Offset sprite downwards, as it is not as tall as the screen
    assign backSpriteY =
        (reorientedY >= 256)? //If above sprite, stretch it out to fill remaining space (use top line)
        0:reorientedY>>2;
    
    // Make sprite scroll by dividing vsync
    reg[9:0] backgroundPos = 0;
    reg[3:0] vsyncDivide = 0;
    always @ (posedge vsync) begin
        vsyncDivide <= vsyncDivide+1;
        if (vsyncDivide == 0 && !pause) begin
            backgroundPos <= backgroundPos + 1;
        end
    end
     
    // Calculate x coord to pull from background sprite (based on current scroll position)
    assign backSpriteX = (backgroundPos + hcount)>>2; 
    assign backgroundMemAddress = {backSpriteY,backSpriteX}; // Memory address to read from
    
    background_sprite background_sprite(.a(backgroundMemAddress),.spo(backgroundMemVal)); // Read data from background sprite
    
    // Wire containing background pixel value for this hcount/vcount
    wire[11:0] background = {backgroundMemVal[7:5],1'b0,backgroundMemVal[4:2],1'b0,backgroundMemVal[1:0],2'b00};
    

    
    /////////////////////////////////////////////////////////////////////////////
    //////////// Obstacles //////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////
    wire[10:0] pipeMemAddress; // Address to read from pipe memory
    wire[7:0] pipeMemVal; // Value read from pipe sprite memory
    
    wire[10:0] pipe1Addr; // Addresses requested by each pipe sprite object
    wire[10:0] pipe2Addr;
    wire[10:0] pipe3Addr;
    
    assign pipeMemAddress =  // Determine which sprite to give access to memory
        (pipe1Addr > 0)? pipe1Addr :
        (pipe2Addr > 0)? pipe2Addr :
        pipe3Addr;
            
    pipe_sprite pipe_sprite(.a(pipeMemAddress),.spo(pipeMemVal)); // Generated ROM containing Sprite
    
    // The three obstacle objects
    wire [11:0] obs1Out;
    obstacle obstacle1(.x(obs1x),.y(obs1y),.hcount(hcount),.vcount(vcount),
        .enable(obs1en),.memPixel(pipeMemVal),
        .pixelIn(background),.memAddr(pipe1Addr),.pixelOut(obs1Out));
    wire [11:0] obs2Out;
    obstacle obstacle2(.x(obs2x),.y(obs2y),.hcount(hcount),.vcount(vcount),
        .enable(obs2en),.memPixel(pipeMemVal),
        .pixelIn(obs1Out),.memAddr(pipe2Addr),.pixelOut(obs2Out));
    wire [11:0] obs3Out;
    obstacle obstacle3(.x(obs3x),.y(obs3y),.hcount(hcount),.vcount(vcount),
        .enable(obs3en),.memPixel(pipeMemVal),
        .pixelIn(obs2Out),.memAddr(pipe3Addr),.pixelOut(obs3Out));
        

    /////////////////////////////////////////////////////////////////////////////
    //////////// Bird Sprite ////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////
    wire [11:0] birdOut;
    sprite bird(.x(birdX),.y(birdY),
        .hcount(hcount),.vcount(vcount),.enable(1),
        .facePixel(facePixel),.faceXCenter(faceXCenter),.faceYCenter(faceYCenter),
        .pixelIn(obs3Out),.pixelAddr(pixelAddr),.pixelOut(birdOut));

    
    /////////////////////////////////////////////////////////////////////////////
    //////////// Pause Red Tint /////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////

    wire[3:0] newRed = {birdOut[7:6],1'b11}; // New value of red for the current pixel
    wire[11:0] pause_out = (pause)? {newRed,2'b00,birdOut[4:3],2'b00,birdOut[1:0]}:birdOut; // Tint red in case of pause
    
    /////////////////////////////////////////////////////////////////////////////
    //////////// High Score Screen //////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////
    
    // If a module wants to display a number, it puts in a numberToDis as well as its X and Y coords
    wire [3:0] numberToDisp;
    wire [9:0] numberX;
    wire [9:0] numberY;
    wire [2:0] offsetX = hcount-numberX;
    wire [4:0] offsetY = vcount-numberY;
    wire [11:0] numberAddress = {offsetY,numberToDisp,offsetX};//(numberToDisp<<3) + (hcount-numberX) + (vcount-numberY)<<7;
    wire [7:0] numberOut;
    number_map number_map(.a(numberAddress),.spo(numberOut)); // Number character map
    wire[7:0] numberPixel = ((hcount-numberX) < 8 && (vcount-numberY) < 10)? numberOut : 8'hFF;
    
    // Display the highScore value as a two-digit number
    wire [7:0] highScoreBackground = 8'b000_100_10;
    parameter highScoreX = 320;
    parameter highScoreY = 240;
    wire onesDigit = hcount >= highScoreX+7; // Determine wether displaying tens or ones digit
    assign numberX = onesDigit? highScoreX+8 : highScoreX;
    wire [3:0] tensValue = highScore[6:4];//highScore/10;
    wire [3:0] onesValue = highScore[3:0];//highScore-tensValue*10;
    assign numberToDisp = onesDigit? onesValue : tensValue;
    assign numberY = highScoreY;
    wire [7:0] highScorePixel = (numberPixel==8'hFF)? highScoreBackground : numberPixel; // Pixel for high score screen
    
    /////////////////////////////////////////////////////////////////////////////
    //////////// Startup screen/////// //////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////
    
    wire[7:0] startScreenPixel;
    wire[9:0] startScreenX = hcount-144; // x origin
    wire[8:0] startScreenY = vcount-35; // y origin
    wire[12:0] startScreenAddress = {startScreenY[8:3],startScreenX[9:3]};// Shift for pixel quadrupling
    start_screen start_screen(.a(startScreenAddress),.spo(startScreenPixel));
    
    /////////////////////////////////////////////////////////////////////////////
    //////////// Select Current Screen //////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////
    
    // Select whether to display gameplay screen, startup screen, or high score screen
    assign VGA_RGB = (at_display_area)?
                            ((startScreen)? 
                                {startScreenPixel[7:5],1'b0,startScreenPixel[4:2],1'b0,startScreenPixel[1:0],2'b00} // If start screen
                                :(highScoreScreen)? // Else not start screen
                                    {highScorePixel[7:5],1'b0,highScorePixel[4:2],1'b0,highScorePixel[1:0],2'b00} // If high score screen
                                     :pause_out)    // Else not start screen
                            :0;
                            
    // VGA_RGB now contains the pixel to be displayed from the game
endmodule


// Sprite for bird, fetches pixel data from the video RAM
module sprite
       #(parameter WIDTH = 64,            // default width: 64 pixels
                   HEIGHT = 64,            // default height: 64 pixels
                   SCALE_FACTOR=2)         // Scale factor to zoom into face
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
    
        //Now the value at that pixel is in facePixel
        assign pixelOut =
                ((hcount >= x && hcount < (x+WIDTH)) &&
                 (vcount >= y && vcount < (y+HEIGHT)) &&
                 enable)?               facePixel : pixelIn;
endmodule

// Sprite for obstacle, fetches data from generated ROM
// Performs special operations to mirror pipe and extend bottom pixel (uses only a 64x32 sprite)
module obstacle
       #(parameter WIDTH = 64,            // default width: 64 pixels
                   HEIGHT = 160)           // default height: 128 pixels
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
                    ((vcount+31 < y)? // If below edge of sprite, stretch out last row
                        31:y-vcount-1):
                    ((vcount > (y+HEIGHT+31))? // If below edge of spritre, stretch out last row
                        31:vcount-(y+HEIGHT)-1);
        // Value to fetch from memory
        assign memAddr =
                ((hcount >= x && hcount < (x+WIDTH)) && // If in display range...
                 (vcount < y || vcount > (y+HEIGHT)) &&
                 enable)?
                 {yPos,xPos}: 0; // Send zero if not at location, that way memory will know to grant access to a different sprite instead
                 
        // Give output pixel from sprite
        assign pixelOut =
                ((hcount >= x && hcount < (x+WIDTH)) && // If in display range...
                 (vcount < y || vcount > (y+HEIGHT)) &&
                 enable)?
                    (memPixel == 8'hFF)?//If pixel is white, treat as transparent
                        pixelIn :
                 {memPixel[7:5],1'b0,memPixel[4:2],1'b0,memPixel[1:0],2'b00} : pixelIn;
                 
endmodule
