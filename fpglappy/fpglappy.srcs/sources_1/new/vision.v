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
    input wire clk, // 25 MHz Clock
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
    output reg [18:0] addra,
    output reg [7:0] dina,
    output reg wea,
    output wire done_cam_config,
    output reg start_config,
    input wire button_input
    );

    // Initialize Registers
    initial
    begin
        addra <= 0;
        dina <= 0;
        wea <= 0;
        start <= 0;
        started <= 0;
        cur_pixel <= 0;
        start_config <= 0;
        cap <= 0;
    end

    // Initialize Camera Config Module
    reg start;
    reg cap;
    reg started;
    reg [18:0] cur_pixel;

    camera_configure config_cam (.clk(clk), .start(start), .sioc(sioc),
    .siod(siod), .done(done_cam_config));


    // Initialize Camera Module
    wire [15:0] pixel_data;
    wire pixel_valid;
    wire frame_done;

    camera_read cam (.p_clock(pclk), .vsync(vsync), .href(href), .p_data(p_data),
        .pixel_data(pixel_data), .pixel_valid(pixel_valid), .frame_done(frame_done));


    wire clock_1hz;
    divider divide(.clock25mhz(clk), .clock1hz(clock_1hz));

    // Writing to Memory
    always@(posedge clk)
    begin
        start_config <= start;
        if (!started || button_input) begin
            start <= 1;
            started <= 1;
            wea <= 0;
        end
        else if(pixel_valid && cap)
        begin
            start <= 0;
            dina <= pixel_data[7:0];
            //if (cur_pixel % 2 == 0)
                //dina <= pixel_data[7:0];
            //else
                //dina <= pixel_data[7:0];
            addra <= cur_pixel;
            wea <= 1;
            cur_pixel <= (!frame_done) ? cur_pixel + 1 : 0;
            cap <= (frame_done) ? 0 : cap;
        end
        else begin
            wea <= 0;
            start <= 0;
        end

        if (clock_1hz) begin
            cap <= 1;
            cur_pixel <= 0;
        end
    end

endmodule

