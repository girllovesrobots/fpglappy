// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.3 (lin64) Build 1368829 Mon Sep 28 20:06:39 MDT 2015
// Date        : Mon Dec  7 18:01:05 2015
// Host        : cyanide running 64-bit Ubuntu 15.10
// Command     : write_verilog -force -mode funcsim
//               /home/jmend/test/fpglappy/fpglappy/fpglappy.srcs/sources_1/ip/number_map/number_map_sim_netlist.v
// Design      : number_map
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "number_map,dist_mem_gen_v8_0_9,{}" *) (* core_generation_info = "number_map,dist_mem_gen_v8_0_9,{x_ipProduct=Vivado 2015.3,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=dist_mem_gen,x_ipVersion=8.0,x_ipCoreRevision=9,x_ipLanguage=VERILOG,x_ipSimLanguage=VERILOG,C_FAMILY=artix7,C_ADDR_WIDTH=12,C_DEFAULT_DATA=0,C_DEPTH=2096,C_HAS_CLK=0,C_HAS_D=0,C_HAS_DPO=0,C_HAS_DPRA=0,C_HAS_I_CE=0,C_HAS_QDPO=0,C_HAS_QDPO_CE=0,C_HAS_QDPO_CLK=0,C_HAS_QDPO_RST=0,C_HAS_QDPO_SRST=0,C_HAS_QSPO=0,C_HAS_QSPO_CE=0,C_HAS_QSPO_RST=0,C_HAS_QSPO_SRST=0,C_HAS_SPO=1,C_HAS_WE=0,C_MEM_INIT_FILE=number_map.mif,C_ELABORATION_DIR=./,C_MEM_TYPE=0,C_PIPELINE_STAGES=0,C_QCE_JOINED=0,C_QUALIFY_WE=0,C_READ_MIF=1,C_REG_A_D_INPUTS=0,C_REG_DPRA_INPUT=0,C_SYNC_ENABLE=1,C_WIDTH=8,C_PARSER_TYPE=1}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "dist_mem_gen_v8_0_9,Vivado 2015.3" *) 
(* NotValidForBitStream *)
module number_map
   (a,
    spo);
  input [11:0]a;
  output [7:0]spo;

  wire [11:0]a;
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
  (* c_addr_width = "12" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "2096" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "number_map.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "8" *) 
  number_map_dist_mem_gen_v8_0_9 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[7:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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

(* C_ADDR_WIDTH = "12" *) (* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "2096" *) 
(* C_ELABORATION_DIR = "./" *) (* C_FAMILY = "artix7" *) (* C_HAS_CLK = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_DPO = "0" *) (* C_HAS_DPRA = "0" *) 
(* C_HAS_I_CE = "0" *) (* C_HAS_QDPO = "0" *) (* C_HAS_QDPO_CE = "0" *) 
(* C_HAS_QDPO_CLK = "0" *) (* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "0" *) 
(* C_HAS_QSPO = "0" *) (* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) 
(* C_HAS_QSPO_SRST = "0" *) (* C_HAS_SPO = "1" *) (* C_HAS_WE = "0" *) 
(* C_MEM_INIT_FILE = "number_map.mif" *) (* C_MEM_TYPE = "0" *) (* C_PARSER_TYPE = "1" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "1" *) (* C_REG_A_D_INPUTS = "0" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "8" *) (* ORIG_REF_NAME = "dist_mem_gen_v8_0_9" *) 
module number_map_dist_mem_gen_v8_0_9
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
  input [11:0]a;
  input [7:0]d;
  input [11:0]dpra;
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
  wire [11:0]a;
  wire [6:1]\^spo ;
  wire \spo[0]_INST_0_i_1_n_0 ;
  wire \spo[0]_INST_0_i_2_n_0 ;
  wire \spo[0]_INST_0_i_3_n_0 ;
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
  wire \spo[5]_INST_0_i_5_n_0 ;
  wire \spo[5]_INST_0_i_6_n_0 ;
  wire \spo[5]_INST_0_i_7_n_0 ;
  wire \spo[5]_INST_0_i_8_n_0 ;
  wire \spo[5]_INST_0_i_9_n_0 ;

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
  assign spo[7] = \^spo [6];
  assign spo[6] = \^spo [6];
  assign spo[5] = \^spo [6];
  assign spo[4] = \^spo [1];
  assign spo[3] = \^spo [1];
  assign spo[2] = \^spo [1];
  assign spo[1] = \^spo [1];
  assign spo[0] = \^spo [1];
  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'h5F50CFCF5F50C0C0)) 
    \spo[0]_INST_0 
       (.I0(a[11]),
        .I1(\spo[5]_INST_0_i_1_n_0 ),
        .I2(a[9]),
        .I3(\spo[5]_INST_0_i_2_n_0 ),
        .I4(a[10]),
        .I5(\spo[0]_INST_0_i_1_n_0 ),
        .O(\^spo [1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_1 
       (.I0(\spo[5]_INST_0_i_10_n_0 ),
        .I1(\spo[5]_INST_0_i_11_n_0 ),
        .I2(a[7]),
        .I3(\spo[5]_INST_0_i_12_n_0 ),
        .I4(a[8]),
        .I5(\spo[0]_INST_0_i_2_n_0 ),
        .O(\spo[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_2 
       (.I0(\spo[5]_INST_0_i_38_n_0 ),
        .I1(\spo[5]_INST_0_i_39_n_0 ),
        .I2(a[4]),
        .I3(\spo[0]_INST_0_i_3_n_0 ),
        .I4(a[6]),
        .I5(\spo[5]_INST_0_i_41_n_0 ),
        .O(\spo[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF00D523)) 
    \spo[0]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[11]),
        .O(\spo[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5F50CFCF5F50C0C0)) 
    \spo[5]_INST_0 
       (.I0(a[11]),
        .I1(\spo[5]_INST_0_i_1_n_0 ),
        .I2(a[9]),
        .I3(\spo[5]_INST_0_i_2_n_0 ),
        .I4(a[10]),
        .I5(\spo[5]_INST_0_i_3_n_0 ),
        .O(\^spo [6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_1 
       (.I0(\spo[5]_INST_0_i_4_n_0 ),
        .I1(\spo[5]_INST_0_i_5_n_0 ),
        .I2(a[7]),
        .I3(\spo[5]_INST_0_i_6_n_0 ),
        .I4(a[8]),
        .I5(\spo[5]_INST_0_i_7_n_0 ),
        .O(\spo[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_10 
       (.I0(\spo[5]_INST_0_i_29_n_0 ),
        .I1(\spo[5]_INST_0_i_30_n_0 ),
        .I2(a[4]),
        .I3(\spo[5]_INST_0_i_31_n_0 ),
        .I4(a[6]),
        .I5(\spo[5]_INST_0_i_32_n_0 ),
        .O(\spo[5]_INST_0_i_10_n_0 ));
  MUXF8 \spo[5]_INST_0_i_11 
       (.I0(\spo[5]_INST_0_i_33_n_0 ),
        .I1(\spo[5]_INST_0_i_34_n_0 ),
        .O(\spo[5]_INST_0_i_11_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_12 
       (.I0(\spo[5]_INST_0_i_35_n_0 ),
        .I1(\spo[5]_INST_0_i_36_n_0 ),
        .I2(a[4]),
        .I3(\spo[5]_INST_0_i_31_n_0 ),
        .I4(a[6]),
        .I5(\spo[5]_INST_0_i_37_n_0 ),
        .O(\spo[5]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_13 
       (.I0(\spo[5]_INST_0_i_38_n_0 ),
        .I1(\spo[5]_INST_0_i_39_n_0 ),
        .I2(a[4]),
        .I3(\spo[5]_INST_0_i_40_n_0 ),
        .I4(a[6]),
        .I5(\spo[5]_INST_0_i_41_n_0 ),
        .O(\spo[5]_INST_0_i_13_n_0 ));
  MUXF7 \spo[5]_INST_0_i_14 
       (.I0(\spo[5]_INST_0_i_42_n_0 ),
        .I1(\spo[5]_INST_0_i_43_n_0 ),
        .O(\spo[5]_INST_0_i_14_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_15 
       (.I0(\spo[5]_INST_0_i_44_n_0 ),
        .I1(\spo[5]_INST_0_i_45_n_0 ),
        .O(\spo[5]_INST_0_i_15_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h00000000FFC8BF77)) 
    \spo[5]_INST_0_i_16 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[11]),
        .O(\spo[5]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFF6F9FD)) 
    \spo[5]_INST_0_i_17 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[11]),
        .O(\spo[5]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF7FDFB8)) 
    \spo[5]_INST_0_i_18 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[11]),
        .O(\spo[5]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FDEFFF78)) 
    \spo[5]_INST_0_i_19 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[11]),
        .O(\spo[5]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h3732373737323232)) 
    \spo[5]_INST_0_i_2 
       (.I0(a[7]),
        .I1(a[11]),
        .I2(a[8]),
        .I3(\spo[5]_INST_0_i_8_n_0 ),
        .I4(a[4]),
        .I5(\spo[5]_INST_0_i_9_n_0 ),
        .O(\spo[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000FBEE0000EE0F)) 
    \spo[5]_INST_0_i_20 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[11]),
        .I5(a[2]),
        .O(\spo[5]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFEF97D)) 
    \spo[5]_INST_0_i_21 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[11]),
        .O(\spo[5]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FDEDFD70)) 
    \spo[5]_INST_0_i_22 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[11]),
        .O(\spo[5]_INST_0_i_22_n_0 ));
  MUXF7 \spo[5]_INST_0_i_23 
       (.I0(\spo[5]_INST_0_i_46_n_0 ),
        .I1(\spo[5]_INST_0_i_47_n_0 ),
        .O(\spo[5]_INST_0_i_23_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_24 
       (.I0(\spo[5]_INST_0_i_48_n_0 ),
        .I1(\spo[5]_INST_0_i_49_n_0 ),
        .O(\spo[5]_INST_0_i_24_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h00FF008800FE000E)) 
    \spo[5]_INST_0_i_25 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[11]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h00CD008000C00080)) 
    \spo[5]_INST_0_i_26 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[11]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[5]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF00F92B)) 
    \spo[5]_INST_0_i_27 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[11]),
        .O(\spo[5]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF40D527)) 
    \spo[5]_INST_0_i_28 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[11]),
        .O(\spo[5]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h0000FBF40000FE1F)) 
    \spo[5]_INST_0_i_29 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[11]),
        .I5(a[2]),
        .O(\spo[5]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_3 
       (.I0(\spo[5]_INST_0_i_10_n_0 ),
        .I1(\spo[5]_INST_0_i_11_n_0 ),
        .I2(a[7]),
        .I3(\spo[5]_INST_0_i_12_n_0 ),
        .I4(a[8]),
        .I5(\spo[5]_INST_0_i_13_n_0 ),
        .O(\spo[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFC00007FFB)) 
    \spo[5]_INST_0_i_30 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[11]),
        .I5(a[2]),
        .O(\spo[5]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF7FDFE0)) 
    \spo[5]_INST_0_i_31 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[5]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[11]),
        .O(\spo[5]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FDEFFDDA)) 
    \spo[5]_INST_0_i_32 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[11]),
        .O(\spo[5]_INST_0_i_32_n_0 ));
  MUXF7 \spo[5]_INST_0_i_33 
       (.I0(\spo[5]_INST_0_i_50_n_0 ),
        .I1(\spo[5]_INST_0_i_51_n_0 ),
        .O(\spo[5]_INST_0_i_33_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_34 
       (.I0(\spo[5]_INST_0_i_52_n_0 ),
        .I1(\spo[5]_INST_0_i_53_n_0 ),
        .O(\spo[5]_INST_0_i_34_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h00000000FEF1BFFF)) 
    \spo[5]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[11]),
        .O(\spo[5]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFF40000FFFB)) 
    \spo[5]_INST_0_i_36 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[11]),
        .I5(a[2]),
        .O(\spo[5]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FDEDFFDA)) 
    \spo[5]_INST_0_i_37 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[11]),
        .O(\spo[5]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BB000303)) 
    \spo[5]_INST_0_i_38 
       (.I0(a[0]),
        .I1(a[5]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[11]),
        .O(\spo[5]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h3333FF003333F747)) 
    \spo[5]_INST_0_i_39 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_39_n_0 ));
  MUXF8 \spo[5]_INST_0_i_4 
       (.I0(\spo[5]_INST_0_i_14_n_0 ),
        .I1(\spo[5]_INST_0_i_15_n_0 ),
        .O(\spo[5]_INST_0_i_4_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h00000000FF00B347)) 
    \spo[5]_INST_0_i_40 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[11]),
        .O(\spo[5]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF42FFFFF767)) 
    \spo[5]_INST_0_i_41 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FDEFFF5A)) 
    \spo[5]_INST_0_i_42 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[11]),
        .O(\spo[5]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EFF75DFA)) 
    \spo[5]_INST_0_i_43 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[11]),
        .O(\spo[5]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFF9FF78)) 
    \spo[5]_INST_0_i_44 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[11]),
        .O(\spo[5]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFC8B7FF)) 
    \spo[5]_INST_0_i_45 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[11]),
        .O(\spo[5]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h00000000DDCFDDDA)) 
    \spo[5]_INST_0_i_46 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[11]),
        .O(\spo[5]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F7AAFB2D)) 
    \spo[5]_INST_0_i_47 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[11]),
        .O(\spo[5]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F0FDF9FD)) 
    \spo[5]_INST_0_i_48 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[11]),
        .O(\spo[5]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFB00000101F)) 
    \spo[5]_INST_0_i_49 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[11]),
        .I5(a[2]),
        .O(\spo[5]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_5 
       (.I0(\spo[5]_INST_0_i_16_n_0 ),
        .I1(\spo[5]_INST_0_i_17_n_0 ),
        .I2(a[4]),
        .I3(\spo[5]_INST_0_i_18_n_0 ),
        .I4(a[6]),
        .I5(\spo[5]_INST_0_i_19_n_0 ),
        .O(\spo[5]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FDEDEFCA)) 
    \spo[5]_INST_0_i_50 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[11]),
        .O(\spo[5]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFBF4FF0)) 
    \spo[5]_INST_0_i_51 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[5]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[11]),
        .O(\spo[5]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFEF50)) 
    \spo[5]_INST_0_i_52 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[5]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[11]),
        .O(\spo[5]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FEF11FFF)) 
    \spo[5]_INST_0_i_53 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[11]),
        .O(\spo[5]_INST_0_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_6 
       (.I0(\spo[5]_INST_0_i_20_n_0 ),
        .I1(\spo[5]_INST_0_i_21_n_0 ),
        .I2(a[4]),
        .I3(\spo[5]_INST_0_i_18_n_0 ),
        .I4(a[6]),
        .I5(\spo[5]_INST_0_i_22_n_0 ),
        .O(\spo[5]_INST_0_i_6_n_0 ));
  MUXF8 \spo[5]_INST_0_i_7 
       (.I0(\spo[5]_INST_0_i_23_n_0 ),
        .I1(\spo[5]_INST_0_i_24_n_0 ),
        .O(\spo[5]_INST_0_i_7_n_0 ),
        .S(a[4]));
  MUXF7 \spo[5]_INST_0_i_8 
       (.I0(\spo[5]_INST_0_i_25_n_0 ),
        .I1(\spo[5]_INST_0_i_26_n_0 ),
        .O(\spo[5]_INST_0_i_8_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_9 
       (.I0(\spo[5]_INST_0_i_27_n_0 ),
        .I1(\spo[5]_INST_0_i_28_n_0 ),
        .O(\spo[5]_INST_0_i_9_n_0 ),
        .S(a[6]));
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
