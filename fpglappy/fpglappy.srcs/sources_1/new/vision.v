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
    output reg [9:0] x_pos = 0, // Tracking Data (vision)
    output reg [9:0] y_pos = 0, // Tracking Data (vision)
    output reg [9:0] z_pos = 0, // Tracking Data (vision)
    output wire sioc, // Output to Camera (camera_configure)
    output wire siod, // Output to Camera (camera_configure)
    input wire vsync, // Input from Camera (camera_read)
    input wire href, // Input from Camera (camera_read)
    input wire pclk, // Input from Camera (camera_read)
    input wire [7:0] p_data, // Input from Camera (camera_read)
    output reg reset_cam = 1, // Output to Camera (vision)
    output reg pwdn_cam = 0, // Output to Camera (vision)
    output reg [3:0] addra,
    output reg [7:0] dina,
    output reg wea
    );

    // Initialize Registers
    initial
    begin
        addra <= 0;
        dina <= 0;
        wea <= 0;
        start <= 0;
        started <= 0;
    end

    // Initialize Camera Config Module
    reg start;
    reg started;
    wire done;
    // TODO: Change this back to 31-bit or something
    //integer cur_pixel;
    reg [7:0] cur_pixel;

    camera_configure config_cam (.clk(clk), .start(start), .sioc(sioc),
    .siod(siod), .done(done));


    // Initialize Camera Module
    wire [15:0] pixel_data;
    wire pixel_valid;
    wire frame_done;

    camera_read cam (.p_clock(pclk), .vsync(vsync), .href(href), .p_data(p_data),
        .pixel_data(pixel_data), .pixel_valid(pixel_valid), .frame_done(frame_done));


    wire clock_1hz;
    divider divide(.clock25mhz(clk), .clock1hz(clock_1hz));

    // Writing to Memory
    always@(posedge pclk)
    begin
        /* Run the configuration at startup */
        if(!started) begin
            start <= 1;
            started <= 1;
        end
        else start <= 0;

        /* Write valid pixels to memory */
        if (clock_1hz) begin
            addra <= 4'd5;
            dina <= cur_pixel;
            cur_pixel <= 1 + cur_pixel;
            wea <= 1;
        end
        else wea <= 0;
        //if(pixel_valid)
        //begin
            //addra <= cur_pixel;
            //dina <= pixel_data[4:0];
            //wea <= 1;
            //cur_pixel <= (!frame_done) ? cur_pixel + 1 : 0;
        //end
    end

endmodule

