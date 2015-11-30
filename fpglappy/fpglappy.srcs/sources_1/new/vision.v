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
// TODO:
//  - Allow player to use more colors for hats
//  - Clean up code a bit
//  - Integrate the Bram Module into here
//
////////////////////////////////////////////////////////////////////////////////////


module vision(
    input wire clk, // 25 MHz Clock (fpglappy)
    output reg [9:0] x_pos, // Tracking Data (vision)
    output reg [9:0] y_pos, // Tracking Data (vision)
    output reg [9:0] z_pos, // Tracking Data (vision)
    output wire sioc, // Output to Camera (camera_configure)
    output wire siod, // Output to Camera (camera_configure)
    input wire vsync, // Input from Camera (camera_read)
    input wire href, // Input from Camera (camera_read)
    input wire pclk, // Input from Camera (camera_read)
    input wire [7:0] p_data, // Input from Camera (camera_read)
    output reg reset_cam, // Output to Camera (vision)
    output reg pwdn_cam, // Output to Camera (vision)
    output reg [18:0] addra, // Address to bram (vision)
    output reg [7:0] dina, // Data for bram (vision)
    output reg wea, // Write Enable for bram (vision)
    output wire done_cam_config, // Camera configuration done (camera_configure)
    input wire button_input, // TODO: Remove? (fpglappy)
    input wire sel // TODO: Remove? (fpglappy)
    );

    parameter NUM_PIXELS_H=640;
    parameter NUM_PIXELS_V=480;

    // Initialize Registers
    initial
    begin
        reset_cam <= 1;
        pwdn_cam <= 0;
        x_pos <= 0;
        y_pos <= 0;
        z_pos <= 0;
        addra <= 0;
        dina <= 0;
        wea <= 0;
        start <= 0;
        started <= 0;
        cur_pixel <= 0;
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

    // Preprocessing
    wire [7:0] dina_p;
    preprocessing pp(.currentPixel(pixel_data), .newPixel(dina_p));

    // Grayscale Conversion
    wire [7:0] gray;
    grayscale gs(.b(pixel_data[4:0]), .g(pixel_data[10:5]), .r(pixel_data[15:11]), .gray(gray));

    // Center of Mass Variables
    reg [19:0] numPixels = 0;
    reg [26:0] massX = 0;
    reg [26:0] massY = 0;

    // Writing to Memory
    always@(posedge pclk)
    begin
        // Received valid pixel
        if(pixel_valid)
        begin
            start <= 0;
            dina <= (!sel) ? gray : dina_p;
            addra <= cur_pixel;
            wea <= 1;
            cap <= (frame_done) ? 0 : cap;
            // Center of Mass Calculations
            if(dina_p == 255 && cur_pixel < NUM_PIXELS_V*NUM_PIXELS_H) begin
                numPixels <= numPixels + 1;
                massX <= massX + (cur_pixel % NUM_PIXELS_H);
                massY <= massY + (cur_pixel / NUM_PIXELS_H);
            end
        end
        // Don't do anything
        else begin
            wea <= 0;
            start <= 0;
        end

        // Frame Done
        if (frame_done) begin

            // Configure Camera
            // Position makes sure camera has initialized
            if (!started || button_input) begin
                start <= 1;
                started <= 1;
                wea <= 0;
            end

            // Center of Mass Calculations
            x_pos <= numPixels ? massX / numPixels : x_pos;
            y_pos <= numPixels ? massY / numPixels : y_pos;
            numPixels <= 0;
            massX <= 0;
            massY <= 0;

            // Reset Current Pixel
            cur_pixel <= 0;
        end
        // Frame not done: Incremement current pixel
        else if (pixel_valid) cur_pixel <= cur_pixel + 1;
    end

endmodule

module preprocessing(
    input wire [15:0] currentPixel,
    output reg [7:0] newPixel
);

    parameter uMin = 70;
    parameter uMax = 85;
    parameter vMin = 80;
    parameter vMax = 97;

    // RGB to YUV Conversion
    wire [6:0] y, u, v;
    rgbToYUV yuvconv(.b(currentPixel[4:0]), .g(currentPixel[10:5]), .r(currentPixel[15:11]),
        .y(y), .u(u), .v(v));

    // y' computation
    wire [5:0] yP;
    yPrime ypp(.b(currentPixel[4:0]), .g(currentPixel[10:5]), .r(currentPixel[15:11]),
        .yP(yP));

    always@(*) begin
        if (yP >= 5)
            // Check if pixel is in valid color range
            if(uMin <= u && uMax >= u && vMin <= v && vMax >= v)
                newPixel <= 255;
            else newPixel <= 0;
        else newPixel <= 0;
    end

endmodule

module rgbToYUV(
    input wire [4:0] r,
    input wire [5:0] g,
    input wire [4:0] b,
    output wire [6:0] y,
    output wire [6:0] u,
    output wire [6:0] v
);

    // Signed variables
    wire signed [6:0] r_6;
    wire signed [6:0] g_6;
    wire signed [6:0] b_6;

    // Make variables signed
    assign r_6 = r << 1;
    assign g_6 = g;
    assign b_6 = b << 1;

    // Simplified matrix for RGB -> YUV conversion
    assign y = (r_6 >> 2) + (g_6 >> 1) + (b_6 >> 2);
    assign u = (r_6 >> 2) - (g_6 >> 1) + (b_6 >> 2) + 7'sd64;
    assign v = (r_6 >> 1) - (b_6 >> 1) + 7'sd64;

endmodule

module yPrime(
    input wire [4:0] r,
    input wire [5:0] g,
    input wire [4:0] b,
    output reg [5:0] yP
);

    wire [5:0] r_6;
    wire [5:0] g_6;
    wire [5:0] b_6;

    // Make variables same size
    assign r_6 = r << 1;
    assign g_6 = g;
    assign b_6 = b << 1;

    // Figure out max of RGB
    always@(*) begin
        if ((r_6 >= g_6) && (r_6 >= b_6))
            yP <= r_6;
        else if ((g_6 >= r_6) && (g_6 >= b_6))
            yP <= g_6;
        else
            yP <= b_6;
    end
endmodule

module grayscale(
    input wire [4:0] r,
    input wire [5:0] g,
    input wire [4:0] b,
    output wire [7:0] gray
);

    wire [7:0] r_8;
    wire [7:0] g_8;
    wire [7:0] b_8;

    // Make variables same size
    assign r_8 = r << 3;
    assign g_8 = g << 2;
    assign b_8 = b << 3;

    assign gray = (r_8 >> 2) + (g_8 >> 1) + (b_8 >> 2);

endmodule
