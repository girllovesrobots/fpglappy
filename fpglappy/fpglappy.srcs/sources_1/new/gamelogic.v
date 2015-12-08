`timescale 1ns / 1p
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 11/17/2015 06:04:04 PM
// Engineer Name: Wei Low
// Module Name: gamelogic
// Project Name: fglappy bird - 6.111 Final Project 
// Description: This file contains the gamelogic file which references 
//              gamestate, highscore, physics, 
//              obstacle_gen, collision_detection,
//              timer and onehzstart modules
//////////////////////////////////////////////////////////////////////////////////



//////////////////////////////////////////////////////////////////////////////////
// High Score module: computes score to be displayed
//////////////////////////////////////////////////////////////////////////////////
module highscore(input clock, reset_score, pass,
                 output reg [6:0] score
                 );
       //reg [6:0] prevhs;
       //initial prevhs = 0;
       initial score = 0;
       always @(posedge clock) begin
            if (reset_score) begin //game has reset, so score is 0
                score <=0;
            end
            else if (pass) begin //add to score for each obstacle bird passes
                score <= score + 1;
            end          
       end
endmodule

//////////////////////////////////////////////////////////////////////////////////
// Obstacle Generator module: generates location of the obstacles + scrolls obstacle
//////////////////////////////////////////////////////////////////////////////////
module obstacle_gen(input clock, updatepos, [3:0] randbit,
                    input reset_score, reset_physics,
                    output obs1en, obs2en, obs3en,
                    output reg [6:0] score,
                    output reg[9:0] obs1x, obs1y, obs2x, obs2y, obs3x, obs3y);
        reg obs1, obs2, obs3;
        assign obs1en = obs1;
        assign obs2en = obs2;
        assign obs3en = obs3;
        initial obs1 = 0;
        initial obs2 = 0;
        initial obs3 = 0;
        initial score = 0;
        reg [19:0] pixelscan;
        initial pixelscan = 0;
        
        always @(posedge clock) begin  //144,784 (x) 35,515 (y)
                                       //each pipe has width 64 bird has width 64
           if (reset_physics) begin
                pixelscan <=0;
                obs1 <=0;
                obs1x <=800;
                obs2 <=0;
                obs2x <=800;
                obs3 <=0;
                obs3x <=800;
                score <= 0;
           end
           if (updatepos) begin
                pixelscan <= (pixelscan<784)? pixelscan+1 : pixelscan; //restart pixelscan counter after 650
                if (pixelscan==1 && !obs1) begin
                    obs1 <= 1;
                    obs1x <=784;
                end
                else if (pixelscan==260 && !obs2) begin
                    obs2 <=1;
                    obs2x <= 784;
                end
                else if (pixelscan==522 && !obs3) begin
                    obs3 <=1;
                    obs3x <= 784;
                end
                if (obs1) begin
                    obs1x <= obs1x-1;
                    if (obs1x<36) begin
                        obs1x<= 784;
                        obs1y <= (randbit[2]==1'b0)? 200+(randbit*10):300-(randbit*11);
                    end
                    if (obs1x==135) score <= score + 1;
                end
                if (obs2) begin
                    obs2x <= obs2x-1;
                    if (obs2x<35) begin
                        obs2y <= (randbit[0]==1'b1)? 300-(randbit*7):125+(randbit*2);
                        obs2x<= 784;
                    end
                    if (obs2x==135) score <= score + 1;
                end
                if (obs3) begin
                    obs3x <= obs3x-1;
                    if (obs3x<35) begin
                        obs3x<= 784;
                        obs3y <=  (randbit[3]==1'b1)? 300-(randbit*4): 50+(randbit*3);
                    end
                    if (obs3x==135) score <= score + 1;
                end
           end
           if (!obs1) obs1y <= (randbit[2]==1'b0)? 200+(randbit*10):300-(randbit*11);
           if (!obs2) obs2y <= (randbit[0]==1'b1)? 300-(randbit*7):125+(randbit*2);
           if (!obs3) obs3y <= (randbit[3]==1'b1)? 300: 50+(randbit*3);
           //pass <= (obs1x+64==199)||(obs2x+64==199)||(obs3x+64==199)? 1:0;
        end
endmodule

//////////////////////////////////////////////////////////////////////////////////
// Collision Detection module: detects if a collision has occured
//////////////////////////////////////////////////////////////////////////////////
module collision_detection(input clock, updatepos, reset_collision,
                           input [9:0] bird_x, bird_y, obs1en, obs2en, obs3en,
                           input [9:0] obs1x, obs1y, obs2x, obs2y, obs3x, obs3y, 
                           output reg collision);
        parameter BIRDSIZE = 64, OBSW=64, OBSH=160;
        always @(posedge clock) begin
            if (reset_collision) collision <=0;
            else begin
                if (updatepos) begin
                    collision <= (((bird_y+BIRDSIZE >= 505) || (bird_y<=42))
                    || obs1en&&((((bird_x+BIRDSIZE)>obs1x) && (bird_x<(obs1x+OBSW)))
                    &&((bird_y<obs1y)||((bird_y+BIRDSIZE)>(obs1y+OBSH))))
                    || obs2en&&((((bird_x+BIRDSIZE)>obs2x) && (bird_x<(obs2x+OBSW)))
                    &&((bird_y<obs2y)||((bird_y+BIRDSIZE)>(obs2y+OBSH))))
                    || obs3en&&((((bird_x+BIRDSIZE)>obs3x) && (bird_x<(obs3x+OBSW)))
                    &&((bird_y<obs3y)||((bird_y+BIRDSIZE)>(obs3y+OBSH))))
                    )? 1:0;
                
                end
            end
        end
endmodule

//////////////////////////////////////////////////////////////////////////////////
// Gamestate module: regulates the state of the game (PLAY, WIN, PAUSE, LOSE, HIGH_SCORE)
//////////////////////////////////////////////////////////////////////////////////
module gamestate(input clock, start, reset, jump, collision, expired, one_hz, 
                 output reg hs_enable, home_enable, updatepos, pause, reset_physics, reset_score, reset_collision,
                 output reg sound_collide, sound_jump, sound_background, start_timer,
                 output reg [3:0] state
                 );
    
        parameter START = 4'b0001, PLAY = 4'b0010, PAUSE = 4'b0100, LOSE = 4'b1000;
        reg [3:0] state;
        
        initial state = START;
        initial start_timer = 0;
        initial sound_background = 1;
        initial sound_jump = 0;
        initial sound_collide = 0;
        initial hs_enable = 0;
        initial pause <=0;
        initial home_enable <=1;
        initial reset_physics <=1;
        initial reset_score <=1;
        initial reset_collision <=1;
        initial updatepos <=0;
        
        always @(posedge clock)  begin
            if (reset) begin
                state <= START;
                start_timer <=0;
                pause <=0;
                sound_jump = 0;
                sound_collide = 0;
                hs_enable = 0;
                home_enable <=1;
                reset_physics <=1;
                reset_score <=1;
                reset_collision <=1;
                updatepos <=0;
            end
            else begin
                case (state)
                    START: begin //splash screen of game
                        if (start) begin
                            state <= PLAY;
                            home_enable <=0;
                            reset_physics <=0;
                            reset_score <=0;
                            reset_collision <=0;
                        end
                    end
                    PLAY: begin //normal state of game
                        if (collision) begin
                            state <= LOSE;
                            updatepos <=0;
                            hs_enable <=1;
                            sound_collide <=1;
                            start_timer <=1;
                        end
                        else if (jump) updatepos <=1;
                        else if (start) begin
                            state <= PAUSE;
                            updatepos <=0;
                            pause <=1; //set pause bit to 1
                        end                        
                    end
                    PAUSE: begin //red filter & movement stops
                        if (start) begin
                            state <= PLAY;//set pause bit to 0
                            pause <=0;
                            updatepos <=1;
                        end
                    end
                    LOSE: begin //will display HS
                        if (start || expired) begin
                            state <= START;
                            reset_score <= 1;
                            reset_physics <=1;
                            reset_collision <=1;
                            start_timer <= 0;
                            sound_collide <=0;
                        end
                    end
                    default: state <= START;
                endcase
                if (start_timer) start_timer <= 0;
                //if (sound_collide) sound_collide <= 0;
                sound_jump <= (jump)? 1:0;
           end
        end
endmodule

//////////////////////////////////////////////////////////////////////////////////
// Physics module: sets rate of bird movement (jumping/falling)
//////////////////////////////////////////////////////////////////////////////////
module physics(input clock, updatepos, reset_physics,
               input sixty_hz, frameupdate, up,
               input [9:0] player_x, player_y,
               input signed [10:0] signed_y_vel,
               input [7:0] velocity_thresh,
               output reg jump, prev_enable, [19:0] diff,
               output reg [9:0] bird_x, bird_y, prev_player_locx, prev_player_locy
               );
               
    parameter signed VELOCITY_UP = 220;
    parameter signed GRAVITY = -11;
    
    wire signed [20:0] diff;
	reg signed [19:0] velocity;
	wire signed [18:0] bird_ys;
	assign bird_ys = bird_y;
	initial velocity = 7;
	wire signed [10:0] pplocy;
	wire signed [10:0] py;
	assign pplocy = prev_player_locy;
	assign py = player_y;
	assign diff = pplocy-py;
	wire signed [10:0] subppy;
	assign subppy =prev_player_locy-100;
	reg signed [3:0] count;
	wire signed [8:0] thresh;
	wire signed [9:0] calc;
	assign calc = 0-thresh;
	
	reg prev_enable;
	initial prev_enable =0;
	
        always @(posedge clock) begin
        
            if (reset_physics) begin
                prev_enable <=0;
                velocity <= 7;
                bird_y<=250;
            end
            else begin
            jump <= (up || (signed_y_vel<-6))?  1:0;
                if (prev_enable ==0) begin
                    bird_y <= 250;
                    if (jump) prev_enable <= 1;
                //don't compare the two locations
                end
                else if (updatepos) begin
                //otherwise compare the two y-coord locations
                    
                    if (frameupdate) begin
                        //jump <= (up || signed_y_vel>200)?  1:0;
                        prev_player_locx <= player_x;
                        prev_player_locy <= player_y;
                    end
                    if (sixty_hz) begin
                         velocity <= (jump)? VELOCITY_UP: velocity+GRAVITY;
                         if ((bird_ys-velocity/48) < 36 || (bird_ys-velocity/48)+64 > 514) bird_y <= bird_y;
                         else bird_y <= bird_ys-velocity/48;
                         prev_player_locx <= player_x;
                         prev_player_locy <= player_y;
                    end
                    bird_x <= 200; //x does not change     
                    //if the location has changed some amount, it's a jump so decrease y-coord for bird location
                    
               end
            end
        end
        
endmodule



//////////////////////////////////////////////////////////////////////////////////
// Timer module: keeps track of time (in seconds)
// Used for transition between LOSE and HIGH_SCORE state
//////////////////////////////////////////////////////////////////////////////////
module timer(input clock, start_timer, one_hz,
             output reg expired, reg[2:0] countdown
             );
    parameter TIME_DELAY = 5; //waits 3 seconds before restarting the game
    initial expired = 0;
    reg enable;
    initial enable = 0;
    
    always @(posedge clock) begin
        if (start_timer) begin //If start_timer asserted
           enable <= 1;
           expired <=0;
           countdown <= TIME_DELAY;
        end
        
        if (enable && expired==0 && one_hz) begin
            if (countdown<1) begin
                enable <=0;
                expired <=1;
            end
            else countdown <= countdown - 1;
        end
        else if (enable==0 && expired==1) begin
            expired <= 0;
        end
    end
endmodule


//////////////////////////////////////////////////////////////////////////////////
// randombit module - Returns random bit
// used for physics smoothing of movement
//////////////////////////////////////////////////////////////////////////////////
module randombit(input clock, input [9:0] player_x,
              output [3:0] randbit
              );
    
    wire [3:0] randbit;
    assign randbit = player_x[3:0];
     
endmodule

//////////////////////////////////////////////////////////////////////////////////
// onehzstart module - Asserts oneHz cycle (asserts every second)
// used for countdown in seconds by the timer module
//////////////////////////////////////////////////////////////////////////////////
module onehzstart(input clock, 
                  output reg one_hz_enable
                  );
    reg [31:0] counter;
    initial counter = 0;
    always @(posedge clock)  begin
        if (counter < 25_000_001) counter <= counter + 1;
        else if (counter > 25_000_000) counter <= 0;
        
        one_hz_enable <= (counter == 25_000_000)? 1: 0;
    end 
endmodule

//////////////////////////////////////////////////////////////////////////////////
// sixtyhzstart module - Asserts 60Hz cycle (asserts 60/second)
// used for physics smoothing of movement
//////////////////////////////////////////////////////////////////////////////////
module sixtyhzstart(input clock, 
              output reg sixty_hz_enable
              );
    reg [31:0] counter;
    initial counter = 0;
    always @(posedge clock)  begin
        if (counter < 416_667) counter <= counter + 1;
        else if (counter > 416_666) counter <= 0;
        sixty_hz_enable <= (counter == 416_666)? 1: 0;
    end 
endmodule

module thirtyhzstart(input clock, 
              output reg thirty_hz_enable
              );
    reg [31:0] counter;
    initial counter = 0;
    always @(posedge clock)  begin
        counter <= (counter < 208_334) ? counter + 1 : 0;
        thirty_hz_enable <= (counter == 208_333)? 1: 0;
    end 
endmodule
