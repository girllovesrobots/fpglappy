`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Wei Low
// Module Name: gamelogic_tb.
// Description: Contains testbenches for collision, timer, 
// 				onehzstart and randombit modules

//////////////////////////////////////////////////////////////////////////////////

module gamelogic_tb;

/* Collision TestBench -- Tested
// Inputs
    reg clock;
    reg obs1en;
    reg obs2en;
    reg obs3en;
    reg [9:0] bird_x;
    reg [9:0] bird_y;
    reg [9:0] obs1x;
    reg [9:0] obs1y;
    reg [9:0] obs2x;
    reg [9:0] obs2y;
    reg [9:0] obs3x;
    reg [9:0] obs3y;
// Outputs  
    wire collision;
    collision_detection uut(
        .clock(clock),
        .obs1en(obs1en),
        .obs2en(obs2en),
        .obs3en(obs3en),
        .bird_x(bird_x),
        .bird_y(bird_y),
        .obs1x(obs1x),
        .obs1y(obs1y),
        .obs2x(obs2x),
        .obs2y(obs2y),
        .obs3x(obs3x),
        .obs3y(obs3y),
        .collision(collision)
    );
    
    always #5 clock = !clock; //change clock every 100_000 ns
    
    initial begin
        //Initialize Inputs
        clock = 0;
        obs1en = 0;
        obs2en = 0;
        obs3en = 0;
        bird_x = 0;
        bird_y = 0;
        obs1x = 0;
        obs1y = 0;
        obs2x = 0;
        obs2y = 0;
        obs3x = 0;
        obs3y = 0;
        
        // Wait 100 ns for global reset to finish
        #100;
            
        // Add stimulus here
        //////////////////////////////////////////////
        clock = 1;
        #20;
        obs1en = 1;
        bird_x = 1;
        bird_y = 1;
        obs1x = 4;
        obs1y = 5;
        #20;
        obs2en = 1;
        obs2x = 100;
        obs2y = 50;
        bird_x = 90;
        bird_y = 200;
        #20;
        bird_x = 163;
        #50
        bird_y = 80;
        /////////////////////////////////////////////
        end
*/

/* Timer TestBench -- Tested
// Inputs
    reg clock;
    reg start_timer;
    reg one_hz;
// Outputs  
    wire expired;
    wire [2:0] countdown;
    timer uut(
        .clock(clock),
        .start_timer(start_timer),
        .one_hz(one_hz),
        .expired(expired),
        .countdown(countdown)
    );
    
    always #5 clock = !clock; //change clock every 5 ns
    always #10 one_hz = !one_hz; //change 1hz signal every 20 cycles
    initial begin
        //Initialize Inputs
        clock = 0;
        start_timer = 0;
        one_hz = 0;
        // Wait 100 ns for global reset to finish
        #100;
        //Add stimulus here
        start_timer = 1;
        #20
        start_timer = 0;
    end
*/

/* OneHzStart TestBench -- Tested
// Inputs
    reg clock;
// Outputs  
    wire one_hz_enable;
    onehzstart uut(
        .clock(clock),
        .one_hz_enable(one_hz_enable)
    );
    
    always #10 clock = !clock; //change clock every 10 ns
    
    initial begin
        //Initialize Inputs
        clock = 0;
        
        // Wait 100 ns for global reset to finish
        #100;
    end
*/

/* randombit TestBench -- Tested -- Not used because using player_loc bits instead

// Inputs
    reg clock;

// Outputs  
    wire [3:0] randbit;

    randombit uut(
        .clock(clock),
        .randbit(randbit)
    );
    
    always #10 clock = !clock; //change clock every 10 ns
    
    initial begin
        //Initialize Inputs
        clock = 0;
        // Wait 100 ns for global reset to finish
        #100;
        
        //Add stimulus here

    end

*/
endmodule
