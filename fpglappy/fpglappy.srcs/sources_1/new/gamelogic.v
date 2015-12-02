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
       always @(posedge clock) begin
                    
       end
endmodule

//////////////////////////////////////////////////////////////////////////////////
// Obstacle Generator module: generates location of the obstacles
//////////////////////////////////////////////////////////////////////////////////
module obstacle_gen(input clock, obs1en, obs2en, obs3en,
                   // output reg obs1en, obs2en, obs3en,
                    output reg[9:0] obs1x, obs1y, obs2x, obs2y, obs3x, obs3y);
        always @(posedge clock) begin  //144,784 (x) 35,515 (y)
            if (obs1en) begin
                obs1x <= 320;
                obs1y <= 200;
            end
            
            if (obs2en) begin
                obs2x <= 500;
                obs2y <= 400;
            end
            
            if (obs3en) begin
                obs3x <= 630;
                obs3y <=50;
            end
            //must figure out some way to randomly generate??
        end
endmodule

//////////////////////////////////////////////////////////////////////////////////
// Collision Detection module: detects if a collision has occured
//////////////////////////////////////////////////////////////////////////////////
module collision_detection(input clock, obs1en, obs2en, obs3en,
                           input [9:0] bird_x, bird_y,
                           input [9:0] obs1x, obs1y, obs2x, obs2y, obs3x, obs3y,
                           output reg collision);
        always @(posedge clock) begin
            collision <= ((bird_y+64 >= 514) || (bird_y<=36) || 
                          (bird_x+64 >=783) || (bird_x <= 145))
             ||((obs1en && (((bird_x+64>obs1x)&&(bird_x<(obs1x+64)))
                &&((bird_y+64<obs1y)||(bird_y>(obs1y+128)))))
             ||(obs2en &&(((bird_x+64>obs2x)&&(bird_x<(obs2x+64)))
               &&((bird_y+64<obs2y)||(bird_y>(obs2y+128)))))
             ||(obs3en && (((bird_x+64>obs3x)&&(bird_x<(obs3x+64)))
               &&((bird_y+64<obs3y)||(bird_y>(obs3y+128))))))? 1: 0;
        end
endmodule

//////////////////////////////////////////////////////////////////////////////////
// Gamestate module: regulates the state of the game (PLAY, WIN, PAUSE, LOSE, HIGH_SCORE)
//////////////////////////////////////////////////////////////////////////////////
module gamestate(input clock, start, jump, collision, expired, one_hz,
                 output reg hs_enable, sound_collide, sound_jump, sound_background, start_timer,
                 output reg [3:0] score
                 );
    
        parameter START = 3'b000, PLAY = 3'b001, PAUSE = 3'b010, LOSE = 3'b011, HIGHSCORE= 3'b100;
        reg [2:0] state;
        
        initial state = PLAY;
        initial start_timer = 0;
        initial sound_background = 1;
        initial sound_jump = 0;
        initial sound_collide = 0;
        initial hs_enable = 0;
        
        always @(posedge clock)  begin
            case (state)
                START: begin
                    if (start) begin
                        state <= PLAY;
                        score <= 0;
                        start_timer <= 0;
                    end
                end
                PLAY: begin
                    if (collision) state <= LOSE;
                    else if (start) state <= PAUSE;
                    else if (one_hz) begin
                        if (score<15) score <= score + 1;
                        else score <= score;
                    end
                end
                PAUSE: begin
                    if (start) state <= START;
                end
                LOSE: begin
                    if (start || expired) state <= PLAY;
                    else start_timer <= 1;
                end
            endcase
            if (start_timer) start_timer <= 0;
            sound_jump <= jump? 1:0;
            sound_collide <= collision? 1:0;
        end
endmodule

//////////////////////////////////////////////////////////////////////////////////
// Physics module: sets rate of bird movement (jumping/falling)
//////////////////////////////////////////////////////////////////////////////////
module physics(input clock, 
               input up, five_hz, //used for testing jumps
               input [9:0] player_x, player_y,
               output reg jump, 
               output reg [9:0] bird_x, bird_y, prev_player_locx, prev_player_locy
               );
               
    parameter signed VELOCITY_UP = 3;
    parameter signed GRAVITY = 1;
    
	reg prev_enable;
	reg signed [7:0] velocity;
	initial velocity = 10;
	
	initial prev_enable =0;
        always @(posedge clock) begin
            if (prev_enable ==0) begin
                bird_y <= 250;
		        prev_enable =1;
            //don't compare the two locations
            end
            //otherwise compare the two y-coord locations
            else begin
                if (five_hz) begin
                    jump <= up;
                    velocity <= (up)? VELOCITY_UP: velocity-GRAVITY;
                    if (velocity < 0) bird_y <= bird_y - velocity;
                    else bird_y<= bird_y + velocity;
                end
                //below is with vision tracking ------
                //jump <= (player_y > prev_player_locy+60)? 1:0;
                //bird_y <= (jump)? bird_y-10: bird_y+5;
            end
            bird_x <= 200; //x does not change     
            //if the location has changed some amount, it's a jump so decrease y-coord for bird location
            //else keep falling...increase y-coord for bird
            prev_player_locx <= player_x;
            prev_player_locy <= player_y;
        end
        
endmodule


//////////////////////////////////////////////////////////////////////////////////
// Timer module: keeps track of time (in seconds)
// Used for transition between LOSE and HIGH_SCORE state
//////////////////////////////////////////////////////////////////////////////////
module timer(input clock, start_timer, one_hz,
             output reg expired, reg[2:0] countdown
             );
    parameter TIME_DELAY = 3; //waits 3 seconds before restarting the game
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

module fivehzstart(input clock, 
              output reg five_hz_enable
              );
    reg [31:0] counter;
    initial counter = 0;
    always @(posedge clock)  begin
        if (counter < 5_000_001) counter <= counter + 1;
        else if (counter > 5_000_000) counter <= 0;
        five_hz_enable <= (counter == 5_000_000)? 1: 0;
    end 
endmodule

/*
module thirtyhzstart(input clock, 
              output reg thirty_hz_enable
              );
    reg [31:0] counter;
    initial counter = 0;
    always @(posedge clock)  begin
        if (counter < 333_334) counter <= counter + 1;
        else if (counter > 333_333) counter <= 0;
        thirty_hz_enable <= (counter == 333_333)? 1: 0;
    end 
endmodule*/