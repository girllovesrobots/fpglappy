// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.3 (lin64) Build 1368829 Mon Sep 28 20:06:39 MDT 2015
// Date        : Mon Dec  7 18:04:23 2015
// Host        : cyanide running 64-bit Ubuntu 15.10
// Command     : write_verilog -force -mode synth_stub
//               /home/jmend/test/fpglappy/fpglappy/fpglappy.srcs/sources_1/ip/start_screen/start_screen_stub.v
// Design      : start_screen
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_9,Vivado 2015.3" *)
module start_screen(a, spo)
/* synthesis syn_black_box black_box_pad_pin="a[12:0],spo[7:0]" */;
  input [12:0]a;
  output [7:0]spo;
endmodule
