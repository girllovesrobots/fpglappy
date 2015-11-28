`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////////////////////////////////
//
//
//    ▄████████   ▄███████▄    ▄██████▄   ▄█          ▄████████    ▄███████▄    ▄███████▄ ▄██   ▄
//   ███    ███  ███    ███   ███    ███ ███         ███    ███   ███    ███   ███    ███ ███   ██▄
//   ███    █▀   ███    ███   ███    █▀  ███         ███    ███   ███    ███   ███    ███ ███▄▄▄███
//  ▄███▄▄▄      ███    ███  ▄███        ███         ███    ███   ███    ███   ███    ███ ▀▀▀▀▀▀███
// ▀▀███▀▀▀    ▀█████████▀  ▀▀███ ████▄  ███       ▀███████████ ▀█████████▀  ▀█████████▀  ▄██   ███
//   ███         ███          ███    ███ ███         ███    ███   ███          ███        ███   ███
//   ███         ███          ███    ███ ███▌    ▄   ███    ███   ███          ███        ███   ███
//   ███        ▄████▀        ████████▀  █████▄▄██   ███    █▀   ▄████▀       ▄████▀       ▀█████▀
//                            ▀
//                    ▀█████████▄   ▄█     ▄████████ ████████▄
//                      ███    ███ ███    ███    ███ ███   ▀███
//                      ███    ███ ███▌   ███    ███ ███    ███
//                     ▄███▄▄▄██▀  ███▌  ▄███▄▄▄▄██▀ ███    ███
//                    ▀▀███▀▀▀██▄  ███▌ ▀▀███▀▀▀▀▀   ███    ███
//                      ███    ██▄ ███  ▀███████████ ███    ███
//                      ███    ███ ███    ███    ███ ███   ▄███
//                    ▄█████████▀  █▀     ███    ███ ████████▀
//                                        ███    ███
// Create Date: 11/13/2015 12:51:29 PM
// Design Name: Fpglappy Bird
// Module Name: fpglappy
// Project Name: Fpglappy Bird
// Target Devices: Nexys 4
// Tool Versions: Vivado v2015.2
// Description: Implementation of flappy bird on an FPGA for the 6.111 final
// project
//
// Authors: Julian Mendoza, Wei Low, Nicholas McCoy
//
//
//                   _(_)(_)(_)           _ (_)    _ (_)    _ (_)
//                 _(_)                  (_)(_)   (_)(_)   (_)(_)
//                (_) _  _  _               (_)      (_)      (_)
//                (_)(_)(_)(_)_             (_)      (_)      (_)
//                (_)        (_)  _  _      (_)      (_)      (_)
//                (_)_  _  _ (_) (_)(_)   _ (_) _  _ (_) _  _ (_) _
//                  (_)(_)(_)    (_)(_)  (_)(_)(_)(_)(_)(_)(_)(_)(_)
//
//
///////////////////////////////////////////////////////////////////////////////////////////////

module fpglappy(
    input CLK100MHZ,
    input[15:0] SW,
    input BTNC, BTNU, BTNL, BTNR, BTND,
    output[3:0] VGA_R,
    output[3:0] VGA_B,
    output[3:0] VGA_G,

    input[7:0] JA,
    input PCLK_C,
    input VSYNC_C,
    input HREF_C,
    output XCLK_C,
    output SIOD_C,
    output PWDN_C,
    output RESET_C,
    output SIOC_C,

    output VGA_HS,
    output VGA_VS,
    output LED16_B, LED16_G, LED16_R,
    output LED17_B, LED17_G, LED17_R,
    output reg [15:0] LED,
    output[7:0] SEG,  // segments A-G (0-6), DP (7)
    output[7:0] AN    // Display 0-7
    );
    // Create 25mhz system clock
    wire clock_25mhz;
    clock_quarter_divider clockgen(.clk100_mhz(CLK100MHZ), .clock_25mhz(clock_25mhz));

    // Instantiate 7-segment display
    wire [31:0] data;
    wire [6:0] segments;
    display_8hex display(.clk(clock_25mhz),.data(data), .seg(segments), .strobe(AN));    
    assign SEG[6:0] = segments;
    assign SEG[7] = 1'b1;

    // Wires needed for BRAM
    wire [18:0] addra;
    wire [7:0] dina;
    wire [7:0] douta;
    wire wea;

    wire [18:0] addrb;
    wire [7:0] dinb;
    wire [7:0] doutb;
    wire web;

    // Assign Multi-color LEDs
    assign LED16_B = 1;
    assign LED16_G = 1;
    assign LED16_R = 1;
    assign LED17_B = 1;
    assign LED17_G = 1;
    assign LED17_R = 1;


    // 1 Second Clock
    wire clock_1hz;
    divider divide(.clock25mhz(clock_25mhz), .clock1hz(clock_1hz));

    // Instantiate Vision Module

    wire [9:0] player_location [2:0];

    assign XCLK_C = clock_25mhz;

    vision tracking(.clk(clock_25mhz),
        .x_pos(player_location[0]),
        .y_pos(player_location[1]),
        .z_pos(player_location[2]),
        .sioc(SIOC_C),
        .siod(SIOD_C),
        .vsync(VSYNC_C),
        .href(HREF_C),
        .pclk(PCLK_C),
        .p_data(JA),
        .reset_cam(RESET_C),
        .pwdn_cam(PWDN_C),
        .addra(addra),
        .dina(dina),
        .wea(wea)
    );

    // BRAM Test

    blk_mem block_memory(
        .clka(clock_25mhz),
        .clkb(clock_25mhz),
        .addra(addra),
        .dina(dina),
        .douta(douta),
        .wea(wea),
        .addrb(addrb),
        .dinb(dinb),
        .doutb(doutb),
        .web(web)
    );

    /* TESTBITJIWJAOIDJWOIAJDoiw */
    assign addrb = 5;
    assign web = 0;
    assign dinb = 0;
    always@(*) LED <= douta;
    assign data = doutb;
    /* TESTBITJIWJAOIDJWOIAJDoiw */

    //////////////////////////////////////////////////////////////////////////////////
    // sample Verilog to generate color bars
    wire [9:0] hcount;
    wire [9:0] vcount;
    wire hsync, vsync, at_display_area;
    vga vga1(.vga_clock(clock_25mhz),.hcount(hcount),.vcount(vcount),
          .hsync(hsync),.vsync(vsync),.at_display_area(at_display_area));

    assign VGA_R = 0;
    assign VGA_G = 0;
    assign VGA_B = doutb[7:4];
    //assign VGA_B = at_display_area ? {4{hcount[5]}} : 0;
    assign VGA_HS = ~hsync;
    assign VGA_VS = ~vsync;

endmodule
