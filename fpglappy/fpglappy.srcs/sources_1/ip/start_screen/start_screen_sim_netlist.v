// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.3 (win64) Build 1368829 Mon Sep 28 20:06:43 MDT 2015
// Date        : Mon Dec 07 00:41:52 2015
// Host        : DESKTOP-COC4BKA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Nick/Documents/fpglappy/fpglappy/fpglappy.srcs/sources_1/ip/start_screen/start_screen_sim_netlist.v
// Design      : start_screen
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "start_screen,dist_mem_gen_v8_0_9,{}" *) (* core_generation_info = "start_screen,dist_mem_gen_v8_0_9,{x_ipProduct=Vivado 2015.3,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=dist_mem_gen,x_ipVersion=8.0,x_ipCoreRevision=9,x_ipLanguage=VERILOG,x_ipSimLanguage=VERILOG,C_FAMILY=artix7,C_ADDR_WIDTH=13,C_DEFAULT_DATA=0,C_DEPTH=8192,C_HAS_CLK=0,C_HAS_D=0,C_HAS_DPO=0,C_HAS_DPRA=0,C_HAS_I_CE=0,C_HAS_QDPO=0,C_HAS_QDPO_CE=0,C_HAS_QDPO_CLK=0,C_HAS_QDPO_RST=0,C_HAS_QDPO_SRST=0,C_HAS_QSPO=0,C_HAS_QSPO_CE=0,C_HAS_QSPO_RST=0,C_HAS_QSPO_SRST=0,C_HAS_SPO=1,C_HAS_WE=0,C_MEM_INIT_FILE=start_screen.mif,C_ELABORATION_DIR=./,C_MEM_TYPE=0,C_PIPELINE_STAGES=0,C_QCE_JOINED=0,C_QUALIFY_WE=0,C_READ_MIF=1,C_REG_A_D_INPUTS=0,C_REG_DPRA_INPUT=0,C_SYNC_ENABLE=1,C_WIDTH=8,C_PARSER_TYPE=1}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "dist_mem_gen_v8_0_9,Vivado 2015.3" *) 
(* NotValidForBitStream *)
module start_screen
   (a,
    spo);
  input [12:0]a;
  output [7:0]spo;

  wire [12:0]a;
  wire [7:0]spo;
  wire [7:0]NLW_U0_dpo_UNCONNECTED;
  wire [7:0]NLW_U0_qdpo_UNCONNECTED;
  wire [7:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "13" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "8192" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "start_screen.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "8" *) 
  start_screen_dist_mem_gen_v8_0_9 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[7:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[7:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[7:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(1'b0));
endmodule

(* C_ADDR_WIDTH = "13" *) (* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "8192" *) 
(* C_ELABORATION_DIR = "./" *) (* C_FAMILY = "artix7" *) (* C_HAS_CLK = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_DPO = "0" *) (* C_HAS_DPRA = "0" *) 
(* C_HAS_I_CE = "0" *) (* C_HAS_QDPO = "0" *) (* C_HAS_QDPO_CE = "0" *) 
(* C_HAS_QDPO_CLK = "0" *) (* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "0" *) 
(* C_HAS_QSPO = "0" *) (* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) 
(* C_HAS_QSPO_SRST = "0" *) (* C_HAS_SPO = "1" *) (* C_HAS_WE = "0" *) 
(* C_MEM_INIT_FILE = "start_screen.mif" *) (* C_MEM_TYPE = "0" *) (* C_PARSER_TYPE = "1" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "1" *) (* C_REG_A_D_INPUTS = "0" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "8" *) (* ORIG_REF_NAME = "dist_mem_gen_v8_0_9" *) 
module start_screen_dist_mem_gen_v8_0_9
   (a,
    d,
    dpra,
    clk,
    we,
    i_ce,
    qspo_ce,
    qdpo_ce,
    qdpo_clk,
    qspo_rst,
    qdpo_rst,
    qspo_srst,
    qdpo_srst,
    spo,
    dpo,
    qspo,
    qdpo);
  input [12:0]a;
  input [7:0]d;
  input [12:0]dpra;
  input clk;
  input we;
  input i_ce;
  input qspo_ce;
  input qdpo_ce;
  input qdpo_clk;
  input qspo_rst;
  input qdpo_rst;
  input qspo_srst;
  input qdpo_srst;
  output [7:0]spo;
  output [7:0]dpo;
  output [7:0]qspo;
  output [7:0]qdpo;

  wire \<const0> ;
  wire [12:0]a;
  wire [7:0]spo;
  wire \spo[0]_INST_0_i_10_n_0 ;
  wire \spo[0]_INST_0_i_11_n_0 ;
  wire \spo[0]_INST_0_i_12_n_0 ;
  wire \spo[0]_INST_0_i_13_n_0 ;
  wire \spo[0]_INST_0_i_14_n_0 ;
  wire \spo[0]_INST_0_i_15_n_0 ;
  wire \spo[0]_INST_0_i_16_n_0 ;
  wire \spo[0]_INST_0_i_17_n_0 ;
  wire \spo[0]_INST_0_i_18_n_0 ;
  wire \spo[0]_INST_0_i_19_n_0 ;
  wire \spo[0]_INST_0_i_1_n_0 ;
  wire \spo[0]_INST_0_i_20_n_0 ;
  wire \spo[0]_INST_0_i_21_n_0 ;
  wire \spo[0]_INST_0_i_22_n_0 ;
  wire \spo[0]_INST_0_i_23_n_0 ;
  wire \spo[0]_INST_0_i_24_n_0 ;
  wire \spo[0]_INST_0_i_25_n_0 ;
  wire \spo[0]_INST_0_i_26_n_0 ;
  wire \spo[0]_INST_0_i_27_n_0 ;
  wire \spo[0]_INST_0_i_28_n_0 ;
  wire \spo[0]_INST_0_i_29_n_0 ;
  wire \spo[0]_INST_0_i_2_n_0 ;
  wire \spo[0]_INST_0_i_30_n_0 ;
  wire \spo[0]_INST_0_i_31_n_0 ;
  wire \spo[0]_INST_0_i_32_n_0 ;
  wire \spo[0]_INST_0_i_33_n_0 ;
  wire \spo[0]_INST_0_i_34_n_0 ;
  wire \spo[0]_INST_0_i_35_n_0 ;
  wire \spo[0]_INST_0_i_36_n_0 ;
  wire \spo[0]_INST_0_i_37_n_0 ;
  wire \spo[0]_INST_0_i_3_n_0 ;
  wire \spo[0]_INST_0_i_4_n_0 ;
  wire \spo[0]_INST_0_i_5_n_0 ;
  wire \spo[0]_INST_0_i_6_n_0 ;
  wire \spo[0]_INST_0_i_7_n_0 ;
  wire \spo[0]_INST_0_i_8_n_0 ;
  wire \spo[0]_INST_0_i_9_n_0 ;
  wire \spo[1]_INST_0_i_10_n_0 ;
  wire \spo[1]_INST_0_i_11_n_0 ;
  wire \spo[1]_INST_0_i_12_n_0 ;
  wire \spo[1]_INST_0_i_13_n_0 ;
  wire \spo[1]_INST_0_i_14_n_0 ;
  wire \spo[1]_INST_0_i_15_n_0 ;
  wire \spo[1]_INST_0_i_16_n_0 ;
  wire \spo[1]_INST_0_i_17_n_0 ;
  wire \spo[1]_INST_0_i_18_n_0 ;
  wire \spo[1]_INST_0_i_19_n_0 ;
  wire \spo[1]_INST_0_i_1_n_0 ;
  wire \spo[1]_INST_0_i_20_n_0 ;
  wire \spo[1]_INST_0_i_21_n_0 ;
  wire \spo[1]_INST_0_i_22_n_0 ;
  wire \spo[1]_INST_0_i_23_n_0 ;
  wire \spo[1]_INST_0_i_24_n_0 ;
  wire \spo[1]_INST_0_i_25_n_0 ;
  wire \spo[1]_INST_0_i_26_n_0 ;
  wire \spo[1]_INST_0_i_27_n_0 ;
  wire \spo[1]_INST_0_i_28_n_0 ;
  wire \spo[1]_INST_0_i_29_n_0 ;
  wire \spo[1]_INST_0_i_2_n_0 ;
  wire \spo[1]_INST_0_i_30_n_0 ;
  wire \spo[1]_INST_0_i_31_n_0 ;
  wire \spo[1]_INST_0_i_32_n_0 ;
  wire \spo[1]_INST_0_i_33_n_0 ;
  wire \spo[1]_INST_0_i_3_n_0 ;
  wire \spo[1]_INST_0_i_4_n_0 ;
  wire \spo[1]_INST_0_i_5_n_0 ;
  wire \spo[1]_INST_0_i_6_n_0 ;
  wire \spo[1]_INST_0_i_7_n_0 ;
  wire \spo[1]_INST_0_i_8_n_0 ;
  wire \spo[1]_INST_0_i_9_n_0 ;
  wire \spo[2]_INST_0_i_10_n_0 ;
  wire \spo[2]_INST_0_i_11_n_0 ;
  wire \spo[2]_INST_0_i_12_n_0 ;
  wire \spo[2]_INST_0_i_13_n_0 ;
  wire \spo[2]_INST_0_i_14_n_0 ;
  wire \spo[2]_INST_0_i_15_n_0 ;
  wire \spo[2]_INST_0_i_16_n_0 ;
  wire \spo[2]_INST_0_i_17_n_0 ;
  wire \spo[2]_INST_0_i_18_n_0 ;
  wire \spo[2]_INST_0_i_19_n_0 ;
  wire \spo[2]_INST_0_i_1_n_0 ;
  wire \spo[2]_INST_0_i_20_n_0 ;
  wire \spo[2]_INST_0_i_21_n_0 ;
  wire \spo[2]_INST_0_i_22_n_0 ;
  wire \spo[2]_INST_0_i_23_n_0 ;
  wire \spo[2]_INST_0_i_24_n_0 ;
  wire \spo[2]_INST_0_i_25_n_0 ;
  wire \spo[2]_INST_0_i_26_n_0 ;
  wire \spo[2]_INST_0_i_27_n_0 ;
  wire \spo[2]_INST_0_i_28_n_0 ;
  wire \spo[2]_INST_0_i_29_n_0 ;
  wire \spo[2]_INST_0_i_2_n_0 ;
  wire \spo[2]_INST_0_i_30_n_0 ;
  wire \spo[2]_INST_0_i_31_n_0 ;
  wire \spo[2]_INST_0_i_32_n_0 ;
  wire \spo[2]_INST_0_i_33_n_0 ;
  wire \spo[2]_INST_0_i_34_n_0 ;
  wire \spo[2]_INST_0_i_35_n_0 ;
  wire \spo[2]_INST_0_i_36_n_0 ;
  wire \spo[2]_INST_0_i_37_n_0 ;
  wire \spo[2]_INST_0_i_3_n_0 ;
  wire \spo[2]_INST_0_i_4_n_0 ;
  wire \spo[2]_INST_0_i_5_n_0 ;
  wire \spo[2]_INST_0_i_6_n_0 ;
  wire \spo[2]_INST_0_i_7_n_0 ;
  wire \spo[2]_INST_0_i_8_n_0 ;
  wire \spo[2]_INST_0_i_9_n_0 ;
  wire \spo[3]_INST_0_i_10_n_0 ;
  wire \spo[3]_INST_0_i_11_n_0 ;
  wire \spo[3]_INST_0_i_12_n_0 ;
  wire \spo[3]_INST_0_i_13_n_0 ;
  wire \spo[3]_INST_0_i_14_n_0 ;
  wire \spo[3]_INST_0_i_15_n_0 ;
  wire \spo[3]_INST_0_i_16_n_0 ;
  wire \spo[3]_INST_0_i_17_n_0 ;
  wire \spo[3]_INST_0_i_18_n_0 ;
  wire \spo[3]_INST_0_i_19_n_0 ;
  wire \spo[3]_INST_0_i_1_n_0 ;
  wire \spo[3]_INST_0_i_20_n_0 ;
  wire \spo[3]_INST_0_i_21_n_0 ;
  wire \spo[3]_INST_0_i_22_n_0 ;
  wire \spo[3]_INST_0_i_23_n_0 ;
  wire \spo[3]_INST_0_i_24_n_0 ;
  wire \spo[3]_INST_0_i_25_n_0 ;
  wire \spo[3]_INST_0_i_26_n_0 ;
  wire \spo[3]_INST_0_i_27_n_0 ;
  wire \spo[3]_INST_0_i_28_n_0 ;
  wire \spo[3]_INST_0_i_29_n_0 ;
  wire \spo[3]_INST_0_i_2_n_0 ;
  wire \spo[3]_INST_0_i_30_n_0 ;
  wire \spo[3]_INST_0_i_31_n_0 ;
  wire \spo[3]_INST_0_i_32_n_0 ;
  wire \spo[3]_INST_0_i_33_n_0 ;
  wire \spo[3]_INST_0_i_34_n_0 ;
  wire \spo[3]_INST_0_i_35_n_0 ;
  wire \spo[3]_INST_0_i_36_n_0 ;
  wire \spo[3]_INST_0_i_3_n_0 ;
  wire \spo[3]_INST_0_i_4_n_0 ;
  wire \spo[3]_INST_0_i_5_n_0 ;
  wire \spo[3]_INST_0_i_6_n_0 ;
  wire \spo[3]_INST_0_i_7_n_0 ;
  wire \spo[3]_INST_0_i_8_n_0 ;
  wire \spo[3]_INST_0_i_9_n_0 ;
  wire \spo[4]_INST_0_i_10_n_0 ;
  wire \spo[4]_INST_0_i_11_n_0 ;
  wire \spo[4]_INST_0_i_12_n_0 ;
  wire \spo[4]_INST_0_i_13_n_0 ;
  wire \spo[4]_INST_0_i_14_n_0 ;
  wire \spo[4]_INST_0_i_15_n_0 ;
  wire \spo[4]_INST_0_i_16_n_0 ;
  wire \spo[4]_INST_0_i_17_n_0 ;
  wire \spo[4]_INST_0_i_18_n_0 ;
  wire \spo[4]_INST_0_i_19_n_0 ;
  wire \spo[4]_INST_0_i_1_n_0 ;
  wire \spo[4]_INST_0_i_20_n_0 ;
  wire \spo[4]_INST_0_i_21_n_0 ;
  wire \spo[4]_INST_0_i_22_n_0 ;
  wire \spo[4]_INST_0_i_23_n_0 ;
  wire \spo[4]_INST_0_i_24_n_0 ;
  wire \spo[4]_INST_0_i_25_n_0 ;
  wire \spo[4]_INST_0_i_26_n_0 ;
  wire \spo[4]_INST_0_i_27_n_0 ;
  wire \spo[4]_INST_0_i_28_n_0 ;
  wire \spo[4]_INST_0_i_29_n_0 ;
  wire \spo[4]_INST_0_i_2_n_0 ;
  wire \spo[4]_INST_0_i_30_n_0 ;
  wire \spo[4]_INST_0_i_31_n_0 ;
  wire \spo[4]_INST_0_i_32_n_0 ;
  wire \spo[4]_INST_0_i_33_n_0 ;
  wire \spo[4]_INST_0_i_34_n_0 ;
  wire \spo[4]_INST_0_i_35_n_0 ;
  wire \spo[4]_INST_0_i_36_n_0 ;
  wire \spo[4]_INST_0_i_3_n_0 ;
  wire \spo[4]_INST_0_i_4_n_0 ;
  wire \spo[4]_INST_0_i_5_n_0 ;
  wire \spo[4]_INST_0_i_6_n_0 ;
  wire \spo[4]_INST_0_i_7_n_0 ;
  wire \spo[4]_INST_0_i_8_n_0 ;
  wire \spo[4]_INST_0_i_9_n_0 ;
  wire \spo[5]_INST_0_i_10_n_0 ;
  wire \spo[5]_INST_0_i_11_n_0 ;
  wire \spo[5]_INST_0_i_12_n_0 ;
  wire \spo[5]_INST_0_i_13_n_0 ;
  wire \spo[5]_INST_0_i_14_n_0 ;
  wire \spo[5]_INST_0_i_15_n_0 ;
  wire \spo[5]_INST_0_i_16_n_0 ;
  wire \spo[5]_INST_0_i_17_n_0 ;
  wire \spo[5]_INST_0_i_18_n_0 ;
  wire \spo[5]_INST_0_i_19_n_0 ;
  wire \spo[5]_INST_0_i_1_n_0 ;
  wire \spo[5]_INST_0_i_20_n_0 ;
  wire \spo[5]_INST_0_i_21_n_0 ;
  wire \spo[5]_INST_0_i_22_n_0 ;
  wire \spo[5]_INST_0_i_23_n_0 ;
  wire \spo[5]_INST_0_i_24_n_0 ;
  wire \spo[5]_INST_0_i_25_n_0 ;
  wire \spo[5]_INST_0_i_26_n_0 ;
  wire \spo[5]_INST_0_i_27_n_0 ;
  wire \spo[5]_INST_0_i_28_n_0 ;
  wire \spo[5]_INST_0_i_29_n_0 ;
  wire \spo[5]_INST_0_i_2_n_0 ;
  wire \spo[5]_INST_0_i_30_n_0 ;
  wire \spo[5]_INST_0_i_31_n_0 ;
  wire \spo[5]_INST_0_i_32_n_0 ;
  wire \spo[5]_INST_0_i_33_n_0 ;
  wire \spo[5]_INST_0_i_34_n_0 ;
  wire \spo[5]_INST_0_i_35_n_0 ;
  wire \spo[5]_INST_0_i_36_n_0 ;
  wire \spo[5]_INST_0_i_37_n_0 ;
  wire \spo[5]_INST_0_i_38_n_0 ;
  wire \spo[5]_INST_0_i_39_n_0 ;
  wire \spo[5]_INST_0_i_3_n_0 ;
  wire \spo[5]_INST_0_i_40_n_0 ;
  wire \spo[5]_INST_0_i_41_n_0 ;
  wire \spo[5]_INST_0_i_42_n_0 ;
  wire \spo[5]_INST_0_i_43_n_0 ;
  wire \spo[5]_INST_0_i_44_n_0 ;
  wire \spo[5]_INST_0_i_45_n_0 ;
  wire \spo[5]_INST_0_i_46_n_0 ;
  wire \spo[5]_INST_0_i_47_n_0 ;
  wire \spo[5]_INST_0_i_48_n_0 ;
  wire \spo[5]_INST_0_i_49_n_0 ;
  wire \spo[5]_INST_0_i_4_n_0 ;
  wire \spo[5]_INST_0_i_50_n_0 ;
  wire \spo[5]_INST_0_i_51_n_0 ;
  wire \spo[5]_INST_0_i_52_n_0 ;
  wire \spo[5]_INST_0_i_53_n_0 ;
  wire \spo[5]_INST_0_i_54_n_0 ;
  wire \spo[5]_INST_0_i_55_n_0 ;
  wire \spo[5]_INST_0_i_56_n_0 ;
  wire \spo[5]_INST_0_i_57_n_0 ;
  wire \spo[5]_INST_0_i_58_n_0 ;
  wire \spo[5]_INST_0_i_5_n_0 ;
  wire \spo[5]_INST_0_i_6_n_0 ;
  wire \spo[5]_INST_0_i_7_n_0 ;
  wire \spo[5]_INST_0_i_8_n_0 ;
  wire \spo[5]_INST_0_i_9_n_0 ;
  wire \spo[6]_INST_0_i_10_n_0 ;
  wire \spo[6]_INST_0_i_11_n_0 ;
  wire \spo[6]_INST_0_i_12_n_0 ;
  wire \spo[6]_INST_0_i_13_n_0 ;
  wire \spo[6]_INST_0_i_14_n_0 ;
  wire \spo[6]_INST_0_i_15_n_0 ;
  wire \spo[6]_INST_0_i_16_n_0 ;
  wire \spo[6]_INST_0_i_17_n_0 ;
  wire \spo[6]_INST_0_i_18_n_0 ;
  wire \spo[6]_INST_0_i_19_n_0 ;
  wire \spo[6]_INST_0_i_1_n_0 ;
  wire \spo[6]_INST_0_i_20_n_0 ;
  wire \spo[6]_INST_0_i_21_n_0 ;
  wire \spo[6]_INST_0_i_22_n_0 ;
  wire \spo[6]_INST_0_i_23_n_0 ;
  wire \spo[6]_INST_0_i_24_n_0 ;
  wire \spo[6]_INST_0_i_25_n_0 ;
  wire \spo[6]_INST_0_i_26_n_0 ;
  wire \spo[6]_INST_0_i_27_n_0 ;
  wire \spo[6]_INST_0_i_28_n_0 ;
  wire \spo[6]_INST_0_i_29_n_0 ;
  wire \spo[6]_INST_0_i_2_n_0 ;
  wire \spo[6]_INST_0_i_30_n_0 ;
  wire \spo[6]_INST_0_i_31_n_0 ;
  wire \spo[6]_INST_0_i_32_n_0 ;
  wire \spo[6]_INST_0_i_33_n_0 ;
  wire \spo[6]_INST_0_i_34_n_0 ;
  wire \spo[6]_INST_0_i_35_n_0 ;
  wire \spo[6]_INST_0_i_36_n_0 ;
  wire \spo[6]_INST_0_i_37_n_0 ;
  wire \spo[6]_INST_0_i_38_n_0 ;
  wire \spo[6]_INST_0_i_39_n_0 ;
  wire \spo[6]_INST_0_i_3_n_0 ;
  wire \spo[6]_INST_0_i_40_n_0 ;
  wire \spo[6]_INST_0_i_41_n_0 ;
  wire \spo[6]_INST_0_i_42_n_0 ;
  wire \spo[6]_INST_0_i_43_n_0 ;
  wire \spo[6]_INST_0_i_44_n_0 ;
  wire \spo[6]_INST_0_i_45_n_0 ;
  wire \spo[6]_INST_0_i_46_n_0 ;
  wire \spo[6]_INST_0_i_47_n_0 ;
  wire \spo[6]_INST_0_i_48_n_0 ;
  wire \spo[6]_INST_0_i_49_n_0 ;
  wire \spo[6]_INST_0_i_4_n_0 ;
  wire \spo[6]_INST_0_i_50_n_0 ;
  wire \spo[6]_INST_0_i_51_n_0 ;
  wire \spo[6]_INST_0_i_52_n_0 ;
  wire \spo[6]_INST_0_i_53_n_0 ;
  wire \spo[6]_INST_0_i_54_n_0 ;
  wire \spo[6]_INST_0_i_55_n_0 ;
  wire \spo[6]_INST_0_i_56_n_0 ;
  wire \spo[6]_INST_0_i_57_n_0 ;
  wire \spo[6]_INST_0_i_58_n_0 ;
  wire \spo[6]_INST_0_i_59_n_0 ;
  wire \spo[6]_INST_0_i_5_n_0 ;
  wire \spo[6]_INST_0_i_60_n_0 ;
  wire \spo[6]_INST_0_i_61_n_0 ;
  wire \spo[6]_INST_0_i_62_n_0 ;
  wire \spo[6]_INST_0_i_63_n_0 ;
  wire \spo[6]_INST_0_i_64_n_0 ;
  wire \spo[6]_INST_0_i_65_n_0 ;
  wire \spo[6]_INST_0_i_66_n_0 ;
  wire \spo[6]_INST_0_i_67_n_0 ;
  wire \spo[6]_INST_0_i_68_n_0 ;
  wire \spo[6]_INST_0_i_69_n_0 ;
  wire \spo[6]_INST_0_i_6_n_0 ;
  wire \spo[6]_INST_0_i_70_n_0 ;
  wire \spo[6]_INST_0_i_71_n_0 ;
  wire \spo[6]_INST_0_i_7_n_0 ;
  wire \spo[6]_INST_0_i_8_n_0 ;
  wire \spo[6]_INST_0_i_9_n_0 ;
  wire \spo[7]_INST_0_i_10_n_0 ;
  wire \spo[7]_INST_0_i_11_n_0 ;
  wire \spo[7]_INST_0_i_12_n_0 ;
  wire \spo[7]_INST_0_i_13_n_0 ;
  wire \spo[7]_INST_0_i_14_n_0 ;
  wire \spo[7]_INST_0_i_15_n_0 ;
  wire \spo[7]_INST_0_i_16_n_0 ;
  wire \spo[7]_INST_0_i_17_n_0 ;
  wire \spo[7]_INST_0_i_18_n_0 ;
  wire \spo[7]_INST_0_i_19_n_0 ;
  wire \spo[7]_INST_0_i_1_n_0 ;
  wire \spo[7]_INST_0_i_20_n_0 ;
  wire \spo[7]_INST_0_i_21_n_0 ;
  wire \spo[7]_INST_0_i_22_n_0 ;
  wire \spo[7]_INST_0_i_23_n_0 ;
  wire \spo[7]_INST_0_i_24_n_0 ;
  wire \spo[7]_INST_0_i_25_n_0 ;
  wire \spo[7]_INST_0_i_26_n_0 ;
  wire \spo[7]_INST_0_i_27_n_0 ;
  wire \spo[7]_INST_0_i_28_n_0 ;
  wire \spo[7]_INST_0_i_29_n_0 ;
  wire \spo[7]_INST_0_i_2_n_0 ;
  wire \spo[7]_INST_0_i_30_n_0 ;
  wire \spo[7]_INST_0_i_31_n_0 ;
  wire \spo[7]_INST_0_i_32_n_0 ;
  wire \spo[7]_INST_0_i_33_n_0 ;
  wire \spo[7]_INST_0_i_34_n_0 ;
  wire \spo[7]_INST_0_i_35_n_0 ;
  wire \spo[7]_INST_0_i_36_n_0 ;
  wire \spo[7]_INST_0_i_37_n_0 ;
  wire \spo[7]_INST_0_i_38_n_0 ;
  wire \spo[7]_INST_0_i_39_n_0 ;
  wire \spo[7]_INST_0_i_3_n_0 ;
  wire \spo[7]_INST_0_i_40_n_0 ;
  wire \spo[7]_INST_0_i_41_n_0 ;
  wire \spo[7]_INST_0_i_42_n_0 ;
  wire \spo[7]_INST_0_i_43_n_0 ;
  wire \spo[7]_INST_0_i_44_n_0 ;
  wire \spo[7]_INST_0_i_45_n_0 ;
  wire \spo[7]_INST_0_i_46_n_0 ;
  wire \spo[7]_INST_0_i_47_n_0 ;
  wire \spo[7]_INST_0_i_48_n_0 ;
  wire \spo[7]_INST_0_i_49_n_0 ;
  wire \spo[7]_INST_0_i_4_n_0 ;
  wire \spo[7]_INST_0_i_50_n_0 ;
  wire \spo[7]_INST_0_i_51_n_0 ;
  wire \spo[7]_INST_0_i_52_n_0 ;
  wire \spo[7]_INST_0_i_53_n_0 ;
  wire \spo[7]_INST_0_i_54_n_0 ;
  wire \spo[7]_INST_0_i_55_n_0 ;
  wire \spo[7]_INST_0_i_56_n_0 ;
  wire \spo[7]_INST_0_i_5_n_0 ;
  wire \spo[7]_INST_0_i_6_n_0 ;
  wire \spo[7]_INST_0_i_7_n_0 ;
  wire \spo[7]_INST_0_i_8_n_0 ;
  wire \spo[7]_INST_0_i_9_n_0 ;

  assign dpo[7] = \<const0> ;
  assign dpo[6] = \<const0> ;
  assign dpo[5] = \<const0> ;
  assign dpo[4] = \<const0> ;
  assign dpo[3] = \<const0> ;
  assign dpo[2] = \<const0> ;
  assign dpo[1] = \<const0> ;
  assign dpo[0] = \<const0> ;
  assign qdpo[7] = \<const0> ;
  assign qdpo[6] = \<const0> ;
  assign qdpo[5] = \<const0> ;
  assign qdpo[4] = \<const0> ;
  assign qdpo[3] = \<const0> ;
  assign qdpo[2] = \<const0> ;
  assign qdpo[1] = \<const0> ;
  assign qdpo[0] = \<const0> ;
  assign qspo[7] = \<const0> ;
  assign qspo[6] = \<const0> ;
  assign qspo[5] = \<const0> ;
  assign qspo[4] = \<const0> ;
  assign qspo[3] = \<const0> ;
  assign qspo[2] = \<const0> ;
  assign qspo[1] = \<const0> ;
  assign qspo[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'hFFF0EFEFFFF0E0E0)) 
    \spo[0]_INST_0 
       (.I0(a[10]),
        .I1(\spo[0]_INST_0_i_1_n_0 ),
        .I2(a[12]),
        .I3(\spo[0]_INST_0_i_2_n_0 ),
        .I4(a[11]),
        .I5(\spo[6]_INST_0_i_3_n_0 ),
        .O(spo[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFFEFAA)) 
    \spo[0]_INST_0_i_1 
       (.I0(a[8]),
        .I1(\spo[0]_INST_0_i_3_n_0 ),
        .I2(a[4]),
        .I3(a[6]),
        .I4(\spo[0]_INST_0_i_4_n_0 ),
        .I5(a[9]),
        .O(\spo[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFCF9FFFFF0FF0)) 
    \spo[0]_INST_0_i_10 
       (.I0(a[7]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[2]),
        .O(\spo[0]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_11 
       (.I0(\spo[0]_INST_0_i_20_n_0 ),
        .I1(\spo[6]_INST_0_i_29_n_0 ),
        .I2(a[6]),
        .I3(\spo[0]_INST_0_i_21_n_0 ),
        .I4(a[4]),
        .I5(\spo[0]_INST_0_i_22_n_0 ),
        .O(\spo[0]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_12 
       (.I0(\spo[0]_INST_0_i_23_n_0 ),
        .I1(\spo[6]_INST_0_i_33_n_0 ),
        .I2(a[6]),
        .I3(\spo[0]_INST_0_i_24_n_0 ),
        .I4(a[4]),
        .I5(\spo[0]_INST_0_i_25_n_0 ),
        .O(\spo[0]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_13 
       (.I0(\spo[0]_INST_0_i_26_n_0 ),
        .I1(\spo[6]_INST_0_i_37_n_0 ),
        .I2(a[6]),
        .I3(\spo[0]_INST_0_i_27_n_0 ),
        .I4(a[4]),
        .I5(\spo[0]_INST_0_i_28_n_0 ),
        .O(\spo[0]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_14 
       (.I0(\spo[0]_INST_0_i_29_n_0 ),
        .I1(\spo[6]_INST_0_i_41_n_0 ),
        .I2(a[6]),
        .I3(\spo[0]_INST_0_i_30_n_0 ),
        .I4(a[4]),
        .I5(\spo[0]_INST_0_i_31_n_0 ),
        .O(\spo[0]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBFFFFB8BBCCCC)) 
    \spo[0]_INST_0_i_15 
       (.I0(\spo[0]_INST_0_i_32_n_0 ),
        .I1(a[6]),
        .I2(\spo[0]_INST_0_i_33_n_0 ),
        .I3(a[3]),
        .I4(a[4]),
        .I5(\spo[0]_INST_0_i_34_n_0 ),
        .O(\spo[0]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_16 
       (.I0(\spo[0]_INST_0_i_35_n_0 ),
        .I1(\spo[6]_INST_0_i_48_n_0 ),
        .I2(a[6]),
        .I3(\spo[0]_INST_0_i_36_n_0 ),
        .I4(a[4]),
        .I5(\spo[0]_INST_0_i_37_n_0 ),
        .O(\spo[0]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFB5FAD5FFFDFFD5)) 
    \spo[0]_INST_0_i_17 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[7]),
        .O(\spo[0]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFDFDFDFFFFFFFFF)) 
    \spo[0]_INST_0_i_18 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[0]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFFFFFFFFFF)) 
    \spo[0]_INST_0_i_19 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[7]),
        .I5(a[3]),
        .O(\spo[0]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_2 
       (.I0(\spo[0]_INST_0_i_5_n_0 ),
        .I1(\spo[0]_INST_0_i_6_n_0 ),
        .I2(a[10]),
        .I3(\spo[0]_INST_0_i_7_n_0 ),
        .I4(a[9]),
        .I5(\spo[0]_INST_0_i_8_n_0 ),
        .O(\spo[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEF6FFFEF7F7F7F7)) 
    \spo[0]_INST_0_i_20 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[7]),
        .I5(a[2]),
        .O(\spo[0]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hBB77DD77EEFF7666)) 
    \spo[0]_INST_0_i_21 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFBAA0FFFB1FF0AFF)) 
    \spo[0]_INST_0_i_22 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFF21FF13FFF9FF53)) 
    \spo[0]_INST_0_i_23 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[7]),
        .O(\spo[0]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h3BDD1E773775CFFF)) 
    \spo[0]_INST_0_i_24 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[0]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h722A10FF31FF00FF)) 
    \spo[0]_INST_0_i_25 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEA05FFFF1F05)) 
    \spo[0]_INST_0_i_26 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[0]),
        .O(\spo[0]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hCF3F33F3FCFF7C3C)) 
    \spo[0]_INST_0_i_27 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFFE7EAE21397735B)) 
    \spo[0]_INST_0_i_28 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[7]),
        .I5(a[5]),
        .O(\spo[0]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hFFC5FF5BFF73FF11)) 
    \spo[0]_INST_0_i_29 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[7]),
        .O(\spo[0]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0403FFFF0B4F)) 
    \spo[0]_INST_0_i_3 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[0]),
        .O(\spo[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3BD5777DEF6EFE6E)) 
    \spo[0]_INST_0_i_30 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[5]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hEFB76662737BB33B)) 
    \spo[0]_INST_0_i_31 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[7]),
        .I5(a[5]),
        .O(\spo[0]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hFF99FF15FF89FF13)) 
    \spo[0]_INST_0_i_32 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[7]),
        .O(\spo[0]_INST_0_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hCD)) 
    \spo[0]_INST_0_i_33 
       (.I0(a[2]),
        .I1(a[5]),
        .I2(a[1]),
        .O(\spo[0]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF400FFFFF0F0F)) 
    \spo[0]_INST_0_i_34 
       (.I0(a[7]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[2]),
        .O(\spo[0]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8800FFFF40FF)) 
    \spo[0]_INST_0_i_35 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[7]),
        .I3(a[3]),
        .I4(a[5]),
        .I5(a[2]),
        .O(\spo[0]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hB3DDE17773DDFC77)) 
    \spo[0]_INST_0_i_36 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[0]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hE5E65571A6673313)) 
    \spo[0]_INST_0_i_37 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_37_n_0 ));
  MUXF7 \spo[0]_INST_0_i_4 
       (.I0(\spo[0]_INST_0_i_9_n_0 ),
        .I1(\spo[0]_INST_0_i_10_n_0 ),
        .O(\spo[0]_INST_0_i_4_n_0 ),
        .S(a[4]));
  MUXF7 \spo[0]_INST_0_i_5 
       (.I0(\spo[0]_INST_0_i_11_n_0 ),
        .I1(\spo[0]_INST_0_i_12_n_0 ),
        .O(\spo[0]_INST_0_i_5_n_0 ),
        .S(a[8]));
  MUXF7 \spo[0]_INST_0_i_6 
       (.I0(\spo[0]_INST_0_i_13_n_0 ),
        .I1(\spo[0]_INST_0_i_14_n_0 ),
        .O(\spo[0]_INST_0_i_6_n_0 ),
        .S(a[8]));
  MUXF7 \spo[0]_INST_0_i_7 
       (.I0(\spo[0]_INST_0_i_15_n_0 ),
        .I1(\spo[0]_INST_0_i_16_n_0 ),
        .O(\spo[0]_INST_0_i_7_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'hFFE233E2FFFFFFFF)) 
    \spo[0]_INST_0_i_8 
       (.I0(\spo[0]_INST_0_i_17_n_0 ),
        .I1(a[4]),
        .I2(\spo[0]_INST_0_i_18_n_0 ),
        .I3(a[6]),
        .I4(\spo[0]_INST_0_i_19_n_0 ),
        .I5(a[8]),
        .O(\spo[0]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFEE7557EEEF9359)) 
    \spo[0]_INST_0_i_9 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0EFEFFFF0E0E0)) 
    \spo[1]_INST_0 
       (.I0(a[10]),
        .I1(\spo[1]_INST_0_i_1_n_0 ),
        .I2(a[12]),
        .I3(\spo[1]_INST_0_i_2_n_0 ),
        .I4(a[11]),
        .I5(\spo[6]_INST_0_i_3_n_0 ),
        .O(spo[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFFEFAA)) 
    \spo[1]_INST_0_i_1 
       (.I0(a[8]),
        .I1(\spo[1]_INST_0_i_3_n_0 ),
        .I2(a[4]),
        .I3(a[6]),
        .I4(\spo[1]_INST_0_i_4_n_0 ),
        .I5(a[9]),
        .O(\spo[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFDFFFDFDF6F6F7F6)) 
    \spo[1]_INST_0_i_10 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[5]),
        .I3(a[7]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[1]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_11 
       (.I0(\spo[1]_INST_0_i_19_n_0 ),
        .I1(\spo[6]_INST_0_i_29_n_0 ),
        .I2(a[6]),
        .I3(\spo[1]_INST_0_i_20_n_0 ),
        .I4(a[4]),
        .I5(\spo[1]_INST_0_i_21_n_0 ),
        .O(\spo[1]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_12 
       (.I0(\spo[1]_INST_0_i_22_n_0 ),
        .I1(\spo[6]_INST_0_i_33_n_0 ),
        .I2(a[6]),
        .I3(\spo[1]_INST_0_i_23_n_0 ),
        .I4(a[4]),
        .I5(\spo[1]_INST_0_i_24_n_0 ),
        .O(\spo[1]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_13 
       (.I0(\spo[1]_INST_0_i_25_n_0 ),
        .I1(\spo[6]_INST_0_i_37_n_0 ),
        .I2(a[6]),
        .I3(\spo[1]_INST_0_i_26_n_0 ),
        .I4(a[4]),
        .I5(\spo[1]_INST_0_i_27_n_0 ),
        .O(\spo[1]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_14 
       (.I0(\spo[1]_INST_0_i_28_n_0 ),
        .I1(\spo[6]_INST_0_i_41_n_0 ),
        .I2(a[6]),
        .I3(\spo[1]_INST_0_i_29_n_0 ),
        .I4(a[4]),
        .I5(\spo[1]_INST_0_i_30_n_0 ),
        .O(\spo[1]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB8CC)) 
    \spo[1]_INST_0_i_15 
       (.I0(\spo[4]_INST_0_i_31_n_0 ),
        .I1(a[6]),
        .I2(\spo[4]_INST_0_i_32_n_0 ),
        .I3(a[4]),
        .I4(\spo[1]_INST_0_i_31_n_0 ),
        .O(\spo[1]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_16 
       (.I0(\spo[4]_INST_0_i_34_n_0 ),
        .I1(\spo[6]_INST_0_i_48_n_0 ),
        .I2(a[6]),
        .I3(\spo[1]_INST_0_i_32_n_0 ),
        .I4(a[4]),
        .I5(\spo[1]_INST_0_i_33_n_0 ),
        .O(\spo[1]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7F3FFFFF3FF0)) 
    \spo[1]_INST_0_i_17 
       (.I0(a[0]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[2]),
        .O(\spo[1]_INST_0_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFB0FF0F)) 
    \spo[1]_INST_0_i_18 
       (.I0(a[1]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[5]),
        .I4(a[2]),
        .O(\spo[1]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFCC8FFFFF83C3)) 
    \spo[1]_INST_0_i_19 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[0]),
        .O(\spo[1]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_2 
       (.I0(\spo[1]_INST_0_i_5_n_0 ),
        .I1(\spo[1]_INST_0_i_6_n_0 ),
        .I2(a[10]),
        .I3(\spo[1]_INST_0_i_7_n_0 ),
        .I4(a[9]),
        .I5(\spo[1]_INST_0_i_8_n_0 ),
        .O(\spo[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBB77DDDDEEFFEFEE)) 
    \spo[1]_INST_0_i_20 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hF0D0F0C0F5F5F5F5)) 
    \spo[1]_INST_0_i_21 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[5]),
        .I3(a[0]),
        .I4(a[7]),
        .I5(a[2]),
        .O(\spo[1]_INST_0_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFF83FFB9)) 
    \spo[1]_INST_0_i_22 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[0]),
        .O(\spo[1]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h3B37DDDD1ECFEE66)) 
    \spo[1]_INST_0_i_23 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h3300F8007F33FF33)) 
    \spo[1]_INST_0_i_24 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[7]),
        .I5(a[2]),
        .O(\spo[1]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFF01FF3BFF73FF3B)) 
    \spo[1]_INST_0_i_25 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[7]),
        .O(\spo[1]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hCF3FF333FCFFBCBC)) 
    \spo[1]_INST_0_i_26 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hE7A9F721F1F1F371)) 
    \spo[1]_INST_0_i_27 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[7]),
        .O(\spo[1]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF088FFFFF0BC3)) 
    \spo[1]_INST_0_i_28 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[0]),
        .O(\spo[1]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h3BDD77D5EFF6FEE6)) 
    \spo[1]_INST_0_i_29 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[5]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF480FFFFF0703)) 
    \spo[1]_INST_0_i_3 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[0]),
        .O(\spo[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF8304078FFFF3333)) 
    \spo[1]_INST_0_i_30 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[7]),
        .I4(a[5]),
        .I5(a[2]),
        .O(\spo[1]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEEEEE11111111)) 
    \spo[1]_INST_0_i_31 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[1]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hB3557355E1EEFC66)) 
    \spo[1]_INST_0_i_32 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[5]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hF1F1F13741717125)) 
    \spo[1]_INST_0_i_33 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[7]),
        .O(\spo[1]_INST_0_i_33_n_0 ));
  MUXF7 \spo[1]_INST_0_i_4 
       (.I0(\spo[1]_INST_0_i_9_n_0 ),
        .I1(\spo[1]_INST_0_i_10_n_0 ),
        .O(\spo[1]_INST_0_i_4_n_0 ),
        .S(a[4]));
  MUXF7 \spo[1]_INST_0_i_5 
       (.I0(\spo[1]_INST_0_i_11_n_0 ),
        .I1(\spo[1]_INST_0_i_12_n_0 ),
        .O(\spo[1]_INST_0_i_5_n_0 ),
        .S(a[8]));
  MUXF7 \spo[1]_INST_0_i_6 
       (.I0(\spo[1]_INST_0_i_13_n_0 ),
        .I1(\spo[1]_INST_0_i_14_n_0 ),
        .O(\spo[1]_INST_0_i_6_n_0 ),
        .S(a[8]));
  MUXF7 \spo[1]_INST_0_i_7 
       (.I0(\spo[1]_INST_0_i_15_n_0 ),
        .I1(\spo[1]_INST_0_i_16_n_0 ),
        .O(\spo[1]_INST_0_i_7_n_0 ),
        .S(a[8]));
  LUT5 #(
    .INIT(32'hEFEAFFFF)) 
    \spo[1]_INST_0_i_8 
       (.I0(a[6]),
        .I1(\spo[1]_INST_0_i_17_n_0 ),
        .I2(a[4]),
        .I3(\spo[1]_INST_0_i_18_n_0 ),
        .I4(a[8]),
        .O(\spo[1]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFAEF85E5EFEF85D5)) 
    \spo[1]_INST_0_i_9 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[0]),
        .O(\spo[1]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF00E200E200)) 
    \spo[2]_INST_0 
       (.I0(\spo[2]_INST_0_i_1_n_0 ),
        .I1(a[10]),
        .I2(\spo[2]_INST_0_i_2_n_0 ),
        .I3(a[12]),
        .I4(\spo[2]_INST_0_i_3_n_0 ),
        .I5(a[11]),
        .O(spo[2]));
  LUT6 #(
    .INIT(64'h0000000040554000)) 
    \spo[2]_INST_0_i_1 
       (.I0(a[8]),
        .I1(\spo[2]_INST_0_i_4_n_0 ),
        .I2(a[4]),
        .I3(a[6]),
        .I4(\spo[2]_INST_0_i_5_n_0 ),
        .I5(a[9]),
        .O(\spo[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1114066214054E6C)) 
    \spo[2]_INST_0_i_10 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0808000009010809)) 
    \spo[2]_INST_0_i_11 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[5]),
        .I3(a[7]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[2]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \spo[2]_INST_0_i_12 
       (.I0(\spo[2]_INST_0_i_20_n_0 ),
        .I1(a[6]),
        .I2(\spo[2]_INST_0_i_21_n_0 ),
        .I3(a[4]),
        .I4(\spo[2]_INST_0_i_22_n_0 ),
        .O(\spo[2]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \spo[2]_INST_0_i_13 
       (.I0(\spo[2]_INST_0_i_23_n_0 ),
        .I1(a[6]),
        .I2(\spo[2]_INST_0_i_24_n_0 ),
        .I3(a[4]),
        .I4(\spo[2]_INST_0_i_25_n_0 ),
        .O(\spo[2]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \spo[2]_INST_0_i_14 
       (.I0(\spo[2]_INST_0_i_26_n_0 ),
        .I1(a[6]),
        .I2(\spo[2]_INST_0_i_27_n_0 ),
        .I3(a[4]),
        .I4(\spo[2]_INST_0_i_28_n_0 ),
        .O(\spo[2]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \spo[2]_INST_0_i_15 
       (.I0(\spo[2]_INST_0_i_29_n_0 ),
        .I1(a[6]),
        .I2(\spo[2]_INST_0_i_30_n_0 ),
        .I3(a[4]),
        .I4(\spo[2]_INST_0_i_31_n_0 ),
        .O(\spo[2]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \spo[2]_INST_0_i_16 
       (.I0(\spo[2]_INST_0_i_32_n_0 ),
        .I1(a[6]),
        .I2(\spo[2]_INST_0_i_33_n_0 ),
        .I3(a[4]),
        .I4(\spo[2]_INST_0_i_34_n_0 ),
        .O(\spo[2]_INST_0_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \spo[2]_INST_0_i_17 
       (.I0(\spo[2]_INST_0_i_35_n_0 ),
        .I1(a[6]),
        .I2(\spo[2]_INST_0_i_36_n_0 ),
        .I3(a[4]),
        .I4(\spo[2]_INST_0_i_37_n_0 ),
        .O(\spo[2]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h15A0548800EA0088)) 
    \spo[2]_INST_0_i_18 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[0]),
        .I5(a[7]),
        .O(\spo[2]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0A0000000A050004)) 
    \spo[2]_INST_0_i_19 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[7]),
        .I5(a[2]),
        .O(\spo[2]_INST_0_i_19_n_0 ));
  MUXF7 \spo[2]_INST_0_i_2 
       (.I0(\spo[7]_INST_0_i_7_n_0 ),
        .I1(\spo[7]_INST_0_i_8_n_0 ),
        .O(\spo[2]_INST_0_i_2_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'h00F7009800900030)) 
    \spo[2]_INST_0_i_20 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0802080A0A050A04)) 
    \spo[2]_INST_0_i_21 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[7]),
        .I5(a[2]),
        .O(\spo[2]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0051451100EE6AC0)) 
    \spo[2]_INST_0_i_22 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[2]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h00F5008A006000EA)) 
    \spo[2]_INST_0_i_23 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h00A8000000040020)) 
    \spo[2]_INST_0_i_24 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[2]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0140006241550E8C)) 
    \spo[2]_INST_0_i_25 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h1133233122200220)) 
    \spo[2]_INST_0_i_26 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[7]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[2]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0048000800CC0003)) 
    \spo[2]_INST_0_i_27 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[7]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[2]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h140464205455E06E)) 
    \spo[2]_INST_0_i_28 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[7]),
        .I4(a[5]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h08080E0008080800)) 
    \spo[2]_INST_0_i_29 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[2]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_3 
       (.I0(\spo[2]_INST_0_i_6_n_0 ),
        .I1(\spo[2]_INST_0_i_7_n_0 ),
        .I2(a[10]),
        .I3(\spo[2]_INST_0_i_8_n_0 ),
        .I4(a[9]),
        .I5(\spo[2]_INST_0_i_9_n_0 ),
        .O(\spo[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00A80028000100A0)) 
    \spo[2]_INST_0_i_30 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[2]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h01046AEE5051EA2E)) 
    \spo[2]_INST_0_i_31 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h1555555100000000)) 
    \spo[2]_INST_0_i_32 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[7]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[2]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h000010600000B00F)) 
    \spo[2]_INST_0_i_33 
       (.I0(a[0]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[2]),
        .O(\spo[2]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h0154A0E84454E480)) 
    \spo[2]_INST_0_i_34 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h000000004FFF4300)) 
    \spo[2]_INST_0_i_35 
       (.I0(a[7]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[2]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h00C4004000080030)) 
    \spo[2]_INST_0_i_36 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[2]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h1055620451102A6C)) 
    \spo[2]_INST_0_i_37 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h3232221202220202)) 
    \spo[2]_INST_0_i_4 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[7]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[2]_INST_0_i_4_n_0 ));
  MUXF7 \spo[2]_INST_0_i_5 
       (.I0(\spo[2]_INST_0_i_10_n_0 ),
        .I1(\spo[2]_INST_0_i_11_n_0 ),
        .O(\spo[2]_INST_0_i_5_n_0 ),
        .S(a[4]));
  MUXF7 \spo[2]_INST_0_i_6 
       (.I0(\spo[2]_INST_0_i_12_n_0 ),
        .I1(\spo[2]_INST_0_i_13_n_0 ),
        .O(\spo[2]_INST_0_i_6_n_0 ),
        .S(a[8]));
  MUXF7 \spo[2]_INST_0_i_7 
       (.I0(\spo[2]_INST_0_i_14_n_0 ),
        .I1(\spo[2]_INST_0_i_15_n_0 ),
        .O(\spo[2]_INST_0_i_7_n_0 ),
        .S(a[8]));
  MUXF7 \spo[2]_INST_0_i_8 
       (.I0(\spo[2]_INST_0_i_16_n_0 ),
        .I1(\spo[2]_INST_0_i_17_n_0 ),
        .O(\spo[2]_INST_0_i_8_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'hCCE200E200000000)) 
    \spo[2]_INST_0_i_9 
       (.I0(\spo[2]_INST_0_i_18_n_0 ),
        .I1(a[4]),
        .I2(\spo[2]_INST_0_i_19_n_0 ),
        .I3(a[6]),
        .I4(\spo[5]_INST_0_i_11_n_0 ),
        .I5(a[8]),
        .O(\spo[2]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0EFEFFFF0E0E0)) 
    \spo[3]_INST_0 
       (.I0(a[10]),
        .I1(\spo[3]_INST_0_i_1_n_0 ),
        .I2(a[12]),
        .I3(\spo[3]_INST_0_i_2_n_0 ),
        .I4(a[11]),
        .I5(\spo[6]_INST_0_i_3_n_0 ),
        .O(spo[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFFEFAA)) 
    \spo[3]_INST_0_i_1 
       (.I0(a[8]),
        .I1(\spo[3]_INST_0_i_3_n_0 ),
        .I2(a[4]),
        .I3(a[6]),
        .I4(\spo[3]_INST_0_i_4_n_0 ),
        .I5(a[9]),
        .O(\spo[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7F7F7F7F6F6F7F6)) 
    \spo[3]_INST_0_i_10 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[5]),
        .I3(a[7]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[3]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_11 
       (.I0(\spo[3]_INST_0_i_19_n_0 ),
        .I1(\spo[6]_INST_0_i_29_n_0 ),
        .I2(a[6]),
        .I3(\spo[3]_INST_0_i_20_n_0 ),
        .I4(a[4]),
        .I5(\spo[3]_INST_0_i_21_n_0 ),
        .O(\spo[3]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_12 
       (.I0(\spo[3]_INST_0_i_22_n_0 ),
        .I1(\spo[6]_INST_0_i_33_n_0 ),
        .I2(a[6]),
        .I3(\spo[3]_INST_0_i_23_n_0 ),
        .I4(a[4]),
        .I5(\spo[3]_INST_0_i_24_n_0 ),
        .O(\spo[3]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_13 
       (.I0(\spo[3]_INST_0_i_25_n_0 ),
        .I1(\spo[6]_INST_0_i_37_n_0 ),
        .I2(a[6]),
        .I3(\spo[3]_INST_0_i_26_n_0 ),
        .I4(a[4]),
        .I5(\spo[3]_INST_0_i_27_n_0 ),
        .O(\spo[3]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_14 
       (.I0(\spo[3]_INST_0_i_28_n_0 ),
        .I1(\spo[6]_INST_0_i_41_n_0 ),
        .I2(a[6]),
        .I3(\spo[3]_INST_0_i_29_n_0 ),
        .I4(a[4]),
        .I5(\spo[3]_INST_0_i_30_n_0 ),
        .O(\spo[3]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB8CC)) 
    \spo[3]_INST_0_i_15 
       (.I0(\spo[3]_INST_0_i_31_n_0 ),
        .I1(a[6]),
        .I2(\spo[3]_INST_0_i_32_n_0 ),
        .I3(a[4]),
        .I4(\spo[3]_INST_0_i_33_n_0 ),
        .O(\spo[3]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_16 
       (.I0(\spo[3]_INST_0_i_34_n_0 ),
        .I1(\spo[6]_INST_0_i_48_n_0 ),
        .I2(a[6]),
        .I3(\spo[3]_INST_0_i_35_n_0 ),
        .I4(a[4]),
        .I5(\spo[3]_INST_0_i_36_n_0 ),
        .O(\spo[3]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7FF7FFF7FFF7E)) 
    \spo[3]_INST_0_i_17 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[3]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFA5FA85FFEFFF87)) 
    \spo[3]_INST_0_i_18 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[7]),
        .O(\spo[3]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hF9FFF9FEFFFFFFFF)) 
    \spo[3]_INST_0_i_19 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[5]),
        .I3(a[0]),
        .I4(a[7]),
        .I5(a[2]),
        .O(\spo[3]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_2 
       (.I0(\spo[3]_INST_0_i_5_n_0 ),
        .I1(\spo[3]_INST_0_i_6_n_0 ),
        .I2(a[10]),
        .I3(\spo[3]_INST_0_i_7_n_0 ),
        .I4(a[9]),
        .I5(\spo[3]_INST_0_i_8_n_0 ),
        .O(\spo[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBB775577EEFF7EE6)) 
    \spo[3]_INST_0_i_20 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[3]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFBABA0A5F05E53F)) 
    \spo[3]_INST_0_i_21 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[3]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFF23FF31FFBFFFF5)) 
    \spo[3]_INST_0_i_22 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[7]),
        .O(\spo[3]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h35B51FE63775CFFF)) 
    \spo[3]_INST_0_i_23 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[5]),
        .I3(a[7]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[3]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h72212AAA5144F5DF)) 
    \spo[3]_INST_0_i_24 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[3]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFCF4F0F6FDFDFFFF)) 
    \spo[3]_INST_0_i_25 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[5]),
        .I3(a[0]),
        .I4(a[7]),
        .I5(a[2]),
        .O(\spo[3]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hBB77D5D5EEFF7E7E)) 
    \spo[3]_INST_0_i_26 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[3]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hFEEBEE62119191DB)) 
    \spo[3]_INST_0_i_27 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[3]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFFC7FF3CFF37FF7F)) 
    \spo[3]_INST_0_i_28 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[3]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h3B75777DEF76FE66)) 
    \spo[3]_INST_0_i_29 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[5]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[3]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0C0FFFFF4F43)) 
    \spo[3]_INST_0_i_3 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[0]),
        .O(\spo[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFDA5A5A4535C547)) 
    \spo[3]_INST_0_i_30 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[7]),
        .I5(a[5]),
        .O(\spo[3]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFFDDFF15FFC9FF33)) 
    \spo[3]_INST_0_i_31 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[7]),
        .O(\spo[3]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hFEEDDDFDFFFFFFFF)) 
    \spo[3]_INST_0_i_32 
       (.I0(a[1]),
        .I1(a[5]),
        .I2(a[7]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[3]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hEFFF5151EEFF1131)) 
    \spo[3]_INST_0_i_33 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[0]),
        .O(\spo[3]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF000FFFFBCFF)) 
    \spo[3]_INST_0_i_34 
       (.I0(a[7]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[5]),
        .I5(a[2]),
        .O(\spo[3]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hBF3FEF17753FFECE)) 
    \spo[3]_INST_0_i_35 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[5]),
        .I3(a[7]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[3]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hDD908AAA00005775)) 
    \spo[3]_INST_0_i_36 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[3]_INST_0_i_36_n_0 ));
  MUXF7 \spo[3]_INST_0_i_4 
       (.I0(\spo[3]_INST_0_i_9_n_0 ),
        .I1(\spo[3]_INST_0_i_10_n_0 ),
        .O(\spo[3]_INST_0_i_4_n_0 ),
        .S(a[4]));
  MUXF7 \spo[3]_INST_0_i_5 
       (.I0(\spo[3]_INST_0_i_11_n_0 ),
        .I1(\spo[3]_INST_0_i_12_n_0 ),
        .O(\spo[3]_INST_0_i_5_n_0 ),
        .S(a[8]));
  MUXF7 \spo[3]_INST_0_i_6 
       (.I0(\spo[3]_INST_0_i_13_n_0 ),
        .I1(\spo[3]_INST_0_i_14_n_0 ),
        .O(\spo[3]_INST_0_i_6_n_0 ),
        .S(a[8]));
  MUXF7 \spo[3]_INST_0_i_7 
       (.I0(\spo[3]_INST_0_i_15_n_0 ),
        .I1(\spo[3]_INST_0_i_16_n_0 ),
        .O(\spo[3]_INST_0_i_7_n_0 ),
        .S(a[8]));
  LUT5 #(
    .INIT(32'hEFEAFFFF)) 
    \spo[3]_INST_0_i_8 
       (.I0(a[6]),
        .I1(\spo[3]_INST_0_i_17_n_0 ),
        .I2(a[4]),
        .I3(\spo[3]_INST_0_i_18_n_0 ),
        .I4(a[8]),
        .O(\spo[3]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFEEEB951B73B)) 
    \spo[3]_INST_0_i_9 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[7]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[3]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0EFEFFFF0E0E0)) 
    \spo[4]_INST_0 
       (.I0(a[10]),
        .I1(\spo[4]_INST_0_i_1_n_0 ),
        .I2(a[12]),
        .I3(\spo[4]_INST_0_i_2_n_0 ),
        .I4(a[11]),
        .I5(\spo[6]_INST_0_i_3_n_0 ),
        .O(spo[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFFEFAA)) 
    \spo[4]_INST_0_i_1 
       (.I0(a[8]),
        .I1(\spo[4]_INST_0_i_3_n_0 ),
        .I2(a[4]),
        .I3(a[6]),
        .I4(\spo[4]_INST_0_i_4_n_0 ),
        .I5(a[9]),
        .O(\spo[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFDFDFDFDF6F6F7F6)) 
    \spo[4]_INST_0_i_10 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[5]),
        .I3(a[7]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[4]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_11 
       (.I0(\spo[4]_INST_0_i_19_n_0 ),
        .I1(\spo[6]_INST_0_i_29_n_0 ),
        .I2(a[6]),
        .I3(\spo[4]_INST_0_i_20_n_0 ),
        .I4(a[4]),
        .I5(\spo[4]_INST_0_i_21_n_0 ),
        .O(\spo[4]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_12 
       (.I0(\spo[4]_INST_0_i_22_n_0 ),
        .I1(\spo[6]_INST_0_i_33_n_0 ),
        .I2(a[6]),
        .I3(\spo[4]_INST_0_i_23_n_0 ),
        .I4(a[4]),
        .I5(\spo[4]_INST_0_i_24_n_0 ),
        .O(\spo[4]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_13 
       (.I0(\spo[4]_INST_0_i_25_n_0 ),
        .I1(\spo[6]_INST_0_i_37_n_0 ),
        .I2(a[6]),
        .I3(\spo[4]_INST_0_i_26_n_0 ),
        .I4(a[4]),
        .I5(\spo[4]_INST_0_i_27_n_0 ),
        .O(\spo[4]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_14 
       (.I0(\spo[4]_INST_0_i_28_n_0 ),
        .I1(\spo[6]_INST_0_i_41_n_0 ),
        .I2(a[6]),
        .I3(\spo[4]_INST_0_i_29_n_0 ),
        .I4(a[4]),
        .I5(\spo[4]_INST_0_i_30_n_0 ),
        .O(\spo[4]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB8CC)) 
    \spo[4]_INST_0_i_15 
       (.I0(\spo[4]_INST_0_i_31_n_0 ),
        .I1(a[6]),
        .I2(\spo[4]_INST_0_i_32_n_0 ),
        .I3(a[4]),
        .I4(\spo[4]_INST_0_i_33_n_0 ),
        .O(\spo[4]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_16 
       (.I0(\spo[4]_INST_0_i_34_n_0 ),
        .I1(\spo[6]_INST_0_i_48_n_0 ),
        .I2(a[6]),
        .I3(\spo[4]_INST_0_i_35_n_0 ),
        .I4(a[4]),
        .I5(\spo[4]_INST_0_i_36_n_0 ),
        .O(\spo[4]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hF7FDFFFFF5FAFFFB)) 
    \spo[4]_INST_0_i_17 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[7]),
        .I5(a[2]),
        .O(\spo[4]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFCFFF77FF33FF33)) 
    \spo[4]_INST_0_i_18 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[4]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFC0C3FFFF83C3)) 
    \spo[4]_INST_0_i_19 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[0]),
        .O(\spo[4]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_2 
       (.I0(\spo[4]_INST_0_i_5_n_0 ),
        .I1(\spo[4]_INST_0_i_6_n_0 ),
        .I2(a[10]),
        .I3(\spo[4]_INST_0_i_7_n_0 ),
        .I4(a[9]),
        .I5(\spo[4]_INST_0_i_8_n_0 ),
        .O(\spo[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBB77DDDDEEFFE76E)) 
    \spo[4]_INST_0_i_20 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[4]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hF0D0F0D4F5F5F5F5)) 
    \spo[4]_INST_0_i_21 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[5]),
        .I3(a[0]),
        .I4(a[7]),
        .I5(a[2]),
        .O(\spo[4]_INST_0_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFF81FF99)) 
    \spo[4]_INST_0_i_22 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[0]),
        .O(\spo[4]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h3B37DDDD1ECF6F66)) 
    \spo[4]_INST_0_i_23 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[4]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h5050F0C075F5F5F5)) 
    \spo[4]_INST_0_i_24 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[5]),
        .I3(a[0]),
        .I4(a[7]),
        .I5(a[2]),
        .O(\spo[4]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFF01FF3BFFF3FF3B)) 
    \spo[4]_INST_0_i_25 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[7]),
        .O(\spo[4]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hCF3FF373FCFFBCBC)) 
    \spo[4]_INST_0_i_26 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[4]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hEF77B3B3FF77F731)) 
    \spo[4]_INST_0_i_27 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[7]),
        .O(\spo[4]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF3C8FFFFF0BC3)) 
    \spo[4]_INST_0_i_28 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[0]),
        .O(\spo[4]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h3BDD77D5EFFEFEEE)) 
    \spo[4]_INST_0_i_29 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[5]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[4]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4803FFFF0303)) 
    \spo[4]_INST_0_i_3 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[0]),
        .O(\spo[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE4C406CCFFFF5555)) 
    \spo[4]_INST_0_i_30 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[7]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[2]),
        .O(\spo[4]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hF8F5FBFDF5F5F5F5)) 
    \spo[4]_INST_0_i_31 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[7]),
        .I5(a[2]),
        .O(\spo[4]_INST_0_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF5F6)) 
    \spo[4]_INST_0_i_32 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[5]),
        .I3(a[2]),
        .O(\spo[4]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFAA08551555)) 
    \spo[4]_INST_0_i_33 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[7]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[4]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hF8F0F8F1F5F5F5F5)) 
    \spo[4]_INST_0_i_34 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[5]),
        .I3(a[0]),
        .I4(a[7]),
        .I5(a[2]),
        .O(\spo[4]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hB373E1FC55D5EE77)) 
    \spo[4]_INST_0_i_35 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[4]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hF4D55451F7FF75F7)) 
    \spo[4]_INST_0_i_36 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[5]),
        .I3(a[0]),
        .I4(a[7]),
        .I5(a[2]),
        .O(\spo[4]_INST_0_i_36_n_0 ));
  MUXF7 \spo[4]_INST_0_i_4 
       (.I0(\spo[4]_INST_0_i_9_n_0 ),
        .I1(\spo[4]_INST_0_i_10_n_0 ),
        .O(\spo[4]_INST_0_i_4_n_0 ),
        .S(a[4]));
  MUXF7 \spo[4]_INST_0_i_5 
       (.I0(\spo[4]_INST_0_i_11_n_0 ),
        .I1(\spo[4]_INST_0_i_12_n_0 ),
        .O(\spo[4]_INST_0_i_5_n_0 ),
        .S(a[8]));
  MUXF7 \spo[4]_INST_0_i_6 
       (.I0(\spo[4]_INST_0_i_13_n_0 ),
        .I1(\spo[4]_INST_0_i_14_n_0 ),
        .O(\spo[4]_INST_0_i_6_n_0 ),
        .S(a[8]));
  MUXF7 \spo[4]_INST_0_i_7 
       (.I0(\spo[4]_INST_0_i_15_n_0 ),
        .I1(\spo[4]_INST_0_i_16_n_0 ),
        .O(\spo[4]_INST_0_i_7_n_0 ),
        .S(a[8]));
  LUT5 #(
    .INIT(32'hEFEAFFFF)) 
    \spo[4]_INST_0_i_8 
       (.I0(a[6]),
        .I1(\spo[4]_INST_0_i_17_n_0 ),
        .I2(a[4]),
        .I3(\spo[4]_INST_0_i_18_n_0 ),
        .I4(a[8]),
        .O(\spo[4]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEFEADD15EFBBDD95)) 
    \spo[4]_INST_0_i_9 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[7]),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[4]_INST_0_i_9_n_0 ));
  MUXF7 \spo[5]_INST_0 
       (.I0(\spo[5]_INST_0_i_1_n_0 ),
        .I1(\spo[5]_INST_0_i_2_n_0 ),
        .O(spo[5]),
        .S(a[12]));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \spo[5]_INST_0_i_1 
       (.I0(\spo[5]_INST_0_i_3_n_0 ),
        .I1(a[9]),
        .I2(\spo[5]_INST_0_i_4_n_0 ),
        .I3(a[10]),
        .I4(\spo[5]_INST_0_i_5_n_0 ),
        .I5(a[11]),
        .O(\spo[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080008000800001)) 
    \spo[5]_INST_0_i_10 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[5]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000FCEE00000000)) 
    \spo[5]_INST_0_i_11 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[5]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \spo[5]_INST_0_i_12 
       (.I0(\spo[5]_INST_0_i_25_n_0 ),
        .I1(a[6]),
        .I2(\spo[5]_INST_0_i_26_n_0 ),
        .I3(a[4]),
        .I4(\spo[5]_INST_0_i_27_n_0 ),
        .O(\spo[5]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \spo[5]_INST_0_i_13 
       (.I0(\spo[5]_INST_0_i_28_n_0 ),
        .I1(a[6]),
        .I2(\spo[5]_INST_0_i_29_n_0 ),
        .I3(a[4]),
        .I4(\spo[5]_INST_0_i_30_n_0 ),
        .O(\spo[5]_INST_0_i_13_n_0 ));
  MUXF7 \spo[5]_INST_0_i_14 
       (.I0(\spo[5]_INST_0_i_31_n_0 ),
        .I1(\spo[5]_INST_0_i_32_n_0 ),
        .O(\spo[5]_INST_0_i_14_n_0 ),
        .S(a[8]));
  MUXF7 \spo[5]_INST_0_i_15 
       (.I0(\spo[5]_INST_0_i_33_n_0 ),
        .I1(\spo[5]_INST_0_i_34_n_0 ),
        .O(\spo[5]_INST_0_i_15_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h10444A2645042608)) 
    \spo[5]_INST_0_i_16 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[0]),
        .O(\spo[5]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0A08020209010009)) 
    \spo[5]_INST_0_i_17 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[5]),
        .I3(a[7]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[5]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000E88A0000908A)) 
    \spo[5]_INST_0_i_18 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[5]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h00FF000040004000)) 
    \spo[5]_INST_0_i_19 
       (.I0(a[3]),
        .I1(\spo[5]_INST_0_i_35_n_0 ),
        .I2(a[2]),
        .I3(a[6]),
        .I4(\spo[5]_INST_0_i_36_n_0 ),
        .I5(a[4]),
        .O(\spo[5]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF4A45404)) 
    \spo[5]_INST_0_i_2 
       (.I0(a[9]),
        .I1(\spo[5]_INST_0_i_6_n_0 ),
        .I2(a[10]),
        .I3(\spo[5]_INST_0_i_7_n_0 ),
        .I4(\spo[5]_INST_0_i_8_n_0 ),
        .I5(a[11]),
        .O(\spo[5]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[5]_INST_0_i_20 
       (.I0(\spo[5]_INST_0_i_37_n_0 ),
        .I1(a[6]),
        .I2(\spo[5]_INST_0_i_38_n_0 ),
        .I3(a[4]),
        .I4(\spo[5]_INST_0_i_39_n_0 ),
        .O(\spo[5]_INST_0_i_20_n_0 ));
  MUXF7 \spo[5]_INST_0_i_21 
       (.I0(\spo[5]_INST_0_i_40_n_0 ),
        .I1(\spo[5]_INST_0_i_41_n_0 ),
        .O(\spo[5]_INST_0_i_21_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \spo[5]_INST_0_i_22 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(\spo[5]_INST_0_i_42_n_0 ),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[4]),
        .O(\spo[5]_INST_0_i_22_n_0 ));
  MUXF7 \spo[5]_INST_0_i_23 
       (.I0(\spo[5]_INST_0_i_43_n_0 ),
        .I1(\spo[5]_INST_0_i_44_n_0 ),
        .O(\spo[5]_INST_0_i_23_n_0 ),
        .S(a[4]));
  MUXF7 \spo[5]_INST_0_i_24 
       (.I0(\spo[5]_INST_0_i_45_n_0 ),
        .I1(\spo[5]_INST_0_i_46_n_0 ),
        .O(\spo[5]_INST_0_i_24_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h00003AA80000E8C2)) 
    \spo[5]_INST_0_i_25 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[5]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h000A008000200004)) 
    \spo[5]_INST_0_i_26 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[5]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h14152EC844448A82)) 
    \spo[5]_INST_0_i_27 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[7]),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h00A7008200080062)) 
    \spo[5]_INST_0_i_28 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[5]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h000040F00000200F)) 
    \spo[5]_INST_0_i_29 
       (.I0(a[0]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[2]),
        .O(\spo[5]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hCCE200E200000000)) 
    \spo[5]_INST_0_i_3 
       (.I0(\spo[5]_INST_0_i_9_n_0 ),
        .I1(a[4]),
        .I2(\spo[5]_INST_0_i_10_n_0 ),
        .I3(a[6]),
        .I4(\spo[5]_INST_0_i_11_n_0 ),
        .I5(a[8]),
        .O(\spo[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1144046A10014C8A)) 
    \spo[5]_INST_0_i_30 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_30_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \spo[5]_INST_0_i_31 
       (.I0(\spo[5]_INST_0_i_47_n_0 ),
        .I1(a[6]),
        .I2(\spo[5]_INST_0_i_48_n_0 ),
        .I3(a[4]),
        .I4(\spo[5]_INST_0_i_49_n_0 ),
        .O(\spo[5]_INST_0_i_31_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \spo[5]_INST_0_i_32 
       (.I0(\spo[5]_INST_0_i_50_n_0 ),
        .I1(a[6]),
        .I2(\spo[5]_INST_0_i_51_n_0 ),
        .I3(a[4]),
        .I4(\spo[5]_INST_0_i_52_n_0 ),
        .O(\spo[5]_INST_0_i_32_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \spo[5]_INST_0_i_33 
       (.I0(\spo[5]_INST_0_i_53_n_0 ),
        .I1(a[6]),
        .I2(\spo[5]_INST_0_i_54_n_0 ),
        .I3(a[4]),
        .I4(\spo[5]_INST_0_i_55_n_0 ),
        .O(\spo[5]_INST_0_i_33_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \spo[5]_INST_0_i_34 
       (.I0(\spo[5]_INST_0_i_56_n_0 ),
        .I1(a[6]),
        .I2(\spo[5]_INST_0_i_57_n_0 ),
        .I3(a[4]),
        .I4(\spo[5]_INST_0_i_58_n_0 ),
        .O(\spo[5]_INST_0_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \spo[5]_INST_0_i_35 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[5]),
        .I3(a[7]),
        .O(\spo[5]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h0062006300400000)) 
    \spo[5]_INST_0_i_36 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[7]),
        .O(\spo[5]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h00D6006300400062)) 
    \spo[5]_INST_0_i_37 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[0]),
        .I5(a[7]),
        .O(\spo[5]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h00A0FF768880FFFF)) 
    \spo[5]_INST_0_i_38 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h30B0E8E8321098BB)) 
    \spo[5]_INST_0_i_39 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[0]),
        .O(\spo[5]_INST_0_i_39_n_0 ));
  MUXF7 \spo[5]_INST_0_i_4 
       (.I0(\spo[5]_INST_0_i_12_n_0 ),
        .I1(\spo[5]_INST_0_i_13_n_0 ),
        .O(\spo[5]_INST_0_i_4_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF7FDF5D)) 
    \spo[5]_INST_0_i_40 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[7]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[5]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFDEFFFFFFFF)) 
    \spo[5]_INST_0_i_41 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[5]_INST_0_i_41_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \spo[5]_INST_0_i_42 
       (.I0(a[5]),
        .I1(a[1]),
        .O(\spo[5]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hA0E0A080FFF6FFFF)) 
    \spo[5]_INST_0_i_43 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[5]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hFF006F40FF003311)) 
    \spo[5]_INST_0_i_44 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[7]),
        .I4(a[5]),
        .I5(a[0]),
        .O(\spo[5]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hCFFFEFFEFFFFFFFF)) 
    \spo[5]_INST_0_i_45 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[0]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[5]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEA8AAFFFFFFFF)) 
    \spo[5]_INST_0_i_46 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[7]),
        .I5(a[5]),
        .O(\spo[5]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h0323033302002222)) 
    \spo[5]_INST_0_i_47 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[7]),
        .I5(a[2]),
        .O(\spo[5]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h008400C400C40003)) 
    \spo[5]_INST_0_i_48 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[7]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[5]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h0145042015142EA4)) 
    \spo[5]_INST_0_i_49 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_49_n_0 ));
  MUXF8 \spo[5]_INST_0_i_5 
       (.I0(\spo[5]_INST_0_i_14_n_0 ),
        .I1(\spo[5]_INST_0_i_15_n_0 ),
        .O(\spo[5]_INST_0_i_5_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'h0000D8AE00006E62)) 
    \spo[5]_INST_0_i_50 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[5]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h008A008200A40020)) 
    \spo[5]_INST_0_i_51 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[5]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h1011E62A5550AEA8)) 
    \spo[5]_INST_0_i_52 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h00F7002000B200EA)) 
    \spo[5]_INST_0_i_53 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[5]_INST_0_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h0088008800440030)) 
    \spo[5]_INST_0_i_54 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[7]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[5]_INST_0_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h01150A4214442AA2)) 
    \spo[5]_INST_0_i_55 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[7]),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_55_n_0 ));
  LUT6 #(
    .INIT(64'h00750080002000EA)) 
    \spo[5]_INST_0_i_56 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[5]_INST_0_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h0800080808050201)) 
    \spo[5]_INST_0_i_57 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[7]),
        .I5(a[2]),
        .O(\spo[5]_INST_0_i_57_n_0 ));
  LUT6 #(
    .INIT(64'h1041A062405466CE)) 
    \spo[5]_INST_0_i_58 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[0]),
        .O(\spo[5]_INST_0_i_58_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CCE200E2)) 
    \spo[5]_INST_0_i_6 
       (.I0(\spo[5]_INST_0_i_16_n_0 ),
        .I1(a[4]),
        .I2(\spo[5]_INST_0_i_17_n_0 ),
        .I3(a[6]),
        .I4(\spo[5]_INST_0_i_18_n_0 ),
        .I5(a[8]),
        .O(\spo[5]_INST_0_i_6_n_0 ));
  MUXF7 \spo[5]_INST_0_i_7 
       (.I0(\spo[5]_INST_0_i_19_n_0 ),
        .I1(\spo[5]_INST_0_i_20_n_0 ),
        .O(\spo[5]_INST_0_i_7_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_8 
       (.I0(\spo[5]_INST_0_i_21_n_0 ),
        .I1(\spo[5]_INST_0_i_22_n_0 ),
        .I2(a[8]),
        .I3(\spo[5]_INST_0_i_23_n_0 ),
        .I4(a[6]),
        .I5(\spo[5]_INST_0_i_24_n_0 ),
        .O(\spo[5]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h15E654CC00AC00CE)) 
    \spo[5]_INST_0_i_9 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[0]),
        .I5(a[7]),
        .O(\spo[5]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0EFEFFFF0E0E0)) 
    \spo[6]_INST_0 
       (.I0(a[10]),
        .I1(\spo[6]_INST_0_i_1_n_0 ),
        .I2(a[12]),
        .I3(\spo[6]_INST_0_i_2_n_0 ),
        .I4(a[11]),
        .I5(\spo[6]_INST_0_i_3_n_0 ),
        .O(spo[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFFEFAA)) 
    \spo[6]_INST_0_i_1 
       (.I0(a[8]),
        .I1(\spo[6]_INST_0_i_4_n_0 ),
        .I2(a[4]),
        .I3(a[6]),
        .I4(\spo[6]_INST_0_i_5_n_0 ),
        .I5(a[9]),
        .O(\spo[6]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hDFD5FFFF)) 
    \spo[6]_INST_0_i_10 
       (.I0(a[8]),
        .I1(\spo[6]_INST_0_i_22_n_0 ),
        .I2(a[6]),
        .I3(\spo[6]_INST_0_i_23_n_0 ),
        .I4(a[9]),
        .O(\spo[6]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_11 
       (.I0(\spo[6]_INST_0_i_24_n_0 ),
        .I1(\spo[6]_INST_0_i_25_n_0 ),
        .I2(a[9]),
        .I3(\spo[6]_INST_0_i_26_n_0 ),
        .I4(a[8]),
        .I5(\spo[6]_INST_0_i_27_n_0 ),
        .O(\spo[6]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEEEEE9FD5151D)) 
    \spo[6]_INST_0_i_12 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[7]),
        .I5(a[5]),
        .O(\spo[6]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hF5F5F7F7F6F6FFF6)) 
    \spo[6]_INST_0_i_13 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[5]),
        .I3(a[7]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[6]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_14 
       (.I0(\spo[6]_INST_0_i_28_n_0 ),
        .I1(\spo[6]_INST_0_i_29_n_0 ),
        .I2(a[6]),
        .I3(\spo[6]_INST_0_i_30_n_0 ),
        .I4(a[4]),
        .I5(\spo[6]_INST_0_i_31_n_0 ),
        .O(\spo[6]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_15 
       (.I0(\spo[6]_INST_0_i_32_n_0 ),
        .I1(\spo[6]_INST_0_i_33_n_0 ),
        .I2(a[6]),
        .I3(\spo[6]_INST_0_i_34_n_0 ),
        .I4(a[4]),
        .I5(\spo[6]_INST_0_i_35_n_0 ),
        .O(\spo[6]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_16 
       (.I0(\spo[6]_INST_0_i_36_n_0 ),
        .I1(\spo[6]_INST_0_i_37_n_0 ),
        .I2(a[6]),
        .I3(\spo[6]_INST_0_i_38_n_0 ),
        .I4(a[4]),
        .I5(\spo[6]_INST_0_i_39_n_0 ),
        .O(\spo[6]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_17 
       (.I0(\spo[6]_INST_0_i_40_n_0 ),
        .I1(\spo[6]_INST_0_i_41_n_0 ),
        .I2(a[6]),
        .I3(\spo[6]_INST_0_i_42_n_0 ),
        .I4(a[4]),
        .I5(\spo[6]_INST_0_i_43_n_0 ),
        .O(\spo[6]_INST_0_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB8CC)) 
    \spo[6]_INST_0_i_18 
       (.I0(\spo[6]_INST_0_i_44_n_0 ),
        .I1(a[6]),
        .I2(\spo[6]_INST_0_i_45_n_0 ),
        .I3(a[4]),
        .I4(\spo[6]_INST_0_i_46_n_0 ),
        .O(\spo[6]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_19 
       (.I0(\spo[6]_INST_0_i_47_n_0 ),
        .I1(\spo[6]_INST_0_i_48_n_0 ),
        .I2(a[6]),
        .I3(\spo[6]_INST_0_i_49_n_0 ),
        .I4(a[4]),
        .I5(\spo[6]_INST_0_i_50_n_0 ),
        .O(\spo[6]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_2 
       (.I0(\spo[6]_INST_0_i_6_n_0 ),
        .I1(\spo[6]_INST_0_i_7_n_0 ),
        .I2(a[10]),
        .I3(\spo[6]_INST_0_i_8_n_0 ),
        .I4(a[9]),
        .I5(\spo[6]_INST_0_i_9_n_0 ),
        .O(\spo[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBF7FFFFF7FF0)) 
    \spo[6]_INST_0_i_20 
       (.I0(a[0]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[2]),
        .O(\spo[6]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFC3FC83FFCFFF8F)) 
    \spo[6]_INST_0_i_21 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[7]),
        .O(\spo[6]_INST_0_i_21_n_0 ));
  MUXF7 \spo[6]_INST_0_i_22 
       (.I0(\spo[6]_INST_0_i_51_n_0 ),
        .I1(\spo[6]_INST_0_i_52_n_0 ),
        .O(\spo[6]_INST_0_i_22_n_0 ),
        .S(a[4]));
  MUXF7 \spo[6]_INST_0_i_23 
       (.I0(\spo[6]_INST_0_i_53_n_0 ),
        .I1(\spo[6]_INST_0_i_54_n_0 ),
        .O(\spo[6]_INST_0_i_23_n_0 ),
        .S(a[4]));
  MUXF8 \spo[6]_INST_0_i_24 
       (.I0(\spo[6]_INST_0_i_55_n_0 ),
        .I1(\spo[6]_INST_0_i_56_n_0 ),
        .O(\spo[6]_INST_0_i_24_n_0 ),
        .S(a[6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[6]_INST_0_i_25 
       (.I0(\spo[6]_INST_0_i_57_n_0 ),
        .I1(a[6]),
        .I2(\spo[6]_INST_0_i_58_n_0 ),
        .I3(a[4]),
        .I4(\spo[6]_INST_0_i_59_n_0 ),
        .O(\spo[6]_INST_0_i_25_n_0 ));
  MUXF8 \spo[6]_INST_0_i_26 
       (.I0(\spo[6]_INST_0_i_60_n_0 ),
        .I1(\spo[6]_INST_0_i_61_n_0 ),
        .O(\spo[6]_INST_0_i_26_n_0 ),
        .S(a[6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[6]_INST_0_i_27 
       (.I0(\spo[6]_INST_0_i_62_n_0 ),
        .I1(a[6]),
        .I2(\spo[6]_INST_0_i_63_n_0 ),
        .I3(a[4]),
        .I4(\spo[6]_INST_0_i_59_n_0 ),
        .O(\spo[6]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFFC8FFCFFFBFFFB3)) 
    \spo[6]_INST_0_i_28 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[6]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBBFEFFFFEF77)) 
    \spo[6]_INST_0_i_29 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_29_n_0 ));
  MUXF7 \spo[6]_INST_0_i_3 
       (.I0(\spo[6]_INST_0_i_10_n_0 ),
        .I1(\spo[6]_INST_0_i_11_n_0 ),
        .O(\spo[6]_INST_0_i_3_n_0 ),
        .S(a[10]));
  LUT6 #(
    .INIT(64'hCF3F3F3FFCFF3F7C)) 
    \spo[6]_INST_0_i_30 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFE35E391FF35F359)) 
    \spo[6]_INST_0_i_31 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[0]),
        .I5(a[7]),
        .O(\spo[6]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hFFA3FF31FFBBFFBD)) 
    \spo[6]_INST_0_i_32 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[7]),
        .O(\spo[6]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA8F7FFFFB7B7)) 
    \spo[6]_INST_0_i_33 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h35B517E63775CFFF)) 
    \spo[6]_INST_0_i_34 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[5]),
        .I3(a[7]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h4F2A13552A275DD5)) 
    \spo[6]_INST_0_i_35 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hFF87FF77FF73FF7F)) 
    \spo[6]_INST_0_i_36 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[7]),
        .O(\spo[6]_INST_0_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFCFFFF7)) 
    \spo[6]_INST_0_i_37 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[0]),
        .O(\spo[6]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hBB77DF55EEFF767E)) 
    \spo[6]_INST_0_i_38 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hEFEF73D1FE6777D1)) 
    \spo[6]_INST_0_i_39 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4A0FFFFF3F25)) 
    \spo[6]_INST_0_i_4 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFB3FF39FF87FFFF)) 
    \spo[6]_INST_0_i_40 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[7]),
        .O(\spo[6]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBAEFFFFFEF67)) 
    \spo[6]_INST_0_i_41 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h37BDE7F77575FEE6)) 
    \spo[6]_INST_0_i_42 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[5]),
        .I3(a[7]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hF7F615DDF2675D17)) 
    \spo[6]_INST_0_i_43 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hFF99FF57FF8FFF19)) 
    \spo[6]_INST_0_i_44 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[7]),
        .O(\spo[6]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFDFFFFFDFF0)) 
    \spo[6]_INST_0_i_45 
       (.I0(a[0]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[2]),
        .O(\spo[6]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hF8F1F1F5F5FFF5F5)) 
    \spo[6]_INST_0_i_46 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[7]),
        .I5(a[2]),
        .O(\spo[6]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFFEF9FFFFF7FD)) 
    \spo[6]_INST_0_i_47 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[5]),
        .I3(a[0]),
        .I4(a[7]),
        .I5(a[2]),
        .O(\spo[6]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF8BFCF8FC)) 
    \spo[6]_INST_0_i_48 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[6]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hB3777377E1EEFCEE)) 
    \spo[6]_INST_0_i_49 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[5]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_49_n_0 ));
  MUXF7 \spo[6]_INST_0_i_5 
       (.I0(\spo[6]_INST_0_i_12_n_0 ),
        .I1(\spo[6]_INST_0_i_13_n_0 ),
        .O(\spo[6]_INST_0_i_5_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'hF5A6E67673311775)) 
    \spo[6]_INST_0_i_50 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[6]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF21FCF07C)) 
    \spo[6]_INST_0_i_51 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[6]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFCFAFFFE)) 
    \spo[6]_INST_0_i_52 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(a[5]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[6]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hAFFFF5FFD3FF31FF)) 
    \spo[6]_INST_0_i_53 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[7]),
        .O(\spo[6]_INST_0_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hBF7F333F7E9FC002)) 
    \spo[6]_INST_0_i_54 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[7]),
        .I5(a[5]),
        .O(\spo[6]_INST_0_i_54_n_0 ));
  MUXF7 \spo[6]_INST_0_i_55 
       (.I0(\spo[6]_INST_0_i_64_n_0 ),
        .I1(\spo[6]_INST_0_i_65_n_0 ),
        .O(\spo[6]_INST_0_i_55_n_0 ),
        .S(a[4]));
  MUXF7 \spo[6]_INST_0_i_56 
       (.I0(\spo[6]_INST_0_i_66_n_0 ),
        .I1(\spo[6]_INST_0_i_67_n_0 ),
        .O(\spo[6]_INST_0_i_56_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBFFFDF)) 
    \spo[6]_INST_0_i_57 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[6]_INST_0_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hEFEDFFFA47BDF5FF)) 
    \spo[6]_INST_0_i_58 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_58_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFDFEFDF)) 
    \spo[6]_INST_0_i_59 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[2]),
        .O(\spo[6]_INST_0_i_59_n_0 ));
  MUXF7 \spo[6]_INST_0_i_6 
       (.I0(\spo[6]_INST_0_i_14_n_0 ),
        .I1(\spo[6]_INST_0_i_15_n_0 ),
        .O(\spo[6]_INST_0_i_6_n_0 ),
        .S(a[8]));
  MUXF7 \spo[6]_INST_0_i_60 
       (.I0(\spo[6]_INST_0_i_68_n_0 ),
        .I1(\spo[6]_INST_0_i_69_n_0 ),
        .O(\spo[6]_INST_0_i_60_n_0 ),
        .S(a[4]));
  MUXF7 \spo[6]_INST_0_i_61 
       (.I0(\spo[6]_INST_0_i_70_n_0 ),
        .I1(\spo[6]_INST_0_i_71_n_0 ),
        .O(\spo[6]_INST_0_i_61_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'hFFFFFAFFFFFFFFB5)) 
    \spo[6]_INST_0_i_62 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_62_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5FFA0FF5F5BF)) 
    \spo[6]_INST_0_i_63 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_63_n_0 ));
  LUT6 #(
    .INIT(64'h13FF33FFEFFFF5FF)) 
    \spo[6]_INST_0_i_64 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[7]),
        .O(\spo[6]_INST_0_i_64_n_0 ));
  LUT6 #(
    .INIT(64'h4CFF0CEE5C5DA6BF)) 
    \spo[6]_INST_0_i_65 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[5]),
        .I3(a[7]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_65_n_0 ));
  LUT6 #(
    .INIT(64'hFFBBFFDCFFBFFFFF)) 
    \spo[6]_INST_0_i_66 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[7]),
        .O(\spo[6]_INST_0_i_66_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFCCEF)) 
    \spo[6]_INST_0_i_67 
       (.I0(a[0]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[7]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[6]_INST_0_i_67_n_0 ));
  LUT6 #(
    .INIT(64'hBFF7FFFFBA57FFFF)) 
    \spo[6]_INST_0_i_68 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_68_n_0 ));
  LUT6 #(
    .INIT(64'h7F77D65C99FF6E3B)) 
    \spo[6]_INST_0_i_69 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_69_n_0 ));
  MUXF7 \spo[6]_INST_0_i_7 
       (.I0(\spo[6]_INST_0_i_16_n_0 ),
        .I1(\spo[6]_INST_0_i_17_n_0 ),
        .O(\spo[6]_INST_0_i_7_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'hFFFF9ACFFFFFCFC7)) 
    \spo[6]_INST_0_i_70 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_70_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFAFFBF)) 
    \spo[6]_INST_0_i_71 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[7]),
        .I3(a[5]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[6]_INST_0_i_71_n_0 ));
  MUXF7 \spo[6]_INST_0_i_8 
       (.I0(\spo[6]_INST_0_i_18_n_0 ),
        .I1(\spo[6]_INST_0_i_19_n_0 ),
        .O(\spo[6]_INST_0_i_8_n_0 ),
        .S(a[8]));
  LUT5 #(
    .INIT(32'hEFEAFFFF)) 
    \spo[6]_INST_0_i_9 
       (.I0(a[6]),
        .I1(\spo[6]_INST_0_i_20_n_0 ),
        .I2(a[4]),
        .I3(\spo[6]_INST_0_i_21_n_0 ),
        .I4(a[8]),
        .O(\spo[6]_INST_0_i_9_n_0 ));
  MUXF7 \spo[7]_INST_0 
       (.I0(\spo[7]_INST_0_i_1_n_0 ),
        .I1(\spo[7]_INST_0_i_2_n_0 ),
        .O(spo[7]),
        .S(a[12]));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \spo[7]_INST_0_i_1 
       (.I0(\spo[7]_INST_0_i_3_n_0 ),
        .I1(a[9]),
        .I2(\spo[7]_INST_0_i_4_n_0 ),
        .I3(a[10]),
        .I4(\spo[7]_INST_0_i_5_n_0 ),
        .I5(a[11]),
        .O(\spo[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000020800000000F)) 
    \spo[7]_INST_0_i_10 
       (.I0(a[7]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[2]),
        .O(\spo[7]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000FEEE00000000)) 
    \spo[7]_INST_0_i_11 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[7]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h88B8333388B80000)) 
    \spo[7]_INST_0_i_12 
       (.I0(\spo[7]_INST_0_i_25_n_0 ),
        .I1(a[6]),
        .I2(\spo[7]_INST_0_i_26_n_0 ),
        .I3(a[3]),
        .I4(a[4]),
        .I5(\spo[7]_INST_0_i_27_n_0 ),
        .O(\spo[7]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \spo[7]_INST_0_i_13 
       (.I0(\spo[7]_INST_0_i_28_n_0 ),
        .I1(a[6]),
        .I2(\spo[7]_INST_0_i_29_n_0 ),
        .I3(a[4]),
        .I4(\spo[7]_INST_0_i_30_n_0 ),
        .O(\spo[7]_INST_0_i_13_n_0 ));
  MUXF7 \spo[7]_INST_0_i_14 
       (.I0(\spo[7]_INST_0_i_31_n_0 ),
        .I1(\spo[7]_INST_0_i_32_n_0 ),
        .O(\spo[7]_INST_0_i_14_n_0 ),
        .S(a[8]));
  MUXF7 \spo[7]_INST_0_i_15 
       (.I0(\spo[7]_INST_0_i_33_n_0 ),
        .I1(\spo[7]_INST_0_i_34_n_0 ),
        .O(\spo[7]_INST_0_i_15_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h0140E6CA5040E6E6)) 
    \spo[7]_INST_0_i_16 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[0]),
        .O(\spo[7]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \spo[7]_INST_0_i_17 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[7]),
        .I5(a[3]),
        .O(\spo[7]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h030000000A0A0A0A)) 
    \spo[7]_INST_0_i_18 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[7]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h1111111022220202)) 
    \spo[7]_INST_0_i_19 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[7]),
        .I5(a[2]),
        .O(\spo[7]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF4A45404)) 
    \spo[7]_INST_0_i_2 
       (.I0(a[9]),
        .I1(\spo[7]_INST_0_i_6_n_0 ),
        .I2(a[10]),
        .I3(\spo[7]_INST_0_i_7_n_0 ),
        .I4(\spo[7]_INST_0_i_8_n_0 ),
        .I5(a[11]),
        .O(\spo[7]_INST_0_i_2_n_0 ));
  MUXF7 \spo[7]_INST_0_i_20 
       (.I0(\spo[7]_INST_0_i_35_n_0 ),
        .I1(\spo[7]_INST_0_i_36_n_0 ),
        .O(\spo[7]_INST_0_i_20_n_0 ),
        .S(a[4]));
  MUXF7 \spo[7]_INST_0_i_21 
       (.I0(\spo[7]_INST_0_i_37_n_0 ),
        .I1(\spo[7]_INST_0_i_38_n_0 ),
        .O(\spo[7]_INST_0_i_21_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'hEFFFEFFFFFFFFFF0)) 
    \spo[7]_INST_0_i_22 
       (.I0(\spo[7]_INST_0_i_39_n_0 ),
        .I1(a[7]),
        .I2(a[4]),
        .I3(a[2]),
        .I4(\spo[7]_INST_0_i_40_n_0 ),
        .I5(a[3]),
        .O(\spo[7]_INST_0_i_22_n_0 ));
  MUXF7 \spo[7]_INST_0_i_23 
       (.I0(\spo[7]_INST_0_i_41_n_0 ),
        .I1(\spo[7]_INST_0_i_42_n_0 ),
        .O(\spo[7]_INST_0_i_23_n_0 ),
        .S(a[4]));
  MUXF7 \spo[7]_INST_0_i_24 
       (.I0(\spo[7]_INST_0_i_43_n_0 ),
        .I1(\spo[7]_INST_0_i_44_n_0 ),
        .O(\spo[7]_INST_0_i_24_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h00F3007400700034)) 
    \spo[7]_INST_0_i_25 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[7]_INST_0_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \spo[7]_INST_0_i_26 
       (.I0(a[1]),
        .I1(a[5]),
        .I2(a[2]),
        .O(\spo[7]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0440444414804444)) 
    \spo[7]_INST_0_i_27 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[7]),
        .O(\spo[7]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h00A5005000100010)) 
    \spo[7]_INST_0_i_28 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[7]_INST_0_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00C80003)) 
    \spo[7]_INST_0_i_29 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[2]),
        .O(\spo[7]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hCCE200E200000000)) 
    \spo[7]_INST_0_i_3 
       (.I0(\spo[7]_INST_0_i_9_n_0 ),
        .I1(a[4]),
        .I2(\spo[7]_INST_0_i_10_n_0 ),
        .I3(a[6]),
        .I4(\spo[7]_INST_0_i_11_n_0 ),
        .I5(a[8]),
        .O(\spo[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00555505500A485A)) 
    \spo[7]_INST_0_i_30 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[7]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hB8883333B8880000)) 
    \spo[7]_INST_0_i_31 
       (.I0(\spo[7]_INST_0_i_45_n_0 ),
        .I1(a[6]),
        .I2(\spo[7]_INST_0_i_46_n_0 ),
        .I3(a[3]),
        .I4(a[4]),
        .I5(\spo[7]_INST_0_i_47_n_0 ),
        .O(\spo[7]_INST_0_i_31_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \spo[7]_INST_0_i_32 
       (.I0(\spo[7]_INST_0_i_48_n_0 ),
        .I1(a[6]),
        .I2(\spo[7]_INST_0_i_49_n_0 ),
        .I3(a[4]),
        .I4(\spo[7]_INST_0_i_50_n_0 ),
        .O(\spo[7]_INST_0_i_32_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \spo[7]_INST_0_i_33 
       (.I0(\spo[7]_INST_0_i_51_n_0 ),
        .I1(a[6]),
        .I2(\spo[7]_INST_0_i_52_n_0 ),
        .I3(a[4]),
        .I4(\spo[7]_INST_0_i_53_n_0 ),
        .O(\spo[7]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h88B8333388B80000)) 
    \spo[7]_INST_0_i_34 
       (.I0(\spo[7]_INST_0_i_54_n_0 ),
        .I1(a[6]),
        .I2(\spo[7]_INST_0_i_55_n_0 ),
        .I3(a[3]),
        .I4(a[4]),
        .I5(\spo[7]_INST_0_i_56_n_0 ),
        .O(\spo[7]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h303131F1EAB8E8B8)) 
    \spo[7]_INST_0_i_35 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[7]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hA0808080F6F7F7FB)) 
    \spo[7]_INST_0_i_36 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[7]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h2220000000000000)) 
    \spo[7]_INST_0_i_37 
       (.I0(a[2]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[7]),
        .I5(a[3]),
        .O(\spo[7]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h000030400000C4CC)) 
    \spo[7]_INST_0_i_38 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[7]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[2]),
        .O(\spo[7]_INST_0_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \spo[7]_INST_0_i_39 
       (.I0(a[1]),
        .I1(a[5]),
        .I2(a[0]),
        .O(\spo[7]_INST_0_i_39_n_0 ));
  MUXF7 \spo[7]_INST_0_i_4 
       (.I0(\spo[7]_INST_0_i_12_n_0 ),
        .I1(\spo[7]_INST_0_i_13_n_0 ),
        .O(\spo[7]_INST_0_i_4_n_0 ),
        .S(a[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hE8FF)) 
    \spo[7]_INST_0_i_40 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[5]),
        .O(\spo[7]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0FFFEA0A0FFF7)) 
    \spo[7]_INST_0_i_41 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[1]),
        .O(\spo[7]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF3F4F0000040F)) 
    \spo[7]_INST_0_i_42 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[7]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBFFBFF)) 
    \spo[7]_INST_0_i_43 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(a[5]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[7]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hFEEFEEE8FFFFFFFF)) 
    \spo[7]_INST_0_i_44 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[7]),
        .I5(a[5]),
        .O(\spo[7]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h007F000A001200AA)) 
    \spo[7]_INST_0_i_45 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[7]_INST_0_i_45_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h55540000)) 
    \spo[7]_INST_0_i_46 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[7]),
        .I4(a[2]),
        .O(\spo[7]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h1011551166A2E62A)) 
    \spo[7]_INST_0_i_47 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[7]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h000066EA00007028)) 
    \spo[7]_INST_0_i_48 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[7]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h002A002A00040080)) 
    \spo[7]_INST_0_i_49 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[7]_INST_0_i_49_n_0 ));
  MUXF8 \spo[7]_INST_0_i_5 
       (.I0(\spo[7]_INST_0_i_14_n_0 ),
        .I1(\spo[7]_INST_0_i_15_n_0 ),
        .O(\spo[7]_INST_0_i_5_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'h150015057ABAFAAA)) 
    \spo[7]_INST_0_i_50 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[7]),
        .I5(a[5]),
        .O(\spo[7]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0B0C0C0C0C0C)) 
    \spo[7]_INST_0_i_51 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[7]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h0000000A00010000)) 
    \spo[7]_INST_0_i_52 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[7]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h03303CCC30307CFC)) 
    \spo[7]_INST_0_i_53 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[0]),
        .O(\spo[7]_INST_0_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h3032313222222222)) 
    \spo[7]_INST_0_i_54 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[7]),
        .I5(a[2]),
        .O(\spo[7]_INST_0_i_54_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \spo[7]_INST_0_i_55 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(a[5]),
        .I3(a[0]),
        .I4(a[2]),
        .O(\spo[7]_INST_0_i_55_n_0 ));
  LUT6 #(
    .INIT(64'h05505A0A50400A2A)) 
    \spo[7]_INST_0_i_56 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[0]),
        .O(\spo[7]_INST_0_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CCE200E2)) 
    \spo[7]_INST_0_i_6 
       (.I0(\spo[7]_INST_0_i_16_n_0 ),
        .I1(a[4]),
        .I2(\spo[7]_INST_0_i_17_n_0 ),
        .I3(a[6]),
        .I4(\spo[7]_INST_0_i_18_n_0 ),
        .I5(a[8]),
        .O(\spo[7]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h22002200F0FFF000)) 
    \spo[7]_INST_0_i_7 
       (.I0(\spo[7]_INST_0_i_19_n_0 ),
        .I1(a[4]),
        .I2(\spo[7]_INST_0_i_20_n_0 ),
        .I3(a[8]),
        .I4(\spo[7]_INST_0_i_21_n_0 ),
        .I5(a[6]),
        .O(\spo[7]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB8CC)) 
    \spo[7]_INST_0_i_8 
       (.I0(\spo[7]_INST_0_i_22_n_0 ),
        .I1(a[8]),
        .I2(\spo[7]_INST_0_i_23_n_0 ),
        .I3(a[6]),
        .I4(\spo[7]_INST_0_i_24_n_0 ),
        .O(\spo[7]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h15559D000000FF00)) 
    \spo[7]_INST_0_i_9 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[7]_INST_0_i_9_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
