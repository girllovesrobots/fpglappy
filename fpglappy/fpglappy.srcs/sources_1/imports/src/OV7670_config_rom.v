`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2015 02:41:55 PM
// Design Name: 
// Module Name: OV7670_config_rom
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module OV7670_config_rom(
    input wire clk,
    input wire [7:0] addr,
    output reg [15:0] dout
    );
    //FFFF is end of rom, FFF0 is delay
    always @(posedge clk) begin
    case(addr) 
    0:  dout <= 16'h12_80; //reset
    1:  dout <= 16'hFF_F0; //delay
    2:  dout <= 16'h12_04; // COM7,     set RGB color output
    3:  dout <= 16'h11_80; // CLKRC     internal PLL matches input clock
    4:  dout <= 16'h0C_00; // COM3,     default settings
    5:  dout <= 16'h3E_00; // COM14,    no scaling, normal pclock
    6:  dout <= 16'h04_00; // COM1,     disable CCIR656
    7:  dout <= 16'h40_d0; //COM15,     RGB565, full output range
    8:  dout <= 16'h3a_04; //TSLB       set correct output data sequence (magic)
    9:  dout <= 16'h14_18; //COM9       MAX AGC value x4
    10: dout <= 16'h4F_B3; //MTX1       all of these are magical matrix coefficients
    11: dout <= 16'h50_B3; //MTX2
    12: dout <= 16'h51_00; //MTX3
    13: dout <= 16'h52_3d; //MTX4
    14: dout <= 16'h53_A7; //MTX5
    15: dout <= 16'h54_E4; //MTX6
    16: dout <= 16'h58_9E; //MTXS
    17: dout <= 16'h3D_C0; //COM13      sets gamma enable, does not preserve reserved bits, may be wrong?
    18: dout <= 16'h17_14; //HSTART     start high 8 bits
    19: dout <= 16'h18_02; //HSTOP      stop high 8 bits //these kill the odd colored line
    20: dout <= 16'h32_80; //HREF       edge offset
    21: dout <= 16'h19_03; //VSTART     start high 8 bits
    22: dout <= 16'h1A_7B; //VSTOP      stop high 8 bits
    23: dout <= 16'h03_0A; //VREF       vsync edge offset
    24: dout <= 16'h0F_41; //COM6       reset timings
    25: dout <= 16'h1E_00; //MVFP       disable mirror / flip //might have magic value of 03
    26: dout <= 16'h33_0B; //CHLF       //magic value from the internet
    27: dout <= 16'h3C_78; //COM12      no HREF when VSYNC low
    28: dout <= 16'h69_00; //GFIX       fix gain control
    29: dout <= 16'h74_00; //REG74      Digital gain control
    30: dout <= 16'hB0_84; //RSVD       magic value from the internet *required* for good color
    31: dout <= 16'hB1_0c; //ABLC1
    32: dout <= 16'hB2_0e; //RSVD       more magic internet values
    33: dout <= 16'hB3_80; //THL_ST

    //34: dout <= 16'h56_20; //CONTRAS

    //34: dout <= 16'h7A_20; //GAMMA CURVE
    //35: dout <= 16'h7B_10; //GAMMA CURVE
    //36: dout <= 16'h7C_1E; //GAMMA CURVE
    //37: dout <= 16'h7D_35; //GAMMA CURVE
    //38: dout <= 16'h7E_5a; //GAMMA CURVE
    //39: dout <= 16'h7F_69; //GAMMA CURVE
    //40: dout <= 16'h80_76; //GAMMA CURVE
    //41: dout <= 16'h81_80; //GAMMA CURVE
    //42: dout <= 16'h82_88; //GAMMA CURVE
    //43: dout <= 16'h83_8f; //GAMMA CURVE
    //44: dout <= 16'h84_96; //GAMMA CURVE
    //45: dout <= 16'h85_a3; //GAMMA CURVE
    //46: dout <= 16'h86_af; //GAMMA CURVE
    //47: dout <= 16'h87_c4; //GAMMA CURVE
    //48: dout <= 16'h88_d7; //GAMMA CURVE
    //49: dout <= 16'h89_e8; //GAMMA CURVE
    34: dout <= 16'h01_40; // ------ Play with this
    35: dout <= 16'h02_40; // ------ Play with this
    36: dout <= 16'h09_00;
    37: dout <= 16'h0d_00;
    38: dout <= 16'h10_00;
    39: dout <= 16'h13_e5;
    40: dout <= 16'ha4_89;
    41: dout <= 16'h26_A5;
    42: dout <= 16'h3b_02;
    43: dout <= 16'h3d_c2;
    44: dout <= 16'h41_08;
    45: dout <= 16'h56_40;
    46: dout <= 16'h58_9e;

    default: dout <= 16'hFF_FF;         //mark end of ROM
    endcase
    

    end
endmodule
