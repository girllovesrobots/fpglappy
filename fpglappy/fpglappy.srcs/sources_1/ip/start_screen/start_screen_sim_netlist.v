// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.3 (win64) Build 1368829 Mon Sep 28 20:06:43 MDT 2015
// Date        : Mon Dec 07 12:43:32 2015
// Host        : DESKTOP-COC4BKA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/Nick/Documents/fpglappy/fpglappy/fpglappy.srcs/sources_1/ip/start_screen/start_screen_sim_netlist.v
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
  wire \spo[1]_INST_0_i_34_n_0 ;
  wire \spo[1]_INST_0_i_35_n_0 ;
  wire \spo[1]_INST_0_i_36_n_0 ;
  wire \spo[1]_INST_0_i_37_n_0 ;
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
  wire \spo[4]_INST_0_i_37_n_0 ;
  wire \spo[4]_INST_0_i_38_n_0 ;
  wire \spo[4]_INST_0_i_39_n_0 ;
  wire \spo[4]_INST_0_i_3_n_0 ;
  wire \spo[4]_INST_0_i_40_n_0 ;
  wire \spo[4]_INST_0_i_41_n_0 ;
  wire \spo[4]_INST_0_i_42_n_0 ;
  wire \spo[4]_INST_0_i_43_n_0 ;
  wire \spo[4]_INST_0_i_44_n_0 ;
  wire \spo[4]_INST_0_i_45_n_0 ;
  wire \spo[4]_INST_0_i_46_n_0 ;
  wire \spo[4]_INST_0_i_47_n_0 ;
  wire \spo[4]_INST_0_i_48_n_0 ;
  wire \spo[4]_INST_0_i_49_n_0 ;
  wire \spo[4]_INST_0_i_4_n_0 ;
  wire \spo[4]_INST_0_i_50_n_0 ;
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
  wire \spo[5]_INST_0_i_59_n_0 ;
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
  wire \spo[6]_INST_0_i_72_n_0 ;
  wire \spo[6]_INST_0_i_73_n_0 ;
  wire \spo[6]_INST_0_i_74_n_0 ;
  wire \spo[6]_INST_0_i_75_n_0 ;
  wire \spo[6]_INST_0_i_76_n_0 ;
  wire \spo[6]_INST_0_i_77_n_0 ;
  wire \spo[6]_INST_0_i_78_n_0 ;
  wire \spo[6]_INST_0_i_79_n_0 ;
  wire \spo[6]_INST_0_i_7_n_0 ;
  wire \spo[6]_INST_0_i_80_n_0 ;
  wire \spo[6]_INST_0_i_81_n_0 ;
  wire \spo[6]_INST_0_i_82_n_0 ;
  wire \spo[6]_INST_0_i_83_n_0 ;
  wire \spo[6]_INST_0_i_84_n_0 ;
  wire \spo[6]_INST_0_i_85_n_0 ;
  wire \spo[6]_INST_0_i_86_n_0 ;
  wire \spo[6]_INST_0_i_87_n_0 ;
  wire \spo[6]_INST_0_i_88_n_0 ;
  wire \spo[6]_INST_0_i_89_n_0 ;
  wire \spo[6]_INST_0_i_8_n_0 ;
  wire \spo[6]_INST_0_i_90_n_0 ;
  wire \spo[6]_INST_0_i_91_n_0 ;
  wire \spo[6]_INST_0_i_92_n_0 ;
  wire \spo[6]_INST_0_i_93_n_0 ;
  wire \spo[6]_INST_0_i_94_n_0 ;
  wire \spo[6]_INST_0_i_95_n_0 ;
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
    .INIT(64'hBBBBBABBBABABABA)) 
    \spo[0]_INST_0 
       (.I0(\spo[6]_INST_0_i_1_n_0 ),
        .I1(\spo[0]_INST_0_i_1_n_0 ),
        .I2(\spo[6]_INST_0_i_4_n_0 ),
        .I3(\spo[0]_INST_0_i_2_n_0 ),
        .I4(\spo[0]_INST_0_i_3_n_0 ),
        .I5(a[11]),
        .O(spo[0]));
  LUT5 #(
    .INIT(32'hABABABAA)) 
    \spo[0]_INST_0_i_1 
       (.I0(a[6]),
        .I1(\spo[6]_INST_0_i_10_n_0 ),
        .I2(\spo[0]_INST_0_i_4_n_0 ),
        .I3(a[5]),
        .I4(\spo[0]_INST_0_i_5_n_0 ),
        .O(\spo[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE0E0E0E00000E000)) 
    \spo[0]_INST_0_i_10 
       (.I0(\spo[0]_INST_0_i_19_n_0 ),
        .I1(\spo[0]_INST_0_i_20_n_0 ),
        .I2(\spo[2]_INST_0_i_7_n_0 ),
        .I3(a[4]),
        .I4(a[3]),
        .I5(\spo[2]_INST_0_i_19_n_0 ),
        .O(\spo[0]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFA8A8AA00)) 
    \spo[0]_INST_0_i_11 
       (.I0(\spo[3]_INST_0_i_17_n_0 ),
        .I1(\spo[0]_INST_0_i_21_n_0 ),
        .I2(a[3]),
        .I3(\spo[0]_INST_0_i_22_n_0 ),
        .I4(a[5]),
        .I5(a[9]),
        .O(\spo[0]_INST_0_i_11_n_0 ));
  MUXF8 \spo[0]_INST_0_i_12 
       (.I0(\spo[0]_INST_0_i_23_n_0 ),
        .I1(\spo[0]_INST_0_i_24_n_0 ),
        .O(\spo[0]_INST_0_i_12_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h871A97BA039E03BC)) 
    \spo[0]_INST_0_i_13 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[7]),
        .I5(a[3]),
        .O(\spo[0]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hA04100E505000A5A)) 
    \spo[0]_INST_0_i_14 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[0]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h3EC93A01)) 
    \spo[0]_INST_0_i_15 
       (.I0(a[0]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[7]),
        .O(\spo[0]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h80000A08AAAA08A0)) 
    \spo[0]_INST_0_i_16 
       (.I0(\spo[7]_INST_0_i_26_n_0 ),
        .I1(a[7]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[0]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hEFF57333273373AA)) 
    \spo[0]_INST_0_i_17 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[0]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hD5100D7F5D2F0357)) 
    \spo[0]_INST_0_i_18 
       (.I0(a[7]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[0]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFE000EF00)) 
    \spo[0]_INST_0_i_19 
       (.I0(\spo[0]_INST_0_i_25_n_0 ),
        .I1(\spo[0]_INST_0_i_26_n_0 ),
        .I2(a[7]),
        .I3(a[3]),
        .I4(\spo[7]_INST_0_i_39_n_0 ),
        .I5(a[5]),
        .O(\spo[0]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hDDDD0D00FFFFFFFF)) 
    \spo[0]_INST_0_i_2 
       (.I0(\spo[2]_INST_0_i_7_n_0 ),
        .I1(\spo[0]_INST_0_i_6_n_0 ),
        .I2(\spo[0]_INST_0_i_7_n_0 ),
        .I3(a[5]),
        .I4(\spo[0]_INST_0_i_8_n_0 ),
        .I5(a[10]),
        .O(\spo[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1500001550000015)) 
    \spo[0]_INST_0_i_20 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[2]),
        .I5(a[7]),
        .O(\spo[0]_INST_0_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h0000F720)) 
    \spo[0]_INST_0_i_21 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[7]),
        .I4(a[4]),
        .O(\spo[0]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hC00300023CFCCC78)) 
    \spo[0]_INST_0_i_22 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[7]),
        .I5(a[3]),
        .O(\spo[0]_INST_0_i_22_n_0 ));
  MUXF7 \spo[0]_INST_0_i_23 
       (.I0(\spo[0]_INST_0_i_27_n_0 ),
        .I1(\spo[0]_INST_0_i_28_n_0 ),
        .O(\spo[0]_INST_0_i_23_n_0 ),
        .S(a[5]));
  MUXF7 \spo[0]_INST_0_i_24 
       (.I0(\spo[0]_INST_0_i_29_n_0 ),
        .I1(\spo[0]_INST_0_i_30_n_0 ),
        .O(\spo[0]_INST_0_i_24_n_0 ),
        .S(a[5]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h4CC0)) 
    \spo[0]_INST_0_i_25 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[2]),
        .O(\spo[0]_INST_0_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h00E8)) 
    \spo[0]_INST_0_i_26 
       (.I0(a[2]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[0]),
        .O(\spo[0]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h19AFA551E6209067)) 
    \spo[0]_INST_0_i_27 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[2]),
        .O(\spo[0]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h3FFCCCF7FFF330C0)) 
    \spo[0]_INST_0_i_28 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h7D92D9877D82528F)) 
    \spo[0]_INST_0_i_29 
       (.I0(a[3]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[7]),
        .O(\spo[0]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFEFEFAAAAEFEF)) 
    \spo[0]_INST_0_i_3 
       (.I0(\spo[0]_INST_0_i_9_n_0 ),
        .I1(\spo[0]_INST_0_i_10_n_0 ),
        .I2(\spo[0]_INST_0_i_11_n_0 ),
        .I3(a[9]),
        .I4(a[10]),
        .I5(\spo[0]_INST_0_i_12_n_0 ),
        .O(\spo[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5FFFD84AFBE4FFDD)) 
    \spo[0]_INST_0_i_30 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[2]),
        .O(\spo[0]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8A0AAAA2800)) 
    \spo[0]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[3]),
        .O(\spo[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hC17AD7E4C139D7AE)) 
    \spo[0]_INST_0_i_5 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[7]),
        .O(\spo[0]_INST_0_i_5_n_0 ));
  MUXF7 \spo[0]_INST_0_i_6 
       (.I0(\spo[0]_INST_0_i_13_n_0 ),
        .I1(\spo[0]_INST_0_i_14_n_0 ),
        .O(\spo[0]_INST_0_i_6_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h3475DC40787CDC90)) 
    \spo[0]_INST_0_i_7 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[0]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10FFFFFF)) 
    \spo[0]_INST_0_i_8 
       (.I0(\spo[0]_INST_0_i_15_n_0 ),
        .I1(a[5]),
        .I2(a[3]),
        .I3(a[8]),
        .I4(a[9]),
        .I5(\spo[0]_INST_0_i_16_n_0 ),
        .O(\spo[0]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000004040400040)) 
    \spo[0]_INST_0_i_9 
       (.I0(a[10]),
        .I1(a[9]),
        .I2(a[8]),
        .I3(\spo[0]_INST_0_i_17_n_0 ),
        .I4(a[5]),
        .I5(\spo[0]_INST_0_i_18_n_0 ),
        .O(\spo[0]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBABBBABABABABABA)) 
    \spo[1]_INST_0 
       (.I0(\spo[6]_INST_0_i_1_n_0 ),
        .I1(\spo[1]_INST_0_i_1_n_0 ),
        .I2(\spo[6]_INST_0_i_4_n_0 ),
        .I3(\spo[1]_INST_0_i_2_n_0 ),
        .I4(a[11]),
        .I5(\spo[1]_INST_0_i_3_n_0 ),
        .O(spo[1]));
  LUT6 #(
    .INIT(64'hAAAAAEFFAAAAAAAA)) 
    \spo[1]_INST_0_i_1 
       (.I0(a[6]),
        .I1(\spo[1]_INST_0_i_4_n_0 ),
        .I2(\spo[4]_INST_0_i_7_n_0 ),
        .I3(\spo[6]_INST_0_i_11_n_0 ),
        .I4(\spo[1]_INST_0_i_5_n_0 ),
        .I5(\spo[4]_INST_0_i_4_n_0 ),
        .O(\spo[1]_INST_0_i_1_n_0 ));
  MUXF7 \spo[1]_INST_0_i_10 
       (.I0(\spo[1]_INST_0_i_20_n_0 ),
        .I1(\spo[1]_INST_0_i_21_n_0 ),
        .O(\spo[1]_INST_0_i_10_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h8888888888800000)) 
    \spo[1]_INST_0_i_11 
       (.I0(\spo[1]_INST_0_i_22_n_0 ),
        .I1(\spo[4]_INST_0_i_13_n_0 ),
        .I2(\spo[1]_INST_0_i_23_n_0 ),
        .I3(\spo[1]_INST_0_i_24_n_0 ),
        .I4(\spo[1]_INST_0_i_25_n_0 ),
        .I5(\spo[1]_INST_0_i_26_n_0 ),
        .O(\spo[1]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hB0B0B000FFFFFFFF)) 
    \spo[1]_INST_0_i_12 
       (.I0(\spo[1]_INST_0_i_27_n_0 ),
        .I1(\spo[1]_INST_0_i_28_n_0 ),
        .I2(\spo[5]_INST_0_i_5_n_0 ),
        .I3(\spo[4]_INST_0_i_27_n_0 ),
        .I4(\spo[1]_INST_0_i_29_n_0 ),
        .I5(a[10]),
        .O(\spo[1]_INST_0_i_12_n_0 ));
  MUXF7 \spo[1]_INST_0_i_13 
       (.I0(\spo[1]_INST_0_i_30_n_0 ),
        .I1(\spo[1]_INST_0_i_31_n_0 ),
        .O(\spo[1]_INST_0_i_13_n_0 ),
        .S(a[5]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spo[1]_INST_0_i_14 
       (.I0(a[7]),
        .I1(a[0]),
        .O(\spo[1]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF52FFFFFFFFF)) 
    \spo[1]_INST_0_i_15 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[7]),
        .I5(a[3]),
        .O(\spo[1]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h9555955DFFFFFFFF)) 
    \spo[1]_INST_0_i_16 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[7]),
        .I5(a[3]),
        .O(\spo[1]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AC05A085)) 
    \spo[1]_INST_0_i_17 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[7]),
        .I5(a[3]),
        .O(\spo[1]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFCF0D02080008003)) 
    \spo[1]_INST_0_i_18 
       (.I0(a[7]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[1]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h5757757E17553156)) 
    \spo[1]_INST_0_i_19 
       (.I0(a[3]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[7]),
        .O(\spo[1]_INST_0_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h000055FD)) 
    \spo[1]_INST_0_i_2 
       (.I0(a[9]),
        .I1(\spo[1]_INST_0_i_6_n_0 ),
        .I2(\spo[1]_INST_0_i_7_n_0 ),
        .I3(\spo[1]_INST_0_i_8_n_0 ),
        .I4(\spo[1]_INST_0_i_9_n_0 ),
        .O(\spo[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hD00FD3FDE7DFE374)) 
    \spo[1]_INST_0_i_20 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[1]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hA00400FF055F0A0F)) 
    \spo[1]_INST_0_i_21 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[1]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEEEFEEEEEEE)) 
    \spo[1]_INST_0_i_22 
       (.I0(\spo[4]_INST_0_i_31_n_0 ),
        .I1(\spo[1]_INST_0_i_32_n_0 ),
        .I2(\spo[1]_INST_0_i_33_n_0 ),
        .I3(a[2]),
        .I4(a[4]),
        .I5(\spo[7]_INST_0_i_38_n_0 ),
        .O(\spo[1]_INST_0_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \spo[1]_INST_0_i_23 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .O(\spo[1]_INST_0_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \spo[1]_INST_0_i_24 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .O(\spo[1]_INST_0_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spo[1]_INST_0_i_25 
       (.I0(a[3]),
        .I1(a[7]),
        .O(\spo[1]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF55FFFFC055)) 
    \spo[1]_INST_0_i_26 
       (.I0(\spo[1]_INST_0_i_34_n_0 ),
        .I1(\spo[1]_INST_0_i_35_n_0 ),
        .I2(a[7]),
        .I3(a[3]),
        .I4(a[5]),
        .I5(\spo[1]_INST_0_i_36_n_0 ),
        .O(\spo[1]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEFEFEFEFE)) 
    \spo[1]_INST_0_i_27 
       (.I0(\spo[4]_INST_0_i_44_n_0 ),
        .I1(\spo[1]_INST_0_i_37_n_0 ),
        .I2(a[5]),
        .I3(\spo[1]_INST_0_i_25_n_0 ),
        .I4(\spo[4]_INST_0_i_45_n_0 ),
        .I5(\spo[4]_INST_0_i_46_n_0 ),
        .O(\spo[1]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF11FEFFFFFFFF)) 
    \spo[1]_INST_0_i_28 
       (.I0(a[1]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[1]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h5DD1DDDDD8C09840)) 
    \spo[1]_INST_0_i_29 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[1]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFCFCFCFDFCFFFCFD)) 
    \spo[1]_INST_0_i_3 
       (.I0(\spo[1]_INST_0_i_10_n_0 ),
        .I1(\spo[1]_INST_0_i_11_n_0 ),
        .I2(\spo[1]_INST_0_i_12_n_0 ),
        .I3(a[8]),
        .I4(a[9]),
        .I5(\spo[1]_INST_0_i_13_n_0 ),
        .O(\spo[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA5AD8FCF0F0F5F5A)) 
    \spo[1]_INST_0_i_30 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hA00500B505450A0D)) 
    \spo[1]_INST_0_i_31 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[1]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h06000400FFFFFFFF)) 
    \spo[1]_INST_0_i_32 
       (.I0(a[1]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[7]),
        .I4(a[4]),
        .I5(a[5]),
        .O(\spo[1]_INST_0_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \spo[1]_INST_0_i_33 
       (.I0(a[7]),
        .I1(a[3]),
        .O(\spo[1]_INST_0_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h575E)) 
    \spo[1]_INST_0_i_34 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .O(\spo[1]_INST_0_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h6000)) 
    \spo[1]_INST_0_i_35 
       (.I0(a[1]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[2]),
        .O(\spo[1]_INST_0_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \spo[1]_INST_0_i_36 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[7]),
        .O(\spo[1]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h4EF0000000000000)) 
    \spo[1]_INST_0_i_37 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[7]),
        .I5(a[3]),
        .O(\spo[1]_INST_0_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \spo[1]_INST_0_i_4 
       (.I0(a[0]),
        .I1(a[2]),
        .O(\spo[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0202020201000101)) 
    \spo[1]_INST_0_i_5 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[5]),
        .I3(\spo[1]_INST_0_i_14_n_0 ),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00BF0000FFFFFFFF)) 
    \spo[1]_INST_0_i_6 
       (.I0(\spo[6]_INST_0_i_39_n_0 ),
        .I1(a[7]),
        .I2(a[3]),
        .I3(\spo[4]_INST_0_i_22_n_0 ),
        .I4(\spo[1]_INST_0_i_15_n_0 ),
        .I5(a[8]),
        .O(\spo[1]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \spo[1]_INST_0_i_7 
       (.I0(\spo[1]_INST_0_i_16_n_0 ),
        .I1(\spo[1]_INST_0_i_17_n_0 ),
        .I2(a[5]),
        .O(\spo[1]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hABAA)) 
    \spo[1]_INST_0_i_8 
       (.I0(\spo[4]_INST_0_i_25_n_0 ),
        .I1(a[5]),
        .I2(a[8]),
        .I3(\spo[1]_INST_0_i_18_n_0 ),
        .O(\spo[1]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hAAAB)) 
    \spo[1]_INST_0_i_9 
       (.I0(\spo[4]_INST_0_i_9_n_0 ),
        .I1(\spo[1]_INST_0_i_19_n_0 ),
        .I2(a[5]),
        .I3(a[9]),
        .O(\spo[1]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8BBB8BB)) 
    \spo[2]_INST_0 
       (.I0(\spo[7]_INST_0_i_1_n_0 ),
        .I1(a[6]),
        .I2(\spo[2]_INST_0_i_1_n_0 ),
        .I3(\spo[2]_INST_0_i_2_n_0 ),
        .I4(a[10]),
        .I5(\spo[2]_INST_0_i_3_n_0 ),
        .O(spo[2]));
  LUT6 #(
    .INIT(64'h8A888888AAAAAAAA)) 
    \spo[2]_INST_0_i_1 
       (.I0(a[12]),
        .I1(a[11]),
        .I2(a[10]),
        .I3(\spo[2]_INST_0_i_4_n_0 ),
        .I4(\spo[2]_INST_0_i_5_n_0 ),
        .I5(\spo[7]_INST_0_i_12_n_0 ),
        .O(\spo[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020222222202222)) 
    \spo[2]_INST_0_i_10 
       (.I0(\spo[2]_INST_0_i_23_n_0 ),
        .I1(\spo[2]_INST_0_i_24_n_0 ),
        .I2(\spo[2]_INST_0_i_25_n_0 ),
        .I3(a[3]),
        .I4(a[5]),
        .I5(\spo[5]_INST_0_i_27_n_0 ),
        .O(\spo[2]_INST_0_i_10_n_0 ));
  MUXF7 \spo[2]_INST_0_i_11 
       (.I0(\spo[2]_INST_0_i_26_n_0 ),
        .I1(\spo[2]_INST_0_i_27_n_0 ),
        .O(\spo[2]_INST_0_i_11_n_0 ),
        .S(a[5]));
  MUXF7 \spo[2]_INST_0_i_12 
       (.I0(\spo[2]_INST_0_i_28_n_0 ),
        .I1(\spo[2]_INST_0_i_29_n_0 ),
        .O(\spo[2]_INST_0_i_12_n_0 ),
        .S(a[5]));
  LUT5 #(
    .INIT(32'h00FF1010)) 
    \spo[2]_INST_0_i_13 
       (.I0(\spo[2]_INST_0_i_30_n_0 ),
        .I1(\spo[2]_INST_0_i_31_n_0 ),
        .I2(\spo[2]_INST_0_i_32_n_0 ),
        .I3(\spo[2]_INST_0_i_33_n_0 ),
        .I4(a[5]),
        .O(\spo[2]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h47550390474B03F6)) 
    \spo[2]_INST_0_i_14 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[7]),
        .O(\spo[2]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h00530026)) 
    \spo[2]_INST_0_i_15 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[1]),
        .O(\spo[2]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000E800F7)) 
    \spo[2]_INST_0_i_16 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[7]),
        .I5(a[3]),
        .O(\spo[2]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h321F0B8BEAF7A2AA)) 
    \spo[2]_INST_0_i_17 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[2]),
        .O(\spo[2]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hBAAAAAAABAAABAAA)) 
    \spo[2]_INST_0_i_18 
       (.I0(a[10]),
        .I1(\spo[2]_INST_0_i_34_n_0 ),
        .I2(a[5]),
        .I3(\spo[2]_INST_0_i_7_n_0 ),
        .I4(\spo[7]_INST_0_i_19_n_0 ),
        .I5(\spo[2]_INST_0_i_35_n_0 ),
        .O(\spo[2]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hE0EF0000FFFFFFFF)) 
    \spo[2]_INST_0_i_19 
       (.I0(a[2]),
        .I1(\spo[4]_INST_0_i_42_n_0 ),
        .I2(a[7]),
        .I3(\spo[5]_INST_0_i_28_n_0 ),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[2]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00F70000FFFFFFFF)) 
    \spo[2]_INST_0_i_2 
       (.I0(\spo[2]_INST_0_i_6_n_0 ),
        .I1(\spo[2]_INST_0_i_7_n_0 ),
        .I2(a[5]),
        .I3(\spo[2]_INST_0_i_8_n_0 ),
        .I4(\spo[2]_INST_0_i_9_n_0 ),
        .I5(a[11]),
        .O(\spo[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAFAAFBAAFBAABB)) 
    \spo[2]_INST_0_i_20 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[7]),
        .O(\spo[2]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB509FFFF656B)) 
    \spo[2]_INST_0_i_21 
       (.I0(a[2]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[2]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hBAEEEFFEBBEAEEFA)) 
    \spo[2]_INST_0_i_22 
       (.I0(\spo[2]_INST_0_i_36_n_0 ),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[7]),
        .O(\spo[2]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF8FDC863F)) 
    \spo[2]_INST_0_i_23 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(\spo[2]_INST_0_i_36_n_0 ),
        .O(\spo[2]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0AA0A20028020280)) 
    \spo[2]_INST_0_i_24 
       (.I0(\spo[7]_INST_0_i_26_n_0 ),
        .I1(a[7]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[2]_INST_0_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFF3043)) 
    \spo[2]_INST_0_i_25 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[4]),
        .O(\spo[2]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0D690AD7F6A3F)) 
    \spo[2]_INST_0_i_26 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hFEFBFEFAF3F9FFF9)) 
    \spo[2]_INST_0_i_27 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[7]),
        .I5(a[3]),
        .O(\spo[2]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h22A788B2A8A901C5)) 
    \spo[2]_INST_0_i_28 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[4]),
        .O(\spo[2]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hFBFEFAFEFFF8F1F9)) 
    \spo[2]_INST_0_i_29 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[2]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_3 
       (.I0(\spo[2]_INST_0_i_10_n_0 ),
        .I1(\spo[2]_INST_0_i_11_n_0 ),
        .I2(a[9]),
        .I3(\spo[2]_INST_0_i_12_n_0 ),
        .I4(a[8]),
        .I5(\spo[2]_INST_0_i_13_n_0 ),
        .O(\spo[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0010011000101110)) 
    \spo[2]_INST_0_i_30 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[2]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h0020202222020020)) 
    \spo[2]_INST_0_i_31 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[2]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hFDDFFF7D5FD5D75D)) 
    \spo[2]_INST_0_i_32 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[7]),
        .O(\spo[2]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h00100011000000CF)) 
    \spo[2]_INST_0_i_33 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[7]),
        .I5(a[3]),
        .O(\spo[2]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h5555050055550015)) 
    \spo[2]_INST_0_i_34 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[4]),
        .I5(a[7]),
        .O(\spo[2]_INST_0_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hFFFB)) 
    \spo[2]_INST_0_i_35 
       (.I0(a[4]),
        .I1(a[7]),
        .I2(a[0]),
        .I3(a[2]),
        .O(\spo[2]_INST_0_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \spo[2]_INST_0_i_36 
       (.I0(a[5]),
        .I1(a[3]),
        .O(\spo[2]_INST_0_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \spo[2]_INST_0_i_4 
       (.I0(a[8]),
        .I1(a[9]),
        .O(\spo[2]_INST_0_i_4_n_0 ));
  MUXF7 \spo[2]_INST_0_i_5 
       (.I0(\spo[2]_INST_0_i_14_n_0 ),
        .I1(\spo[2]_INST_0_i_15_n_0 ),
        .O(\spo[2]_INST_0_i_5_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'hB1652E182EBEC888)) 
    \spo[2]_INST_0_i_6 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[2]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spo[2]_INST_0_i_7 
       (.I0(a[9]),
        .I1(a[8]),
        .O(\spo[2]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFB0B0B000)) 
    \spo[2]_INST_0_i_8 
       (.I0(\spo[2]_INST_0_i_16_n_0 ),
        .I1(\spo[6]_INST_0_i_11_n_0 ),
        .I2(\spo[5]_INST_0_i_5_n_0 ),
        .I3(a[5]),
        .I4(\spo[2]_INST_0_i_17_n_0 ),
        .I5(\spo[2]_INST_0_i_18_n_0 ),
        .O(\spo[2]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hBBB00000FFFFFFFF)) 
    \spo[2]_INST_0_i_9 
       (.I0(\spo[2]_INST_0_i_19_n_0 ),
        .I1(\spo[2]_INST_0_i_20_n_0 ),
        .I2(\spo[2]_INST_0_i_21_n_0 ),
        .I3(a[5]),
        .I4(\spo[2]_INST_0_i_22_n_0 ),
        .I5(\spo[4]_INST_0_i_13_n_0 ),
        .O(\spo[2]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hABAAABABABAAABAA)) 
    \spo[3]_INST_0 
       (.I0(\spo[6]_INST_0_i_1_n_0 ),
        .I1(a[6]),
        .I2(\spo[3]_INST_0_i_1_n_0 ),
        .I3(\spo[6]_INST_0_i_4_n_0 ),
        .I4(\spo[3]_INST_0_i_2_n_0 ),
        .I5(\spo[3]_INST_0_i_3_n_0 ),
        .O(spo[3]));
  LUT6 #(
    .INIT(64'h000000000DDD0D0D)) 
    \spo[3]_INST_0_i_1 
       (.I0(\spo[3]_INST_0_i_4_n_0 ),
        .I1(a[5]),
        .I2(\spo[6]_INST_0_i_11_n_0 ),
        .I3(\spo[3]_INST_0_i_5_n_0 ),
        .I4(\spo[3]_INST_0_i_6_n_0 ),
        .I5(\spo[6]_INST_0_i_10_n_0 ),
        .O(\spo[3]_INST_0_i_1_n_0 ));
  MUXF8 \spo[3]_INST_0_i_10 
       (.I0(\spo[3]_INST_0_i_21_n_0 ),
        .I1(\spo[3]_INST_0_i_22_n_0 ),
        .O(\spo[3]_INST_0_i_10_n_0 ),
        .S(a[8]));
  MUXF7 \spo[3]_INST_0_i_11 
       (.I0(\spo[3]_INST_0_i_23_n_0 ),
        .I1(\spo[3]_INST_0_i_24_n_0 ),
        .O(\spo[3]_INST_0_i_11_n_0 ),
        .S(a[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h0C080008)) 
    \spo[3]_INST_0_i_12 
       (.I0(\spo[3]_INST_0_i_25_n_0 ),
        .I1(a[8]),
        .I2(a[9]),
        .I3(a[5]),
        .I4(\spo[3]_INST_0_i_26_n_0 ),
        .O(\spo[3]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h3ABAB064FEF44055)) 
    \spo[3]_INST_0_i_13 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[3]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAF8FFFFABAC)) 
    \spo[3]_INST_0_i_14 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[7]),
        .O(\spo[3]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h67E8AA89ABEAEA4F)) 
    \spo[3]_INST_0_i_15 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[7]),
        .O(\spo[3]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA0A20AAAAAAAA)) 
    \spo[3]_INST_0_i_16 
       (.I0(\spo[7]_INST_0_i_54_n_0 ),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[7]),
        .O(\spo[3]_INST_0_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h2AAA2A2A)) 
    \spo[3]_INST_0_i_17 
       (.I0(a[8]),
        .I1(a[3]),
        .I2(a[5]),
        .I3(\spo[6]_INST_0_i_66_n_0 ),
        .I4(a[7]),
        .O(\spo[3]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hBAFAFAAAAAAAAAAA)) 
    \spo[3]_INST_0_i_18 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[3]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF4CBBAFFC)) 
    \spo[3]_INST_0_i_19 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[3]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00DF0000FFFFFFFF)) 
    \spo[3]_INST_0_i_2 
       (.I0(a[9]),
        .I1(a[8]),
        .I2(\spo[3]_INST_0_i_7_n_0 ),
        .I3(\spo[3]_INST_0_i_8_n_0 ),
        .I4(\spo[3]_INST_0_i_9_n_0 ),
        .I5(a[11]),
        .O(\spo[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFF23788)) 
    \spo[3]_INST_0_i_20 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[7]),
        .I5(a[3]),
        .O(\spo[3]_INST_0_i_20_n_0 ));
  MUXF7 \spo[3]_INST_0_i_21 
       (.I0(\spo[3]_INST_0_i_27_n_0 ),
        .I1(\spo[3]_INST_0_i_28_n_0 ),
        .O(\spo[3]_INST_0_i_21_n_0 ),
        .S(a[5]));
  MUXF7 \spo[3]_INST_0_i_22 
       (.I0(\spo[3]_INST_0_i_29_n_0 ),
        .I1(\spo[3]_INST_0_i_30_n_0 ),
        .O(\spo[3]_INST_0_i_22_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h2AACA3A12D8C8A81)) 
    \spo[3]_INST_0_i_23 
       (.I0(a[3]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[7]),
        .O(\spo[3]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h5FE5FFBEFFE5A5BC)) 
    \spo[3]_INST_0_i_24 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[3]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0AAAA817E2B701C5)) 
    \spo[3]_INST_0_i_25 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[2]),
        .O(\spo[3]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h5DF4FFEDFCFEBA45)) 
    \spo[3]_INST_0_i_26 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[3]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h774B4F7875586EF8)) 
    \spo[3]_INST_0_i_27 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[7]),
        .O(\spo[3]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hC000300D202F0000)) 
    \spo[3]_INST_0_i_28 
       (.I0(a[7]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[3]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hC5D50F7CF3F2C944)) 
    \spo[3]_INST_0_i_29 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[3]),
        .O(\spo[3]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF550CFFFF)) 
    \spo[3]_INST_0_i_3 
       (.I0(\spo[3]_INST_0_i_10_n_0 ),
        .I1(\spo[3]_INST_0_i_11_n_0 ),
        .I2(a[8]),
        .I3(a[9]),
        .I4(a[10]),
        .I5(\spo[3]_INST_0_i_12_n_0 ),
        .O(\spo[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF8A400A82177F27F)) 
    \spo[3]_INST_0_i_30 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[7]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[3]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h50FFAAA0A588D96D)) 
    \spo[3]_INST_0_i_4 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[3]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFF4)) 
    \spo[3]_INST_0_i_5 
       (.I0(a[1]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[4]),
        .O(\spo[3]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \spo[3]_INST_0_i_6 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[4]),
        .O(\spo[3]_INST_0_i_6_n_0 ));
  MUXF7 \spo[3]_INST_0_i_7 
       (.I0(\spo[3]_INST_0_i_13_n_0 ),
        .I1(\spo[3]_INST_0_i_14_n_0 ),
        .O(\spo[3]_INST_0_i_7_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFF0F020F0F)) 
    \spo[3]_INST_0_i_8 
       (.I0(\spo[3]_INST_0_i_15_n_0 ),
        .I1(a[5]),
        .I2(a[9]),
        .I3(\spo[3]_INST_0_i_16_n_0 ),
        .I4(\spo[3]_INST_0_i_17_n_0 ),
        .I5(a[10]),
        .O(\spo[3]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h4FFF4FFFFFFF4FFF)) 
    \spo[3]_INST_0_i_9 
       (.I0(\spo[3]_INST_0_i_18_n_0 ),
        .I1(\spo[3]_INST_0_i_19_n_0 ),
        .I2(a[8]),
        .I3(a[9]),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(\spo[3]_INST_0_i_20_n_0 ),
        .O(\spo[3]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hABAAABABABAAABAA)) 
    \spo[4]_INST_0 
       (.I0(\spo[6]_INST_0_i_1_n_0 ),
        .I1(a[6]),
        .I2(\spo[4]_INST_0_i_1_n_0 ),
        .I3(\spo[6]_INST_0_i_4_n_0 ),
        .I4(\spo[4]_INST_0_i_2_n_0 ),
        .I5(\spo[4]_INST_0_i_3_n_0 ),
        .O(spo[4]));
  LUT6 #(
    .INIT(64'h0202020222222202)) 
    \spo[4]_INST_0_i_1 
       (.I0(\spo[4]_INST_0_i_4_n_0 ),
        .I1(\spo[4]_INST_0_i_5_n_0 ),
        .I2(\spo[6]_INST_0_i_11_n_0 ),
        .I3(a[0]),
        .I4(\spo[4]_INST_0_i_6_n_0 ),
        .I5(\spo[4]_INST_0_i_7_n_0 ),
        .O(\spo[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AEAE00AE)) 
    \spo[4]_INST_0_i_10 
       (.I0(\spo[4]_INST_0_i_20_n_0 ),
        .I1(\spo[4]_INST_0_i_21_n_0 ),
        .I2(\spo[4]_INST_0_i_22_n_0 ),
        .I3(\spo[4]_INST_0_i_23_n_0 ),
        .I4(\spo[4]_INST_0_i_24_n_0 ),
        .I5(\spo[4]_INST_0_i_25_n_0 ),
        .O(\spo[4]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFE0E0E000)) 
    \spo[4]_INST_0_i_11 
       (.I0(\spo[4]_INST_0_i_26_n_0 ),
        .I1(\spo[4]_INST_0_i_27_n_0 ),
        .I2(\spo[5]_INST_0_i_5_n_0 ),
        .I3(\spo[4]_INST_0_i_28_n_0 ),
        .I4(\spo[4]_INST_0_i_29_n_0 ),
        .I5(\spo[4]_INST_0_i_30_n_0 ),
        .O(\spo[4]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAABFFFFFAABAFFFF)) 
    \spo[4]_INST_0_i_12 
       (.I0(\spo[4]_INST_0_i_31_n_0 ),
        .I1(\spo[4]_INST_0_i_32_n_0 ),
        .I2(a[7]),
        .I3(a[3]),
        .I4(a[5]),
        .I5(\spo[4]_INST_0_i_33_n_0 ),
        .O(\spo[4]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spo[4]_INST_0_i_13 
       (.I0(a[8]),
        .I1(a[9]),
        .O(\spo[4]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h4480C4016688EE01)) 
    \spo[4]_INST_0_i_14 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[7]),
        .O(\spo[4]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000F2F2000000FF)) 
    \spo[4]_INST_0_i_15 
       (.I0(\spo[4]_INST_0_i_34_n_0 ),
        .I1(a[5]),
        .I2(\spo[4]_INST_0_i_35_n_0 ),
        .I3(\spo[4]_INST_0_i_36_n_0 ),
        .I4(a[8]),
        .I5(a[9]),
        .O(\spo[4]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hC241FFFF0000FFFF)) 
    \spo[4]_INST_0_i_16 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[4]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[4]_INST_0_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h003A)) 
    \spo[4]_INST_0_i_17 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .O(\spo[4]_INST_0_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h2880)) 
    \spo[4]_INST_0_i_18 
       (.I0(a[0]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .O(\spo[4]_INST_0_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h54)) 
    \spo[4]_INST_0_i_19 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[2]),
        .O(\spo[4]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00FE000EFFFFFFFF)) 
    \spo[4]_INST_0_i_2 
       (.I0(\spo[4]_INST_0_i_8_n_0 ),
        .I1(a[5]),
        .I2(a[9]),
        .I3(\spo[4]_INST_0_i_9_n_0 ),
        .I4(\spo[4]_INST_0_i_10_n_0 ),
        .I5(a[11]),
        .O(\spo[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00510000FFFFFFFF)) 
    \spo[4]_INST_0_i_20 
       (.I0(\spo[4]_INST_0_i_37_n_0 ),
        .I1(\spo[4]_INST_0_i_38_n_0 ),
        .I2(\spo[4]_INST_0_i_39_n_0 ),
        .I3(a[5]),
        .I4(\spo[4]_INST_0_i_40_n_0 ),
        .I5(a[8]),
        .O(\spo[4]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h9015BB5DFFFFFFFF)) 
    \spo[4]_INST_0_i_21 
       (.I0(a[1]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[7]),
        .I5(a[3]),
        .O(\spo[4]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0F1F0F0F0F1F0FFF)) 
    \spo[4]_INST_0_i_22 
       (.I0(\spo[4]_INST_0_i_41_n_0 ),
        .I1(\spo[6]_INST_0_i_65_n_0 ),
        .I2(a[5]),
        .I3(a[3]),
        .I4(a[7]),
        .I5(\spo[4]_INST_0_i_32_n_0 ),
        .O(\spo[4]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA80080841113)) 
    \spo[4]_INST_0_i_23 
       (.I0(a[1]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[7]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[4]_INST_0_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \spo[4]_INST_0_i_24 
       (.I0(a[5]),
        .I1(a[8]),
        .O(\spo[4]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h5400000054005500)) 
    \spo[4]_INST_0_i_25 
       (.I0(a[8]),
        .I1(\spo[4]_INST_0_i_42_n_0 ),
        .I2(a[2]),
        .I3(a[5]),
        .I4(a[3]),
        .I5(\spo[4]_INST_0_i_43_n_0 ),
        .O(\spo[4]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h5DD1DC80DD999498)) 
    \spo[4]_INST_0_i_26 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[4]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h2AA80822FFFFFFFF)) 
    \spo[4]_INST_0_i_27 
       (.I0(\spo[1]_INST_0_i_25_n_0 ),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[5]),
        .O(\spo[4]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h5EF0000000000000)) 
    \spo[4]_INST_0_i_28 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[4]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEEEEEEE)) 
    \spo[4]_INST_0_i_29 
       (.I0(\spo[4]_INST_0_i_44_n_0 ),
        .I1(a[5]),
        .I2(\spo[1]_INST_0_i_25_n_0 ),
        .I3(\spo[4]_INST_0_i_45_n_0 ),
        .I4(\spo[4]_INST_0_i_46_n_0 ),
        .I5(\spo[4]_INST_0_i_47_n_0 ),
        .O(\spo[4]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAEAEAAA)) 
    \spo[4]_INST_0_i_3 
       (.I0(\spo[4]_INST_0_i_11_n_0 ),
        .I1(\spo[4]_INST_0_i_12_n_0 ),
        .I2(\spo[4]_INST_0_i_13_n_0 ),
        .I3(a[5]),
        .I4(\spo[4]_INST_0_i_14_n_0 ),
        .I5(\spo[4]_INST_0_i_15_n_0 ),
        .O(\spo[4]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h1000FFFF)) 
    \spo[4]_INST_0_i_30 
       (.I0(\spo[4]_INST_0_i_48_n_0 ),
        .I1(a[8]),
        .I2(a[9]),
        .I3(a[5]),
        .I4(a[10]),
        .O(\spo[4]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h62447EDE00000000)) 
    \spo[4]_INST_0_i_31 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[7]),
        .I5(a[3]),
        .O(\spo[4]_INST_0_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hD7)) 
    \spo[4]_INST_0_i_32 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[2]),
        .O(\spo[4]_INST_0_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hFB80)) 
    \spo[4]_INST_0_i_33 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[4]),
        .O(\spo[4]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h5FFA5F2AA0102005)) 
    \spo[4]_INST_0_i_34 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[4]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0000EA8A00000000)) 
    \spo[4]_INST_0_i_35 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[4]_INST_0_i_35_n_0 ));
  MUXF7 \spo[4]_INST_0_i_36 
       (.I0(\spo[4]_INST_0_i_49_n_0 ),
        .I1(\spo[4]_INST_0_i_50_n_0 ),
        .O(\spo[4]_INST_0_i_36_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h1001100110110001)) 
    \spo[4]_INST_0_i_37 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[4]_INST_0_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h44444044)) 
    \spo[4]_INST_0_i_38 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .O(\spo[4]_INST_0_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spo[4]_INST_0_i_39 
       (.I0(a[4]),
        .I1(a[2]),
        .O(\spo[4]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h5454545454545455)) 
    \spo[4]_INST_0_i_4 
       (.I0(\spo[6]_INST_0_i_10_n_0 ),
        .I1(a[5]),
        .I2(\spo[4]_INST_0_i_16_n_0 ),
        .I3(\spo[4]_INST_0_i_17_n_0 ),
        .I4(\spo[4]_INST_0_i_18_n_0 ),
        .I5(a[7]),
        .O(\spo[4]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h830FFFFF)) 
    \spo[4]_INST_0_i_40 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[2]),
        .I4(a[3]),
        .O(\spo[4]_INST_0_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \spo[4]_INST_0_i_41 
       (.I0(a[1]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[2]),
        .O(\spo[4]_INST_0_i_41_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \spo[4]_INST_0_i_42 
       (.I0(a[4]),
        .I1(a[1]),
        .O(\spo[4]_INST_0_i_42_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00FF00FE)) 
    \spo[4]_INST_0_i_43 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[7]),
        .O(\spo[4]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AEB1)) 
    \spo[4]_INST_0_i_44 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[4]_INST_0_i_44_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \spo[4]_INST_0_i_45 
       (.I0(a[4]),
        .I1(a[1]),
        .O(\spo[4]_INST_0_i_45_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \spo[4]_INST_0_i_46 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[0]),
        .O(\spo[4]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h4040044040400004)) 
    \spo[4]_INST_0_i_47 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[4]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h8411FFFF8410FFFF)) 
    \spo[4]_INST_0_i_48 
       (.I0(a[1]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[4]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hAA07AA550ABFA7A0)) 
    \spo[4]_INST_0_i_49 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[4]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h30F000000F2B0000)) 
    \spo[4]_INST_0_i_5 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(\spo[7]_INST_0_i_26_n_0 ),
        .I5(a[4]),
        .O(\spo[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h810F1223800F1723)) 
    \spo[4]_INST_0_i_50 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[7]),
        .O(\spo[4]_INST_0_i_50_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \spo[4]_INST_0_i_6 
       (.I0(a[2]),
        .I1(a[1]),
        .O(\spo[4]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \spo[4]_INST_0_i_7 
       (.I0(a[4]),
        .I1(a[3]),
        .O(\spo[4]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h1213FFCC10013B4C)) 
    \spo[4]_INST_0_i_8 
       (.I0(a[0]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[4]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00002AFF)) 
    \spo[4]_INST_0_i_9 
       (.I0(a[5]),
        .I1(\spo[5]_INST_0_i_23_n_0 ),
        .I2(\spo[4]_INST_0_i_19_n_0 ),
        .I3(a[8]),
        .I4(a[9]),
        .I5(a[10]),
        .O(\spo[4]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF040000)) 
    \spo[5]_INST_0 
       (.I0(\spo[5]_INST_0_i_1_n_0 ),
        .I1(a[10]),
        .I2(\spo[5]_INST_0_i_2_n_0 ),
        .I3(\spo[5]_INST_0_i_3_n_0 ),
        .I4(a[12]),
        .I5(\spo[5]_INST_0_i_4_n_0 ),
        .O(spo[5]));
  LUT6 #(
    .INIT(64'h0D0D0D0D0000000D)) 
    \spo[5]_INST_0_i_1 
       (.I0(\spo[5]_INST_0_i_5_n_0 ),
        .I1(\spo[5]_INST_0_i_6_n_0 ),
        .I2(\spo[5]_INST_0_i_7_n_0 ),
        .I3(\spo[5]_INST_0_i_8_n_0 ),
        .I4(\spo[5]_INST_0_i_9_n_0 ),
        .I5(\spo[5]_INST_0_i_10_n_0 ),
        .O(\spo[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00400000FFFFFFFF)) 
    \spo[5]_INST_0_i_10 
       (.I0(a[7]),
        .I1(\spo[5]_INST_0_i_24_n_0 ),
        .I2(a[2]),
        .I3(a[1]),
        .I4(\spo[7]_INST_0_i_26_n_0 ),
        .I5(\spo[2]_INST_0_i_7_n_0 ),
        .O(\spo[5]_INST_0_i_10_n_0 ));
  MUXF8 \spo[5]_INST_0_i_11 
       (.I0(\spo[5]_INST_0_i_25_n_0 ),
        .I1(\spo[5]_INST_0_i_26_n_0 ),
        .O(\spo[5]_INST_0_i_11_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h0090000000E80000)) 
    \spo[5]_INST_0_i_12 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[7]),
        .I5(a[3]),
        .O(\spo[5]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h440C4400440C44CC)) 
    \spo[5]_INST_0_i_13 
       (.I0(\spo[5]_INST_0_i_27_n_0 ),
        .I1(a[8]),
        .I2(\spo[5]_INST_0_i_28_n_0 ),
        .I3(a[3]),
        .I4(a[7]),
        .I5(\spo[5]_INST_0_i_29_n_0 ),
        .O(\spo[5]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0203020202020202)) 
    \spo[5]_INST_0_i_14 
       (.I0(a[8]),
        .I1(a[9]),
        .I2(a[5]),
        .I3(a[3]),
        .I4(a[7]),
        .I5(\spo[5]_INST_0_i_30_n_0 ),
        .O(\spo[5]_INST_0_i_14_n_0 ));
  MUXF7 \spo[5]_INST_0_i_15 
       (.I0(\spo[5]_INST_0_i_31_n_0 ),
        .I1(\spo[5]_INST_0_i_32_n_0 ),
        .O(\spo[5]_INST_0_i_15_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'hC505FFFFF535FFFF)) 
    \spo[5]_INST_0_i_16 
       (.I0(\spo[5]_INST_0_i_33_n_0 ),
        .I1(a[8]),
        .I2(a[9]),
        .I3(\spo[5]_INST_0_i_34_n_0 ),
        .I4(a[10]),
        .I5(\spo[5]_INST_0_i_35_n_0 ),
        .O(\spo[5]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBB888BBBBB)) 
    \spo[5]_INST_0_i_17 
       (.I0(\spo[5]_INST_0_i_36_n_0 ),
        .I1(a[8]),
        .I2(\spo[5]_INST_0_i_37_n_0 ),
        .I3(\spo[7]_INST_0_i_19_n_0 ),
        .I4(a[5]),
        .I5(\spo[5]_INST_0_i_38_n_0 ),
        .O(\spo[5]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF05000530)) 
    \spo[5]_INST_0_i_18 
       (.I0(\spo[5]_INST_0_i_39_n_0 ),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[8]),
        .I4(\spo[5]_INST_0_i_40_n_0 ),
        .I5(a[10]),
        .O(\spo[5]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0107A51B01070500)) 
    \spo[5]_INST_0_i_19 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[4]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0D00DDDD00000000)) 
    \spo[5]_INST_0_i_2 
       (.I0(a[9]),
        .I1(\spo[5]_INST_0_i_11_n_0 ),
        .I2(\spo[5]_INST_0_i_12_n_0 ),
        .I3(\spo[5]_INST_0_i_13_n_0 ),
        .I4(\spo[5]_INST_0_i_14_n_0 ),
        .I5(a[6]),
        .O(\spo[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8FDFBFFFDFFF10BF)) 
    \spo[5]_INST_0_i_20 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[7]),
        .I4(a[2]),
        .I5(a[4]),
        .O(\spo[5]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFAF7F6FFFFF7FFF)) 
    \spo[5]_INST_0_i_21 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[5]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \spo[5]_INST_0_i_22 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(\spo[5]_INST_0_i_41_n_0 ),
        .O(\spo[5]_INST_0_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spo[5]_INST_0_i_23 
       (.I0(a[7]),
        .I1(a[3]),
        .O(\spo[5]_INST_0_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \spo[5]_INST_0_i_24 
       (.I0(a[4]),
        .I1(a[0]),
        .O(\spo[5]_INST_0_i_24_n_0 ));
  MUXF7 \spo[5]_INST_0_i_25 
       (.I0(\spo[5]_INST_0_i_42_n_0 ),
        .I1(\spo[5]_INST_0_i_43_n_0 ),
        .O(\spo[5]_INST_0_i_25_n_0 ),
        .S(a[5]));
  MUXF7 \spo[5]_INST_0_i_26 
       (.I0(\spo[5]_INST_0_i_44_n_0 ),
        .I1(\spo[5]_INST_0_i_45_n_0 ),
        .O(\spo[5]_INST_0_i_26_n_0 ),
        .S(a[5]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \spo[5]_INST_0_i_27 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[4]),
        .O(\spo[5]_INST_0_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \spo[5]_INST_0_i_28 
       (.I0(a[1]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[2]),
        .O(\spo[5]_INST_0_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \spo[5]_INST_0_i_29 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[2]),
        .O(\spo[5]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAAA)) 
    \spo[5]_INST_0_i_3 
       (.I0(a[11]),
        .I1(a[6]),
        .I2(a[8]),
        .I3(a[9]),
        .I4(a[10]),
        .I5(\spo[5]_INST_0_i_15_n_0 ),
        .O(\spo[5]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \spo[5]_INST_0_i_30 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .O(\spo[5]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h05520AF6FF125012)) 
    \spo[5]_INST_0_i_31 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[5]_INST_0_i_31_n_0 ));
  LUT5 #(
    .INIT(32'h01050F00)) 
    \spo[5]_INST_0_i_32 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[3]),
        .O(\spo[5]_INST_0_i_32_n_0 ));
  MUXF8 \spo[5]_INST_0_i_33 
       (.I0(\spo[5]_INST_0_i_46_n_0 ),
        .I1(\spo[5]_INST_0_i_47_n_0 ),
        .O(\spo[5]_INST_0_i_33_n_0 ),
        .S(a[8]));
  MUXF7 \spo[5]_INST_0_i_34 
       (.I0(\spo[5]_INST_0_i_48_n_0 ),
        .I1(\spo[5]_INST_0_i_49_n_0 ),
        .O(\spo[5]_INST_0_i_34_n_0 ),
        .S(a[5]));
  MUXF7 \spo[5]_INST_0_i_35 
       (.I0(\spo[5]_INST_0_i_50_n_0 ),
        .I1(\spo[5]_INST_0_i_51_n_0 ),
        .O(\spo[5]_INST_0_i_35_n_0 ),
        .S(a[5]));
  MUXF7 \spo[5]_INST_0_i_36 
       (.I0(\spo[5]_INST_0_i_52_n_0 ),
        .I1(\spo[5]_INST_0_i_53_n_0 ),
        .O(\spo[5]_INST_0_i_36_n_0 ),
        .S(a[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \spo[5]_INST_0_i_37 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[7]),
        .O(\spo[5]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h5555001555554055)) 
    \spo[5]_INST_0_i_38 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_38_n_0 ));
  MUXF7 \spo[5]_INST_0_i_39 
       (.I0(\spo[5]_INST_0_i_54_n_0 ),
        .I1(\spo[5]_INST_0_i_55_n_0 ),
        .O(\spo[5]_INST_0_i_39_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h0000AA2000000000)) 
    \spo[5]_INST_0_i_4 
       (.I0(\spo[5]_INST_0_i_16_n_0 ),
        .I1(\spo[5]_INST_0_i_17_n_0 ),
        .I2(a[9]),
        .I3(\spo[5]_INST_0_i_18_n_0 ),
        .I4(a[6]),
        .I5(a[11]),
        .O(\spo[5]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF1BFF42C89151F77)) 
    \spo[5]_INST_0_i_40 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[5]_INST_0_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spo[5]_INST_0_i_41 
       (.I0(a[4]),
        .I1(a[1]),
        .O(\spo[5]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hAF3F723200200010)) 
    \spo[5]_INST_0_i_42 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[4]),
        .O(\spo[5]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h5555555775777777)) 
    \spo[5]_INST_0_i_43 
       (.I0(a[7]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[5]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000100000)) 
    \spo[5]_INST_0_i_44 
       (.I0(a[7]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[3]),
        .O(\spo[5]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h0000000202020003)) 
    \spo[5]_INST_0_i_45 
       (.I0(a[0]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[7]),
        .O(\spo[5]_INST_0_i_45_n_0 ));
  MUXF7 \spo[5]_INST_0_i_46 
       (.I0(\spo[5]_INST_0_i_56_n_0 ),
        .I1(\spo[5]_INST_0_i_57_n_0 ),
        .O(\spo[5]_INST_0_i_46_n_0 ),
        .S(a[5]));
  MUXF7 \spo[5]_INST_0_i_47 
       (.I0(\spo[5]_INST_0_i_58_n_0 ),
        .I1(\spo[5]_INST_0_i_59_n_0 ),
        .O(\spo[5]_INST_0_i_47_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h701FF8EA0FD76E20)) 
    \spo[5]_INST_0_i_48 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[5]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h000000005509000A)) 
    \spo[5]_INST_0_i_49 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[5]_INST_0_i_49_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spo[5]_INST_0_i_5 
       (.I0(a[8]),
        .I1(a[9]),
        .O(\spo[5]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDD935CFD361F360F)) 
    \spo[5]_INST_0_i_50 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[4]),
        .I4(a[7]),
        .I5(a[3]),
        .O(\spo[5]_INST_0_i_50_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFACDF)) 
    \spo[5]_INST_0_i_51 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[4]),
        .O(\spo[5]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h0FC2B03E6393458F)) 
    \spo[5]_INST_0_i_52 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[5]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hFFBBFFBDFFABFF31)) 
    \spo[5]_INST_0_i_53 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hA1F0E0A0B3D82313)) 
    \spo[5]_INST_0_i_54 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[5]_INST_0_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAA0FE40)) 
    \spo[5]_INST_0_i_55 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[5]_INST_0_i_55_n_0 ));
  LUT6 #(
    .INIT(64'h82EAEAD2BF968CEF)) 
    \spo[5]_INST_0_i_56 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[5]_INST_0_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF9F3F141)) 
    \spo[5]_INST_0_i_57 
       (.I0(a[0]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[5]_INST_0_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hB09C8C8E1121B233)) 
    \spo[5]_INST_0_i_58 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[7]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[2]),
        .O(\spo[5]_INST_0_i_58_n_0 ));
  LUT6 #(
    .INIT(64'hFAF8FAFCF8FDFDF9)) 
    \spo[5]_INST_0_i_59 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[7]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_59_n_0 ));
  MUXF7 \spo[5]_INST_0_i_6 
       (.I0(\spo[5]_INST_0_i_19_n_0 ),
        .I1(\spo[5]_INST_0_i_20_n_0 ),
        .O(\spo[5]_INST_0_i_6_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFF0001F001)) 
    \spo[5]_INST_0_i_7 
       (.I0(\spo[5]_INST_0_i_21_n_0 ),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[8]),
        .I4(\spo[5]_INST_0_i_22_n_0 ),
        .I5(a[6]),
        .O(\spo[5]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBFAF0000FFFFFFFF)) 
    \spo[5]_INST_0_i_8 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(\spo[5]_INST_0_i_23_n_0 ),
        .I5(a[5]),
        .O(\spo[5]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCC8CCCCC4FFF)) 
    \spo[5]_INST_0_i_9 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[7]),
        .I5(a[4]),
        .O(\spo[5]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hABABABABAAABAAAA)) 
    \spo[6]_INST_0 
       (.I0(\spo[6]_INST_0_i_1_n_0 ),
        .I1(a[6]),
        .I2(\spo[6]_INST_0_i_2_n_0 ),
        .I3(\spo[6]_INST_0_i_3_n_0 ),
        .I4(a[11]),
        .I5(\spo[6]_INST_0_i_4_n_0 ),
        .O(spo[6]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA8AAA80)) 
    \spo[6]_INST_0_i_1 
       (.I0(a[6]),
        .I1(\spo[6]_INST_0_i_5_n_0 ),
        .I2(a[11]),
        .I3(a[5]),
        .I4(\spo[6]_INST_0_i_6_n_0 ),
        .I5(a[12]),
        .O(\spo[6]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \spo[6]_INST_0_i_10 
       (.I0(a[8]),
        .I1(a[9]),
        .I2(a[10]),
        .I3(a[12]),
        .I4(a[11]),
        .O(\spo[6]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8AAA0AAAAAAAA)) 
    \spo[6]_INST_0_i_11 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[4]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[6]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h02020003)) 
    \spo[6]_INST_0_i_12 
       (.I0(a[0]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .O(\spo[6]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFF54FF54FFFF0000)) 
    \spo[6]_INST_0_i_13 
       (.I0(\spo[6]_INST_0_i_32_n_0 ),
        .I1(a[5]),
        .I2(\spo[6]_INST_0_i_33_n_0 ),
        .I3(\spo[6]_INST_0_i_34_n_0 ),
        .I4(\spo[6]_INST_0_i_35_n_0 ),
        .I5(a[9]),
        .O(\spo[6]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0100FFFFFFFFFFFF)) 
    \spo[6]_INST_0_i_14 
       (.I0(\spo[6]_INST_0_i_36_n_0 ),
        .I1(\spo[6]_INST_0_i_37_n_0 ),
        .I2(a[5]),
        .I3(\spo[6]_INST_0_i_38_n_0 ),
        .I4(a[9]),
        .I5(a[8]),
        .O(\spo[6]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAAEEAEAAAAAABAEF)) 
    \spo[6]_INST_0_i_15 
       (.I0(a[3]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[7]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h8888CCCC000CCCCC)) 
    \spo[6]_INST_0_i_16 
       (.I0(\spo[6]_INST_0_i_39_n_0 ),
        .I1(a[5]),
        .I2(\spo[6]_INST_0_i_40_n_0 ),
        .I3(\spo[6]_INST_0_i_41_n_0 ),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[6]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h00001F1F00FF1F1F)) 
    \spo[6]_INST_0_i_17 
       (.I0(a[5]),
        .I1(\spo[6]_INST_0_i_42_n_0 ),
        .I2(\spo[6]_INST_0_i_43_n_0 ),
        .I3(\spo[6]_INST_0_i_44_n_0 ),
        .I4(a[9]),
        .I5(a[8]),
        .O(\spo[6]_INST_0_i_17_n_0 ));
  MUXF7 \spo[6]_INST_0_i_18 
       (.I0(\spo[6]_INST_0_i_45_n_0 ),
        .I1(\spo[6]_INST_0_i_46_n_0 ),
        .O(\spo[6]_INST_0_i_18_n_0 ),
        .S(a[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \spo[6]_INST_0_i_19 
       (.I0(a[8]),
        .I1(a[9]),
        .I2(a[10]),
        .O(\spo[6]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h000E000E0000000E)) 
    \spo[6]_INST_0_i_2 
       (.I0(\spo[6]_INST_0_i_7_n_0 ),
        .I1(\spo[6]_INST_0_i_8_n_0 ),
        .I2(\spo[6]_INST_0_i_9_n_0 ),
        .I3(\spo[6]_INST_0_i_10_n_0 ),
        .I4(\spo[6]_INST_0_i_11_n_0 ),
        .I5(\spo[6]_INST_0_i_12_n_0 ),
        .O(\spo[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \spo[6]_INST_0_i_20 
       (.I0(\spo[6]_INST_0_i_47_n_0 ),
        .I1(a[9]),
        .I2(a[10]),
        .I3(a[7]),
        .I4(a[8]),
        .I5(\spo[6]_INST_0_i_48_n_0 ),
        .O(\spo[6]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0535FFFFF535FFFF)) 
    \spo[6]_INST_0_i_21 
       (.I0(\spo[6]_INST_0_i_49_n_0 ),
        .I1(\spo[6]_INST_0_i_50_n_0 ),
        .I2(a[9]),
        .I3(a[8]),
        .I4(a[10]),
        .I5(\spo[6]_INST_0_i_51_n_0 ),
        .O(\spo[6]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h404C4C4C4C4C404C)) 
    \spo[6]_INST_0_i_22 
       (.I0(\spo[6]_INST_0_i_52_n_0 ),
        .I1(a[3]),
        .I2(\spo[4]_INST_0_i_13_n_0 ),
        .I3(\spo[6]_INST_0_i_53_n_0 ),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[6]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hBEFFFEFFBEFFAEBB)) 
    \spo[6]_INST_0_i_23 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[9]),
        .I3(a[7]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hCCCFCCDDCCCCCCDD)) 
    \spo[6]_INST_0_i_24 
       (.I0(\spo[6]_INST_0_i_54_n_0 ),
        .I1(a[3]),
        .I2(\spo[6]_INST_0_i_55_n_0 ),
        .I3(a[8]),
        .I4(a[9]),
        .I5(\spo[6]_INST_0_i_56_n_0 ),
        .O(\spo[6]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAA8A00000A8A0000)) 
    \spo[6]_INST_0_i_25 
       (.I0(\spo[6]_INST_0_i_57_n_0 ),
        .I1(\spo[7]_INST_0_i_39_n_0 ),
        .I2(a[3]),
        .I3(a[7]),
        .I4(\spo[6]_INST_0_i_19_n_0 ),
        .I5(\spo[6]_INST_0_i_58_n_0 ),
        .O(\spo[6]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hCACAFACAFAFAFAFA)) 
    \spo[6]_INST_0_i_26 
       (.I0(\spo[6]_INST_0_i_59_n_0 ),
        .I1(\spo[6]_INST_0_i_60_n_0 ),
        .I2(a[8]),
        .I3(\spo[5]_INST_0_i_23_n_0 ),
        .I4(\spo[6]_INST_0_i_61_n_0 ),
        .I5(\spo[6]_INST_0_i_62_n_0 ),
        .O(\spo[6]_INST_0_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \spo[6]_INST_0_i_27 
       (.I0(a[10]),
        .I1(a[9]),
        .O(\spo[6]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h8B88000000000000)) 
    \spo[6]_INST_0_i_28 
       (.I0(\spo[6]_INST_0_i_63_n_0 ),
        .I1(a[8]),
        .I2(a[3]),
        .I3(\spo[5]_INST_0_i_30_n_0 ),
        .I4(a[9]),
        .I5(a[10]),
        .O(\spo[6]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h2022202220222000)) 
    \spo[6]_INST_0_i_29 
       (.I0(\spo[6]_INST_0_i_64_n_0 ),
        .I1(a[8]),
        .I2(\spo[6]_INST_0_i_65_n_0 ),
        .I3(a[3]),
        .I4(a[7]),
        .I5(\spo[6]_INST_0_i_61_n_0 ),
        .O(\spo[6]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h88888888BBB8B8B8)) 
    \spo[6]_INST_0_i_3 
       (.I0(\spo[6]_INST_0_i_13_n_0 ),
        .I1(a[10]),
        .I2(\spo[6]_INST_0_i_14_n_0 ),
        .I3(\spo[6]_INST_0_i_15_n_0 ),
        .I4(\spo[6]_INST_0_i_16_n_0 ),
        .I5(\spo[6]_INST_0_i_17_n_0 ),
        .O(\spo[6]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h0000AB00)) 
    \spo[6]_INST_0_i_30 
       (.I0(\spo[5]_INST_0_i_30_n_0 ),
        .I1(a[7]),
        .I2(\spo[6]_INST_0_i_66_n_0 ),
        .I3(a[8]),
        .I4(a[3]),
        .O(\spo[6]_INST_0_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFDDFDDDD)) 
    \spo[6]_INST_0_i_31 
       (.I0(a[10]),
        .I1(a[9]),
        .I2(a[0]),
        .I3(a[7]),
        .I4(a[3]),
        .O(\spo[6]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40404070)) 
    \spo[6]_INST_0_i_32 
       (.I0(\spo[6]_INST_0_i_67_n_0 ),
        .I1(a[3]),
        .I2(a[5]),
        .I3(\spo[6]_INST_0_i_68_n_0 ),
        .I4(\spo[6]_INST_0_i_69_n_0 ),
        .I5(a[8]),
        .O(\spo[6]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h70565FFC536646DC)) 
    \spo[6]_INST_0_i_33 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[7]),
        .O(\spo[6]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hC000C0C044444444)) 
    \spo[6]_INST_0_i_34 
       (.I0(\spo[6]_INST_0_i_70_n_0 ),
        .I1(a[8]),
        .I2(\spo[6]_INST_0_i_71_n_0 ),
        .I3(\spo[6]_INST_0_i_72_n_0 ),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[6]_INST_0_i_34_n_0 ));
  MUXF8 \spo[6]_INST_0_i_35 
       (.I0(\spo[6]_INST_0_i_73_n_0 ),
        .I1(\spo[6]_INST_0_i_74_n_0 ),
        .O(\spo[6]_INST_0_i_35_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h0101110111010001)) 
    \spo[6]_INST_0_i_36 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h000000008AA008AA)) 
    \spo[6]_INST_0_i_37 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[3]),
        .O(\spo[6]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h15561D56FFFFFFFF)) 
    \spo[6]_INST_0_i_38 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[7]),
        .I5(a[3]),
        .O(\spo[6]_INST_0_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h9017)) 
    \spo[6]_INST_0_i_39 
       (.I0(a[1]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[2]),
        .O(\spo[6]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAEFAAAAAAAA)) 
    \spo[6]_INST_0_i_4 
       (.I0(a[12]),
        .I1(\spo[6]_INST_0_i_18_n_0 ),
        .I2(\spo[6]_INST_0_i_19_n_0 ),
        .I3(\spo[6]_INST_0_i_20_n_0 ),
        .I4(a[11]),
        .I5(\spo[6]_INST_0_i_21_n_0 ),
        .O(\spo[6]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0140)) 
    \spo[6]_INST_0_i_40 
       (.I0(a[0]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .O(\spo[6]_INST_0_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h2282)) 
    \spo[6]_INST_0_i_41 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[1]),
        .O(\spo[6]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h94550E5F9E051508)) 
    \spo[6]_INST_0_i_42 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[4]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h4444CCCC00C0CCCC)) 
    \spo[6]_INST_0_i_43 
       (.I0(\spo[6]_INST_0_i_75_n_0 ),
        .I1(a[8]),
        .I2(\spo[6]_INST_0_i_76_n_0 ),
        .I3(\spo[6]_INST_0_i_77_n_0 ),
        .I4(a[5]),
        .I5(a[3]),
        .O(\spo[6]_INST_0_i_43_n_0 ));
  MUXF7 \spo[6]_INST_0_i_44 
       (.I0(\spo[6]_INST_0_i_78_n_0 ),
        .I1(\spo[6]_INST_0_i_79_n_0 ),
        .O(\spo[6]_INST_0_i_44_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h9FDF7F77EFCDBFBF)) 
    \spo[6]_INST_0_i_45 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[7]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hFFCFF77CF3F3FBFF)) 
    \spo[6]_INST_0_i_46 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hFFD002F5FFFFFFFF)) 
    \spo[6]_INST_0_i_47 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[4]),
        .I5(a[5]),
        .O(\spo[6]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h00000000C50CCC37)) 
    \spo[6]_INST_0_i_48 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[6]_INST_0_i_48_n_0 ));
  MUXF8 \spo[6]_INST_0_i_49 
       (.I0(\spo[6]_INST_0_i_80_n_0 ),
        .I1(\spo[6]_INST_0_i_81_n_0 ),
        .O(\spo[6]_INST_0_i_49_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h00000000BBBBFFBF)) 
    \spo[6]_INST_0_i_5 
       (.I0(\spo[6]_INST_0_i_22_n_0 ),
        .I1(a[10]),
        .I2(a[8]),
        .I3(\spo[6]_INST_0_i_23_n_0 ),
        .I4(\spo[6]_INST_0_i_24_n_0 ),
        .I5(\spo[6]_INST_0_i_25_n_0 ),
        .O(\spo[6]_INST_0_i_5_n_0 ));
  MUXF7 \spo[6]_INST_0_i_50 
       (.I0(\spo[6]_INST_0_i_82_n_0 ),
        .I1(\spo[6]_INST_0_i_83_n_0 ),
        .O(\spo[6]_INST_0_i_50_n_0 ),
        .S(a[5]));
  LUT5 #(
    .INIT(32'h00000002)) 
    \spo[6]_INST_0_i_51 
       (.I0(\spo[6]_INST_0_i_84_n_0 ),
        .I1(\spo[6]_INST_0_i_85_n_0 ),
        .I2(a[7]),
        .I3(\spo[6]_INST_0_i_86_n_0 ),
        .I4(\spo[6]_INST_0_i_87_n_0 ),
        .O(\spo[6]_INST_0_i_51_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00004447)) 
    \spo[6]_INST_0_i_52 
       (.I0(a[2]),
        .I1(a[7]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[4]),
        .O(\spo[6]_INST_0_i_52_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \spo[6]_INST_0_i_53 
       (.I0(a[4]),
        .I1(a[1]),
        .O(\spo[6]_INST_0_i_53_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hFFFB)) 
    \spo[6]_INST_0_i_54 
       (.I0(a[1]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[4]),
        .O(\spo[6]_INST_0_i_54_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \spo[6]_INST_0_i_55 
       (.I0(a[0]),
        .I1(a[7]),
        .O(\spo[6]_INST_0_i_55_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \spo[6]_INST_0_i_56 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[2]),
        .O(\spo[6]_INST_0_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hAAABAAAAAAEAAAFF)) 
    \spo[6]_INST_0_i_57 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[2]),
        .I5(a[7]),
        .O(\spo[6]_INST_0_i_57_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \spo[6]_INST_0_i_58 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[4]),
        .O(\spo[6]_INST_0_i_58_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFE1E6FFFF)) 
    \spo[6]_INST_0_i_59 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[7]),
        .I5(a[4]),
        .O(\spo[6]_INST_0_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h0E0E0E0E0000000E)) 
    \spo[6]_INST_0_i_6 
       (.I0(\spo[6]_INST_0_i_26_n_0 ),
        .I1(\spo[6]_INST_0_i_27_n_0 ),
        .I2(\spo[6]_INST_0_i_28_n_0 ),
        .I3(\spo[6]_INST_0_i_29_n_0 ),
        .I4(\spo[6]_INST_0_i_30_n_0 ),
        .I5(\spo[6]_INST_0_i_31_n_0 ),
        .O(\spo[6]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h1111111111111001)) 
    \spo[6]_INST_0_i_60 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[6]_INST_0_i_60_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \spo[6]_INST_0_i_61 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[4]),
        .O(\spo[6]_INST_0_i_61_n_0 ));
  LUT6 #(
    .INIT(64'h00000018FFFFFFFF)) 
    \spo[6]_INST_0_i_62 
       (.I0(a[7]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[6]_INST_0_i_62_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000320C)) 
    \spo[6]_INST_0_i_63 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[7]),
        .I5(a[4]),
        .O(\spo[6]_INST_0_i_63_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0042FFFFFFFF)) 
    \spo[6]_INST_0_i_64 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[6]_INST_0_i_64_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \spo[6]_INST_0_i_65 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[4]),
        .O(\spo[6]_INST_0_i_65_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \spo[6]_INST_0_i_66 
       (.I0(a[1]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[2]),
        .O(\spo[6]_INST_0_i_66_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h8410)) 
    \spo[6]_INST_0_i_67 
       (.I0(a[1]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[0]),
        .O(\spo[6]_INST_0_i_67_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h000D)) 
    \spo[6]_INST_0_i_68 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[2]),
        .O(\spo[6]_INST_0_i_68_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \spo[6]_INST_0_i_69 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[4]),
        .O(\spo[6]_INST_0_i_69_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAEBAEEFAF)) 
    \spo[6]_INST_0_i_7 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[7]),
        .O(\spo[6]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h22AA80752080C55F)) 
    \spo[6]_INST_0_i_70 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[7]),
        .I3(a[4]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_70_n_0 ));
  LUT6 #(
    .INIT(64'hEEDCCCCCCDFFEEDF)) 
    \spo[6]_INST_0_i_71 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[6]_INST_0_i_71_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hCB8A21BB)) 
    \spo[6]_INST_0_i_72 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[2]),
        .O(\spo[6]_INST_0_i_72_n_0 ));
  MUXF7 \spo[6]_INST_0_i_73 
       (.I0(\spo[6]_INST_0_i_88_n_0 ),
        .I1(\spo[6]_INST_0_i_89_n_0 ),
        .O(\spo[6]_INST_0_i_73_n_0 ),
        .S(a[5]));
  MUXF7 \spo[6]_INST_0_i_74 
       (.I0(\spo[6]_INST_0_i_90_n_0 ),
        .I1(\spo[6]_INST_0_i_91_n_0 ),
        .O(\spo[6]_INST_0_i_74_n_0 ),
        .S(a[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \spo[6]_INST_0_i_75 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[7]),
        .O(\spo[6]_INST_0_i_75_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spo[6]_INST_0_i_76 
       (.I0(a[7]),
        .I1(a[4]),
        .O(\spo[6]_INST_0_i_76_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \spo[6]_INST_0_i_77 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[1]),
        .O(\spo[6]_INST_0_i_77_n_0 ));
  LUT6 #(
    .INIT(64'h00023FF78888E64C)) 
    \spo[6]_INST_0_i_78 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[3]),
        .O(\spo[6]_INST_0_i_78_n_0 ));
  LUT6 #(
    .INIT(64'h1101100110111112)) 
    \spo[6]_INST_0_i_79 
       (.I0(a[3]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[7]),
        .O(\spo[6]_INST_0_i_79_n_0 ));
  LUT6 #(
    .INIT(64'hC043FFFF0000FFFF)) 
    \spo[6]_INST_0_i_8 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[4]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[6]_INST_0_i_8_n_0 ));
  MUXF7 \spo[6]_INST_0_i_80 
       (.I0(\spo[6]_INST_0_i_92_n_0 ),
        .I1(\spo[6]_INST_0_i_93_n_0 ),
        .O(\spo[6]_INST_0_i_80_n_0 ),
        .S(a[5]));
  MUXF7 \spo[6]_INST_0_i_81 
       (.I0(\spo[6]_INST_0_i_94_n_0 ),
        .I1(\spo[6]_INST_0_i_95_n_0 ),
        .O(\spo[6]_INST_0_i_81_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h0CC0002043000000)) 
    \spo[6]_INST_0_i_82 
       (.I0(a[7]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[6]_INST_0_i_82_n_0 ));
  LUT6 #(
    .INIT(64'h0920092041084100)) 
    \spo[6]_INST_0_i_83 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[7]),
        .I5(a[3]),
        .O(\spo[6]_INST_0_i_83_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFBF3FBFBF7FFF)) 
    \spo[6]_INST_0_i_84 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[5]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[4]),
        .O(\spo[6]_INST_0_i_84_n_0 ));
  LUT6 #(
    .INIT(64'h00E0000000000080)) 
    \spo[6]_INST_0_i_85 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[5]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_85_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000B9BD)) 
    \spo[6]_INST_0_i_86 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[3]),
        .O(\spo[6]_INST_0_i_86_n_0 ));
  LUT6 #(
    .INIT(64'h4400044440040440)) 
    \spo[6]_INST_0_i_87 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_87_n_0 ));
  LUT6 #(
    .INIT(64'h5007B75BDA7353D0)) 
    \spo[6]_INST_0_i_88 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[6]_INST_0_i_88_n_0 ));
  LUT6 #(
    .INIT(64'hA000050A15A005A2)) 
    \spo[6]_INST_0_i_89 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[4]),
        .O(\spo[6]_INST_0_i_89_n_0 ));
  LUT6 #(
    .INIT(64'h800A08AA800200AA)) 
    \spo[6]_INST_0_i_9 
       (.I0(\spo[7]_INST_0_i_26_n_0 ),
        .I1(a[1]),
        .I2(a[4]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[7]),
        .O(\spo[6]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h423402CC00CDFFA8)) 
    \spo[6]_INST_0_i_90 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_90_n_0 ));
  LUT6 #(
    .INIT(64'h881000271A55C87F)) 
    \spo[6]_INST_0_i_91 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[7]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[6]_INST_0_i_91_n_0 ));
  LUT6 #(
    .INIT(64'h40C2044248820440)) 
    \spo[6]_INST_0_i_92 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[7]),
        .O(\spo[6]_INST_0_i_92_n_0 ));
  LUT6 #(
    .INIT(64'h023406300000C00C)) 
    \spo[6]_INST_0_i_93 
       (.I0(a[7]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[6]_INST_0_i_93_n_0 ));
  LUT6 #(
    .INIT(64'h5231A211A5000020)) 
    \spo[6]_INST_0_i_94 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[6]_INST_0_i_94_n_0 ));
  LUT6 #(
    .INIT(64'h17300082DC10CC82)) 
    \spo[6]_INST_0_i_95 
       (.I0(a[0]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[6]_INST_0_i_95_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB8B8B8B8B8B8)) 
    \spo[7]_INST_0 
       (.I0(\spo[7]_INST_0_i_1_n_0 ),
        .I1(a[6]),
        .I2(\spo[7]_INST_0_i_2_n_0 ),
        .I3(\spo[7]_INST_0_i_3_n_0 ),
        .I4(a[11]),
        .I5(\spo[7]_INST_0_i_4_n_0 ),
        .O(spo[7]));
  LUT6 #(
    .INIT(64'h88888888888AAA8A)) 
    \spo[7]_INST_0_i_1 
       (.I0(a[12]),
        .I1(\spo[7]_INST_0_i_5_n_0 ),
        .I2(\spo[7]_INST_0_i_6_n_0 ),
        .I3(a[8]),
        .I4(\spo[7]_INST_0_i_7_n_0 ),
        .I5(\spo[7]_INST_0_i_8_n_0 ),
        .O(\spo[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA280000AAA0)) 
    \spo[7]_INST_0_i_10 
       (.I0(\spo[7]_INST_0_i_26_n_0 ),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[7]_INST_0_i_10_n_0 ));
  MUXF7 \spo[7]_INST_0_i_11 
       (.I0(\spo[7]_INST_0_i_27_n_0 ),
        .I1(\spo[7]_INST_0_i_28_n_0 ),
        .O(\spo[7]_INST_0_i_11_n_0 ),
        .S(a[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFB00FFFF)) 
    \spo[7]_INST_0_i_12 
       (.I0(a[9]),
        .I1(a[8]),
        .I2(\spo[7]_INST_0_i_29_n_0 ),
        .I3(\spo[7]_INST_0_i_30_n_0 ),
        .I4(a[10]),
        .O(\spo[7]_INST_0_i_12_n_0 ));
  MUXF7 \spo[7]_INST_0_i_13 
       (.I0(\spo[7]_INST_0_i_31_n_0 ),
        .I1(\spo[7]_INST_0_i_32_n_0 ),
        .O(\spo[7]_INST_0_i_13_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFF0010FF10)) 
    \spo[7]_INST_0_i_14 
       (.I0(\spo[7]_INST_0_i_33_n_0 ),
        .I1(\spo[7]_INST_0_i_34_n_0 ),
        .I2(\spo[7]_INST_0_i_35_n_0 ),
        .I3(a[8]),
        .I4(\spo[7]_INST_0_i_36_n_0 ),
        .I5(a[5]),
        .O(\spo[7]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hF3733373F373F373)) 
    \spo[7]_INST_0_i_15 
       (.I0(\spo[7]_INST_0_i_37_n_0 ),
        .I1(a[9]),
        .I2(a[5]),
        .I3(a[3]),
        .I4(\spo[7]_INST_0_i_38_n_0 ),
        .I5(\spo[7]_INST_0_i_39_n_0 ),
        .O(\spo[7]_INST_0_i_15_n_0 ));
  MUXF7 \spo[7]_INST_0_i_16 
       (.I0(\spo[7]_INST_0_i_40_n_0 ),
        .I1(\spo[7]_INST_0_i_41_n_0 ),
        .O(\spo[7]_INST_0_i_16_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h00F0F0F0E0E0E0E0)) 
    \spo[7]_INST_0_i_17 
       (.I0(\spo[7]_INST_0_i_42_n_0 ),
        .I1(\spo[7]_INST_0_i_43_n_0 ),
        .I2(\spo[2]_INST_0_i_7_n_0 ),
        .I3(\spo[7]_INST_0_i_44_n_0 ),
        .I4(\spo[4]_INST_0_i_7_n_0 ),
        .I5(a[5]),
        .O(\spo[7]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0AFA0CFC0C0C0)) 
    \spo[7]_INST_0_i_18 
       (.I0(\spo[7]_INST_0_i_45_n_0 ),
        .I1(\spo[7]_INST_0_i_46_n_0 ),
        .I2(a[8]),
        .I3(\spo[7]_INST_0_i_47_n_0 ),
        .I4(\spo[7]_INST_0_i_48_n_0 ),
        .I5(a[5]),
        .O(\spo[7]_INST_0_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    \spo[7]_INST_0_i_19 
       (.I0(a[4]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[3]),
        .O(\spo[7]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h8A8A8A88AAAAAAAA)) 
    \spo[7]_INST_0_i_2 
       (.I0(a[12]),
        .I1(a[11]),
        .I2(\spo[7]_INST_0_i_9_n_0 ),
        .I3(\spo[7]_INST_0_i_10_n_0 ),
        .I4(\spo[7]_INST_0_i_11_n_0 ),
        .I5(\spo[7]_INST_0_i_12_n_0 ),
        .O(\spo[7]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \spo[7]_INST_0_i_20 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[4]),
        .O(\spo[7]_INST_0_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \spo[7]_INST_0_i_21 
       (.I0(a[5]),
        .I1(a[9]),
        .I2(a[8]),
        .O(\spo[7]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF30303020)) 
    \spo[7]_INST_0_i_22 
       (.I0(a[1]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[7]),
        .I5(a[3]),
        .O(\spo[7]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hB030F000B0117200)) 
    \spo[7]_INST_0_i_23 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[4]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[7]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \spo[7]_INST_0_i_24 
       (.I0(a[1]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[7]),
        .I5(a[3]),
        .O(\spo[7]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100010011)) 
    \spo[7]_INST_0_i_25 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[7]),
        .O(\spo[7]_INST_0_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \spo[7]_INST_0_i_26 
       (.I0(a[3]),
        .I1(a[5]),
        .O(\spo[7]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h553F000051310000)) 
    \spo[7]_INST_0_i_27 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[7]_INST_0_i_27_n_0 ));
  LUT5 #(
    .INIT(32'h01050400)) 
    \spo[7]_INST_0_i_28 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[2]),
        .O(\spo[7]_INST_0_i_28_n_0 ));
  MUXF7 \spo[7]_INST_0_i_29 
       (.I0(\spo[7]_INST_0_i_49_n_0 ),
        .I1(\spo[7]_INST_0_i_50_n_0 ),
        .O(\spo[7]_INST_0_i_29_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h5545554500005545)) 
    \spo[7]_INST_0_i_3 
       (.I0(a[10]),
        .I1(a[9]),
        .I2(a[8]),
        .I3(\spo[7]_INST_0_i_13_n_0 ),
        .I4(\spo[7]_INST_0_i_14_n_0 ),
        .I5(\spo[7]_INST_0_i_15_n_0 ),
        .O(\spo[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0FCF0FAF0FCF0FA0)) 
    \spo[7]_INST_0_i_30 
       (.I0(\spo[7]_INST_0_i_51_n_0 ),
        .I1(\spo[7]_INST_0_i_52_n_0 ),
        .I2(a[9]),
        .I3(a[8]),
        .I4(a[5]),
        .I5(\spo[7]_INST_0_i_53_n_0 ),
        .O(\spo[7]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h73514064DD5064F7)) 
    \spo[7]_INST_0_i_31 
       (.I0(a[3]),
        .I1(a[4]),
        .I2(a[7]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[7]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFAEAFFFF8800)) 
    \spo[7]_INST_0_i_32 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[7]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[2]),
        .O(\spo[7]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0004444000444004)) 
    \spo[7]_INST_0_i_33 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[7]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FEEF)) 
    \spo[7]_INST_0_i_34 
       (.I0(a[2]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[7]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hCCF630D0FFFFFFFF)) 
    \spo[7]_INST_0_i_35 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[3]),
        .O(\spo[7]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hCDC08DFC000CFF3F)) 
    \spo[7]_INST_0_i_36 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[7]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h0000AB010000A913)) 
    \spo[7]_INST_0_i_37 
       (.I0(a[8]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[7]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[7]_INST_0_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \spo[7]_INST_0_i_38 
       (.I0(a[0]),
        .I1(a[1]),
        .O(\spo[7]_INST_0_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \spo[7]_INST_0_i_39 
       (.I0(a[4]),
        .I1(a[2]),
        .O(\spo[7]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFF80FFB3FFFFFFFF)) 
    \spo[7]_INST_0_i_4 
       (.I0(a[8]),
        .I1(a[9]),
        .I2(\spo[7]_INST_0_i_16_n_0 ),
        .I3(\spo[7]_INST_0_i_17_n_0 ),
        .I4(\spo[7]_INST_0_i_18_n_0 ),
        .I5(a[10]),
        .O(\spo[7]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h01002E0004FF1300)) 
    \spo[7]_INST_0_i_40 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[7]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[4]),
        .O(\spo[7]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h000017500000575C)) 
    \spo[7]_INST_0_i_41 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[7]),
        .O(\spo[7]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h0080000808800088)) 
    \spo[7]_INST_0_i_42 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[7]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h0203577202205752)) 
    \spo[7]_INST_0_i_43 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[7]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hFFF9FFF8FFFFFFFF)) 
    \spo[7]_INST_0_i_44 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[4]),
        .I3(a[2]),
        .I4(a[7]),
        .I5(a[3]),
        .O(\spo[7]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFCFE0000)) 
    \spo[7]_INST_0_i_45 
       (.I0(a[1]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[7]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[7]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hFFF5625CA2A80515)) 
    \spo[7]_INST_0_i_46 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[4]),
        .O(\spo[7]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF33B3FFFFF3FF)) 
    \spo[7]_INST_0_i_47 
       (.I0(a[7]),
        .I1(\spo[7]_INST_0_i_54_n_0 ),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[7]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCC34B00CCC373)) 
    \spo[7]_INST_0_i_48 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[7]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h2121150725150303)) 
    \spo[7]_INST_0_i_49 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[7]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFEAAAAAAAAAA)) 
    \spo[7]_INST_0_i_5 
       (.I0(a[11]),
        .I1(\spo[7]_INST_0_i_19_n_0 ),
        .I2(\spo[7]_INST_0_i_20_n_0 ),
        .I3(a[10]),
        .I4(\spo[7]_INST_0_i_21_n_0 ),
        .I5(\spo[7]_INST_0_i_22_n_0 ),
        .O(\spo[7]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h33FB7F33FFFBFF20)) 
    \spo[7]_INST_0_i_50 
       (.I0(a[0]),
        .I1(a[7]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[7]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \spo[7]_INST_0_i_51 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[7]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h0100050005101300)) 
    \spo[7]_INST_0_i_52 
       (.I0(a[3]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[7]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hE01F5FFFF8FFFFFF)) 
    \spo[7]_INST_0_i_53 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[4]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[7]_INST_0_i_53_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spo[7]_INST_0_i_54 
       (.I0(a[5]),
        .I1(a[3]),
        .O(\spo[7]_INST_0_i_54_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h1FFF1F00)) 
    \spo[7]_INST_0_i_6 
       (.I0(a[3]),
        .I1(a[4]),
        .I2(a[7]),
        .I3(a[5]),
        .I4(\spo[7]_INST_0_i_23_n_0 ),
        .O(\spo[7]_INST_0_i_6_n_0 ));
  MUXF7 \spo[7]_INST_0_i_7 
       (.I0(\spo[7]_INST_0_i_24_n_0 ),
        .I1(\spo[7]_INST_0_i_25_n_0 ),
        .O(\spo[7]_INST_0_i_7_n_0 ),
        .S(a[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \spo[7]_INST_0_i_8 
       (.I0(a[9]),
        .I1(a[10]),
        .O(\spo[7]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \spo[7]_INST_0_i_9 
       (.I0(a[10]),
        .I1(a[9]),
        .I2(a[8]),
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
