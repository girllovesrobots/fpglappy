`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2015 04:11:31 PM
// Design Name: 
// Module Name: sdMaster
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: SD Master will distribute control over the SD card among different modules.
// 
//////////////////////////////////////////////////////////////////////////////////


module sdMaster(
    input clock, //25 MHz
    input reset,
    input src_1_req,
    input src_1_done,
    input [31:0] src_1_addr,
    input src_1_rd,
    input SD_CD,
    output src_1_en,
    output [7:0] dout,
    output byte_available,
    output ready_for_next_byte,
    output ready,
    output SD_RESET,
    output SD_SCK,
    output SD_CMD,
    inout[3:0] SD_DAT
    );
    
    //reg src1 <= 0;
    assign SD_DAT[1] = 1;
    assign SD_DAT[2] = 1;
    
    wire[31:0] currentAddress;
    assign currentAddress = src_1_addr;
    
    wire rd;
    assign rd = src_1_rd;
    
    wire wr;
    assign wr = 0;
    
    wire din;
    assign din = 0;
    
    sd_controller sdcontroller(.reset(reset),.clk(clock),.cs(SD_DAT[3]),.mosi(SD_CMD),
        .miso(SD_DAT[0]),.sclk(SD_SCK),.ready(ready),.address(currentAddress),
        .rd(src_1_req),.dout(dout),.byte_available(byte_available),.wr(wr),
        .ready_for_next_byte(ready_for_next_byte));
    
endmodule
