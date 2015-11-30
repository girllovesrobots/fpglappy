`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Wei Low
// Module Name: gamelogic_tb.v

//////////////////////////////////////////////////////////////////////////////////

module gamelogic_tb;
/* Timer TestBench -- Tested 10/18/2015

// Inputs
    reg clock;
    reg reset_sync;
    reg reprogram;
    reg start_timer;
    reg one_hz;
    reg [1:0] tselec;
    reg [3:0] state;
    reg [3:0] tvalue;

// Outputs  
    wire expired;
    wire [3:0] timer;

    timeparam uut(
        .clock(clock),
        .reset_sync(reset_sync),
        .reprogram(reprogram),
        .start_timer(start_timer),
        .one_hz(one_hz),
        .tselec(tselec),
        .state(state),
        .tvalue(tvalue),
        .expired(expired),
        .timer(timer)
    );
    
    always #10 clock = !clock; //change clock every 100_000 ns
    
    initial begin
        //Initialize Inputs
        clock = 0;
        reset_sync = 0;
        reprogram =0;
        start_timer=0;
        one_hz =0;
        tselec = 2'b00;
        state=4'b0001; //START AT PTRIGGER 
        tvalue = 4'b0000;
        
        // Wait 100 ns for global reset to finish
        #100;
            
        // Add stimulus here
        //////////////////////////////////////////////
        start_timer = 1;
        one_hz= 1;
        #20;
        start_timer = 0;
        #1000; //Should be counting down
        start_timer = 1;
        state = 4'b0100;
        one_hz=1;//Should be counting down
        #20;
        one_hz=0; //Should not counting down
        #1000
        one_hz = 1;
        #1000; //Expired should eventually be asserted to 1;
        reset_sync = 1;
        start_timer = 0;
        #100;
        reprogram = 1;
        tselec = 2'b10;
        tvalue = 4'b0010;
        state = 4'b0001;
        #100;
        start_timer =1;
        one_hz =1;
        /////////////////////////////////////////////
    end
*/
/* GameState TestBench -- Tested */

// Inputs
    reg clock;
    reg ignition;
    reg passdoor;
    reg driverdoor;
    reg expired;

// Outputs  
    wire status;
    wire siren;
    wire status_blink;
    wire [3:0] state;

    fsm uut(
        .clock(clock),
        .passdoor(passdoor),
        .driverdoor(driverdoor),
        .ignition(ignition),
        .expired(expired),
        .status(status),
        .siren(siren),
        .status_blink(status_blink),
        .state(state)
    );
    
    always #10 clock = !clock; //change clock every 100_000 ns
    
    initial begin
        //Initialize Inputs
        clock = 0;
        ignition = 0;
        passdoor= 0;
        driverdoor=0;
        expired = 0;
        
        // Wait 100 ns for global reset to finish
        #100;
            
        // Add stimulus here
        //////////////////////////////////////////////
        //Test ARMED STATE
        ignition = 0;
        #20;
        expired = 1;
        #20;
        expired = 0;
        #20;
        driverdoor= 1;
        #20
        //DTRIGGER
        ignition = 1;
        #20;
        //DISARMED
        ignition = 0;
        driverdoor = 1;
        #20;
        driverdoor = 0;
        //ARMDELAY
        driverdoor = 1;
        #100;
        driverdoor = 0;
        #20;
        expired = 1;
        //ARMED
        #20;
        expired = 0;
        passdoor = 1;
        #20;
        //PTRIGGER
        ignition = 0;
        expired = 1;
        #30;
        //SOUNDALARM
        expired = 0;
        passdoor = 1;
        #40;
        passdoor = 0;
        driverdoor = 0;
        #100;
        expired = 1;
        /////////////////////////////////////////////
    end


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
endmodule

