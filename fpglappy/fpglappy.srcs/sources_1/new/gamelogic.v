`timescale 1ns / 1ps
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
// High Score module: overlays highscore over the video module's output
//////////////////////////////////////////////////////////////////////////////////
module highscore(input clock, hs_enable, 
                 output reg showbit
                 );
endmodule

//////////////////////////////////////////////////////////////////////////////////
// Obstacle Generator module: generates location of the obstacles
//////////////////////////////////////////////////////////////////////////////////
module obstacle_gen(input clock,
                    output reg[9:0] obsx[2:0], obsy[2:0], obsz[2:0]);
endmodule

//////////////////////////////////////////////////////////////////////////////////
// Collision Detection module: detects if a collision has occured
//////////////////////////////////////////////////////////////////////////////////
module collision_detection(input clock,
                           input [9:0] bird_location[1:0], prev_player_loc[1:0],
                           input [9:0] obsx[2:0], obsy[2:0], obsz[2:0],
                           output collision);

endmodule

//////////////////////////////////////////////////////////////////////////////////
// Gamestate module: regulates the state of the game (PLAY, WIN, PAUSE, LOSE, HIGH_SCORE)
//////////////////////////////////////////////////////////////////////////////////
module gamestate(input clock, start, jump, collision,
                 output reg hs_enable, sound_collide, sound_jump, sound_background,
                 );
    
    parameter START = 3'b000, PLAY = 3'b001, PAUSE = 3'b010, LOSE = 3'b011, HIGHSCORE= 3'b100;
    //create correct state transitions
    
        initial state = ARMED;
        initial start_timer = 0;
        
        always @(posedge clock)  begin
            case (state)
                PTRIGGER: begin
                    if (ignition) begin
                        state <= DISARMED;
                        status <= 0;
                        siren <= 0;
                        start_timer <= 0;
                    end
                    else if (ignition==0 && expired) begin
                        state <= SOUNDALARM;
                        status <= 1;
                        siren <= 1;   
                        start_timer <=1;  
                    end
                    else state <= PTRIGGER;
                end
            endcase
            if (start_timer) start_timer <= 0;
        end
endmodule

//////////////////////////////////////////////////////////////////////////////////
// Physics module: sets rate of bird movement (jumping/falling)
//////////////////////////////////////////////////////////////////////////////////
module physics(input clock,
               input prev_enable, 
               input [9:0] player_location[2:0],
               output reg jump,
               output reg[9:0] bird_location[1:0], prev_player_loc[2:0]
               );
        
        if (prev_enable ==0) begin
            //don't compare the two locations
        end
        //otherwise compare the two locations
            //if the location has changed some amount, it's a jump so decrease y-coord for bird location
            //else keep falling...increase y-coord for bird
        prev_player_loc <= player_location;
endmodule



//////////////////////////////////////////////////////////////////////////////////
// Timer module: keeps track of time (in seconds)
// Used for transition between LOSE and HIGH_SCORE state
//////////////////////////////////////////////////////////////////////////////////
module timer(input clock, start_timer, one_hz,
             output reg expired, [2:0] countdown
             );
    parameter TIME_DELAY = 5;
    reg [2:0] countdown;
    initial countdown = TIME_DELAY;
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
