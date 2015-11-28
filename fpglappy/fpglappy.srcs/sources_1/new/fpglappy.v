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
    input SD_CD,
    input[15:0] SW,
    input BTNC, BTNU, BTNL, BTNR, BTND,
    output SD_RESET,
    output SD_SCK,
    output SD_CMD,
    output[3:0] VGA_R,
    output[3:0] VGA_B,
    output[3:0] VGA_G,
    output[7:0] JA,
    output VGA_HS,
    output VGA_VS,
    output LED16_B, LED16_G, LED16_R,
    output LED17_B, LED17_G, LED17_R,
    output[15:0] LED,
    output[7:0] SEG,  // segments A-G (0-6), DP (7)
    output[7:0] AN,    // Display 0-7
    inout[3:0] SD_DAT
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


    // Instantiate Vision Module

    wire [9:0] player_location [2:0];

  //  vision tracking(.clk(clock_25mh),.x_pos(player_location[0]), .y_pos(player_location[1]),
  //  .z_pos(player_location[2]));
  
    wire src_1_req, src_1_done, src_1_rd, src_1_en;
    wire [31:0] src_1_addr;
    wire [7:0] dout;
    wire ready, byte_available, ready_for_next_byte; 
    
    // Distributes access to SD card among modules
    sdMaster sdMaster(.clock(clock_25mhz),.reset(0),.src_1_req(src_1_req),
        .src_1_done(src_1_done),.src_1_addr(src_1_addr),.src_1_rd(src_1_rd),
        .SD_CD(SD_CD),.src_1_en(src_1_en),.dout(dout),.byte_available(byte_available),
        .ready_for_next_byte(ready_for_next_byte),.ready(ready),.SD_RESET(SD_RESET),
        .SD_SCK(SD_SCK),.SD_CMD(SD_CMD),.SD_DAT(SD_DAT));

    //////////////////////////////////////////////////////////////////////////////////
    // sample Verilog to generate color bars
    wire [9:0] hcount;
    wire [9:0] vcount;
    wire hsync, vsync, at_display_area;
    vga vga1(.vga_clock(clock_25mhz),.hcount(hcount),.vcount(vcount),
          .hsync(hsync),.vsync(vsync),.at_display_area(at_display_area));
          
    wire[8:0] backgroundPos = 0; // Replace to make scrolling

    spriteline spriteline1(.birdY(200),
        .obs1x(175),.obs1y(200),.obs1en(1),
        .obs2x(350),.obs2y(400),.obs2en(1),
        .obs3x(600),.obs3y(300),.obs3en(1),
        .hcount(hcount), .vcount(vcount), .backgroundPos(backgroundPos),
        .at_display_area(at_display_area),.VGA_RGB({VGA_R,VGA_G,VGA_B}));

    assign VGA_HS = ~hsync;
    assign VGA_VS = ~vsync;

endmodule
