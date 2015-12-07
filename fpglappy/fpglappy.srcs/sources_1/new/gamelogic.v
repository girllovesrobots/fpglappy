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
// High Score module: computes score to be displayed
//////////////////////////////////////////////////////////////////////////////////
module highscore(input clock, reset_score, pass,
                 output reg [6:0] score
                 );
       reg [6:0] prevhs;
       initial prevhs = 0;
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
module obstacle_gen(input clock, updatepos, thirty_hz, [3:0] randbit,
                    output obs1en, obs2en, obs3en, prev_enable, reset_physics,
                    output reg[9:0] obs1x, obs1y, obs2x, obs2y, obs3x, obs3y);
        reg obs1, obs2, obs3;
        assign obs1en = obs1;
        assign obs2en = obs2;
        assign obs3en = obs3;
        initial obs1 = 0;
        initial obs2 = 0;
        initial obs3 = 0;
        reg [9:0] pixelscan;
        initial pixelscan = 0;
        
        always @(posedge clock) begin  //144,784 (x) 35,515 (y)
                                       //each pipe has width 64 bird has width 64
           if (reset_physics) begin
                pixelscan <=0;
                obs1 <=0;
                obs2 <=0;
                obs3 <=0;
           end
           if (thirty_hz && updatepos) begin
                pixelscan <= (pixelscan<785)? pixelscan+1 : 0; //restart pixelscan counter after 650
                if (pixelscan==262 && !obs1) begin
                    obs1 <= 1;
                    obs1x <=784;
                end
                else if (pixelscan==523 && !obs2) begin
                    obs2 <=1;
                    obs2x <= 784;
                end
                else if (pixelscan==784 && !obs3) begin
                    obs3 <=1;
                    obs3x <= 784;
                end
                if (obs1) begin
                    obs1x <= obs1x-1;
                    if (obs1x<36) obs1<= 0;
                end
                if (obs2) begin
                    obs2x <= obs2x-1;
                    if (obs2x<35) obs2<= 0;
                end
                if (obs3) begin
                    obs3x <= obs3x-1;
                    if (obs2x<35) obs2<= 0;
                end
           end
           if (!obs1) obs1y <= 200+(randbit*5);
           if (!obs2) obs2y <= 417-(randbit*7);
           if (!obs3) obs3y <= 50+(randbit*3);
        end
endmodule

//////////////////////////////////////////////////////////////////////////////////
// Collision Detection module: detects if a collision has occured
//////////////////////////////////////////////////////////////////////////////////
module collision_detection(input clock, updatepos,
                           input [9:0] bird_x, bird_y,
                           input [9:0] obs1x, obs1y, obs2x, obs2y, obs3x, obs3y, 
                           output reg collision, pass);
        parameter BIRDSIZE = 64, OBSW=64, OBSH=128;
        always @(posedge clock) begin
            if (updatepos) begin
                collision <= (((bird_y+BIRDSIZE >= 505) || (bird_y<=36))
                || ((((bird_x+BIRDSIZE)>obs1x) && (bird_x<(obs1x+OBSW)))
                &&((bird_y+BIRDSIZE<obs1y)||(bird_y>(obs1y+OBSH))))
                || ((((bird_x+BIRDSIZE)>obs2x) && (bird_x<(obs2x+OBSW)))
                &&((bird_y+BIRDSIZE<obs2y)||(bird_y>(obs2y+OBSH))))
                || ((((bird_x+BIRDSIZE)>obs3x) && (bird_x<(obs3x+OBSW)))
                &&((bird_y+BIRDSIZE<obs3y)||(bird_y>(obs3y+OBSH))))
                )? 1:0;
            
                pass <= (((bird_x>(obs1x+OBSW+1))||(bird_x>(obs2x+OBSW+1))||(bird_x>(obs3x+OBSW+1))) && !collision) ? 1:0;
            end
        end
endmodule

//////////////////////////////////////////////////////////////////////////////////
// Gamestate module: regulates the state of the game (PLAY, WIN, PAUSE, LOSE, HIGH_SCORE)
//////////////////////////////////////////////////////////////////////////////////
module gamestate(input clock, start, reset, jump, collision, expired, one_hz,
                 output reg hs_enable, home_enable, updatepos, pause, reset_physics, reset_score,
                 output reg sound_collide, sound_jump, sound_background, start_timer,
                 output reg [1:0] state
                 );
    
        parameter START = 3'b00, PLAY = 3'b01, PAUSE = 3'b10, LOSE = 3'b11;
        reg [1:0] state;
        
        initial state = START;
        initial start_timer = 0;
        initial sound_background = 1;
        initial sound_jump = 0;
        initial sound_collide = 0;
        initial hs_enable = 0;
        
        ///
        ///If position of player_x, y is 0,0 then don't start the game
        ///
        
        always @(posedge clock)  begin
            if (reset) begin
                state <= START;
                start_timer <=0;
                pause <=0;
                sound_background = 1;
                sound_jump = 0;
                sound_collide = 0;
                hs_enable = 0;
                home_enable <=1;
                reset_physics <=1;
                reset_score <=1;
                updatepos <=0;
            end
            else begin
                case (state)
                    START: begin //splash screen of game
                        if (start) begin
                            state <= PLAY;
                            pause <= 0;
                            home_enable <=0;
                            start_timer <= 0;
                            updatepos <= 1;
                            reset_physics <=0;
                            reset_score <=0;
                        end
                    end
                    PLAY: begin //normal state of game
                        if (collision) begin
                            state <= LOSE;
                            updatepos <=0;
                            hs_enable <=1;
                            start_timer <=1;
                        end
                        else if (start) begin
                            state <= PAUSE;
                            updatepos <=0;
                            pause <=1; //set pause bit to 1
                        end                        
                    end
                    PAUSE: begin //red filter & movement stops
                        if (start) begin
                            state <= START;//set pause bit to 0
                            pause <=0;
                            updatepos <=1;
                        end
                    end
                    LOSE: begin //will display HS
                        hs_enable <=1;
                        if (start || expired) begin
                            state <= START;
                            pause <= 0;
                            reset_score <= 1;
                            reset_physics <=1;
                            start_timer <= 0;
                            updatepos <=0;
                        end
                    end
                endcase
                if (start_timer) start_timer <= 0;
                sound_jump <= jump? 1:0;
                sound_collide <= collision? 1:0;
           end
        end
endmodule

//////////////////////////////////////////////////////////////////////////////////
// Physics module: sets rate of bird movement (jumping/falling)
//////////////////////////////////////////////////////////////////////////////////
module physics(input clock, updatepos, reset_physics,
               input up, sixty_hz, //five_hz, //used for testing jumps
               input [9:0] player_x, player_y,
               output reg jump, prev_enable,
               output reg [9:0] bird_x, bird_y, prev_player_locx, prev_player_locy
               );
               
    parameter signed VELOCITY_UP = 220;
    parameter signed GRAVITY = -11;
    
	reg signed [19:0] velocity;
	wire signed [18:0] bird_ys;
	assign bird_ys = bird_y;
	initial velocity = 7;
	reg prev_enable;
	initial prev_enable =0;
        always @(posedge clock) begin
        //determine jump by if player location has changed by a +120;
        //jump <= ((prev_player_locy!=0&&prev_player_locx!=0&&player_x!=0&&player_y!=0)&&(prev_player_locy+120<=player_y))?  1: 0;
        jump <= up;
            if (reset_physics) begin
                prev_enable <=0;
                velocity <= 7;
                bird_y<=250;
            end
            else begin
                if (prev_enable ==0) begin
                    bird_y <= 250;
                    if (jump) prev_enable <= 1;
                //don't compare the two locations
                end
                else if (updatepos) begin
                //otherwise compare the two y-coord locations
                    if (sixty_hz) begin
                            velocity <= (up)? VELOCITY_UP: velocity+GRAVITY;
                            if ((bird_ys-velocity/48) < 36 || (bird_ys-velocity/48)+64 > 514) bird_y <= bird_y;
                            else bird_y <= bird_ys-velocity/48;
                    end
                    bird_x <= 200; //x does not change     
                    //if the location has changed some amount, it's a jump so decrease y-coord for bird location
                    prev_player_locx <= player_x;
                    prev_player_locy <= player_y;
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
module randombit(input clock,
              output [3:0] randbit
              );
    
    integer add;
    wire [3:0] randbit;
    assign randbit  = add;
    
    always@(posedge clock) begin
        add = {$random} % (10); 
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

//////////////////////////////////////////////////////////////////////////////////
// thirtyhzstart module - Asserts 60Hz cycle (asserts 60/second)
// used for physics smoothing of movement
//////////////////////////////////////////////////////////////////////////////////
module thirtyhzstart(input clock, 
              output reg thirty_hz_enable
              );
    reg [31:0] counter;
    initial counter = 0;
    always @(posedge clock)  begin
        if (counter < 833_333) counter <= counter + 1;
        else if (counter > 833_332) counter <= 0;
        thirty_hz_enable <= (counter == 833_332)? 1: 0;
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