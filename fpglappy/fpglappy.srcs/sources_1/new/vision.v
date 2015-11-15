`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
//
// Design Name: Fpglappy Bird
// Module Name: Vision
// Project Name: Fpglappy Bird
// Target Devices: Nexys 4
// Tool Versions: Vivado v2015.2
// Description: Vision Tracking module
//
// Authors: Julian Mendoza
//
//
////////////////////////////////////////////////////////////////////////////////////


module vision(
    input clk, // 25 MHz Clock
    output reg [9:0] x_pos = 0,
    output reg [9:0] y_pos = 0,
    output reg [9:0] z_pos = 0
    );

    // Initialize Camera Module
    reg start = 0;
    wire sioc;
    wire siod;
    wire 2done;

    camera_configure config_cam (.clk(clk), .start(start), .sioc(sioc),
    .siod(siod), .done(done));

    // Initialize things
    initial
    begin
        start = 0;
    end

endmodule
