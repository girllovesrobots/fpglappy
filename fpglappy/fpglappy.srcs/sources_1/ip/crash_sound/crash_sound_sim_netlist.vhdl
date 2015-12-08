-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.3 (lin64) Build 1368829 Mon Sep 28 20:06:39 MDT 2015
-- Date        : Mon Dec  7 17:59:26 2015
-- Host        : cyanide running 64-bit Ubuntu 15.10
-- Command     : write_vhdl -force -mode funcsim
--               /home/jmend/test/fpglappy/fpglappy/fpglappy.srcs/sources_1/ip/crash_sound/crash_sound_sim_netlist.vhdl
-- Design      : crash_sound
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity crash_sound_dist_mem_gen_v8_0_9 is
  port (
    a : in STD_LOGIC_VECTOR ( 11 downto 0 );
    d : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dpra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    i_ce : in STD_LOGIC;
    qspo_ce : in STD_LOGIC;
    qdpo_ce : in STD_LOGIC;
    qdpo_clk : in STD_LOGIC;
    qspo_rst : in STD_LOGIC;
    qdpo_rst : in STD_LOGIC;
    qspo_srst : in STD_LOGIC;
    qdpo_srst : in STD_LOGIC;
    spo : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dpo : out STD_LOGIC_VECTOR ( 3 downto 0 );
    qspo : out STD_LOGIC_VECTOR ( 3 downto 0 );
    qdpo : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute C_ADDR_WIDTH : integer;
  attribute C_ADDR_WIDTH of crash_sound_dist_mem_gen_v8_0_9 : entity is 12;
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of crash_sound_dist_mem_gen_v8_0_9 : entity is "0";
  attribute C_DEPTH : integer;
  attribute C_DEPTH of crash_sound_dist_mem_gen_v8_0_9 : entity is 3680;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of crash_sound_dist_mem_gen_v8_0_9 : entity is "./";
  attribute C_FAMILY : string;
  attribute C_FAMILY of crash_sound_dist_mem_gen_v8_0_9 : entity is "artix7";
  attribute C_HAS_CLK : integer;
  attribute C_HAS_CLK of crash_sound_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_HAS_D : integer;
  attribute C_HAS_D of crash_sound_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of crash_sound_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of crash_sound_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of crash_sound_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of crash_sound_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of crash_sound_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of crash_sound_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of crash_sound_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of crash_sound_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_HAS_QSPO : integer;
  attribute C_HAS_QSPO of crash_sound_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_HAS_QSPO_CE : integer;
  attribute C_HAS_QSPO_CE of crash_sound_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_HAS_QSPO_RST : integer;
  attribute C_HAS_QSPO_RST of crash_sound_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_HAS_QSPO_SRST : integer;
  attribute C_HAS_QSPO_SRST of crash_sound_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_HAS_SPO : integer;
  attribute C_HAS_SPO of crash_sound_dist_mem_gen_v8_0_9 : entity is 1;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of crash_sound_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_MEM_INIT_FILE : string;
  attribute C_MEM_INIT_FILE of crash_sound_dist_mem_gen_v8_0_9 : entity is "crash_sound.mif";
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of crash_sound_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_PARSER_TYPE : integer;
  attribute C_PARSER_TYPE of crash_sound_dist_mem_gen_v8_0_9 : entity is 1;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of crash_sound_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of crash_sound_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of crash_sound_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_READ_MIF : integer;
  attribute C_READ_MIF of crash_sound_dist_mem_gen_v8_0_9 : entity is 1;
  attribute C_REG_A_D_INPUTS : integer;
  attribute C_REG_A_D_INPUTS of crash_sound_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of crash_sound_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_SYNC_ENABLE : integer;
  attribute C_SYNC_ENABLE of crash_sound_dist_mem_gen_v8_0_9 : entity is 1;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of crash_sound_dist_mem_gen_v8_0_9 : entity is 4;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of crash_sound_dist_mem_gen_v8_0_9 : entity is "dist_mem_gen_v8_0_9";
end crash_sound_dist_mem_gen_v8_0_9;

architecture STRUCTURE of crash_sound_dist_mem_gen_v8_0_9 is
  signal \<const0>\ : STD_LOGIC;
  signal g10_b0_n_0 : STD_LOGIC;
  signal g10_b1_n_0 : STD_LOGIC;
  signal g10_b2_n_0 : STD_LOGIC;
  signal g10_b3_n_0 : STD_LOGIC;
  signal g11_b0_n_0 : STD_LOGIC;
  signal g11_b1_n_0 : STD_LOGIC;
  signal g11_b2_n_0 : STD_LOGIC;
  signal g11_b3_n_0 : STD_LOGIC;
  signal g12_b0_n_0 : STD_LOGIC;
  signal g12_b1_n_0 : STD_LOGIC;
  signal g12_b2_n_0 : STD_LOGIC;
  signal g12_b3_n_0 : STD_LOGIC;
  signal g13_b0_n_0 : STD_LOGIC;
  signal g13_b1_n_0 : STD_LOGIC;
  signal g13_b2_n_0 : STD_LOGIC;
  signal g13_b3_n_0 : STD_LOGIC;
  signal g14_b0_n_0 : STD_LOGIC;
  signal g14_b1_n_0 : STD_LOGIC;
  signal g14_b2_n_0 : STD_LOGIC;
  signal g14_b3_n_0 : STD_LOGIC;
  signal g15_b0_n_0 : STD_LOGIC;
  signal g15_b1_n_0 : STD_LOGIC;
  signal g15_b2_n_0 : STD_LOGIC;
  signal g15_b3_n_0 : STD_LOGIC;
  signal g16_b0_n_0 : STD_LOGIC;
  signal g16_b1_n_0 : STD_LOGIC;
  signal g16_b2_n_0 : STD_LOGIC;
  signal g16_b3_n_0 : STD_LOGIC;
  signal g17_b0_n_0 : STD_LOGIC;
  signal g17_b1_n_0 : STD_LOGIC;
  signal g17_b2_n_0 : STD_LOGIC;
  signal g17_b3_n_0 : STD_LOGIC;
  signal g18_b0_n_0 : STD_LOGIC;
  signal g18_b1_n_0 : STD_LOGIC;
  signal g18_b2_n_0 : STD_LOGIC;
  signal g18_b3_n_0 : STD_LOGIC;
  signal g19_b0_n_0 : STD_LOGIC;
  signal g19_b1_n_0 : STD_LOGIC;
  signal g19_b2_n_0 : STD_LOGIC;
  signal g19_b3_n_0 : STD_LOGIC;
  signal g1_b0_n_0 : STD_LOGIC;
  signal g1_b1_n_0 : STD_LOGIC;
  signal g1_b2_n_0 : STD_LOGIC;
  signal g1_b3_n_0 : STD_LOGIC;
  signal g20_b0_n_0 : STD_LOGIC;
  signal g20_b1_n_0 : STD_LOGIC;
  signal g20_b2_n_0 : STD_LOGIC;
  signal g20_b3_n_0 : STD_LOGIC;
  signal g21_b0_n_0 : STD_LOGIC;
  signal g21_b1_n_0 : STD_LOGIC;
  signal g21_b2_n_0 : STD_LOGIC;
  signal g21_b3_n_0 : STD_LOGIC;
  signal g22_b0_n_0 : STD_LOGIC;
  signal g22_b1_n_0 : STD_LOGIC;
  signal g22_b2_n_0 : STD_LOGIC;
  signal g22_b3_n_0 : STD_LOGIC;
  signal g23_b0_n_0 : STD_LOGIC;
  signal g23_b1_n_0 : STD_LOGIC;
  signal g23_b2_n_0 : STD_LOGIC;
  signal g23_b3_n_0 : STD_LOGIC;
  signal g24_b0_n_0 : STD_LOGIC;
  signal g24_b1_n_0 : STD_LOGIC;
  signal g24_b2_n_0 : STD_LOGIC;
  signal g24_b3_n_0 : STD_LOGIC;
  signal g25_b0_n_0 : STD_LOGIC;
  signal g25_b1_n_0 : STD_LOGIC;
  signal g25_b2_n_0 : STD_LOGIC;
  signal g25_b3_n_0 : STD_LOGIC;
  signal g26_b0_n_0 : STD_LOGIC;
  signal g26_b1_n_0 : STD_LOGIC;
  signal g26_b2_n_0 : STD_LOGIC;
  signal g26_b3_n_0 : STD_LOGIC;
  signal g27_b0_n_0 : STD_LOGIC;
  signal g27_b1_n_0 : STD_LOGIC;
  signal g27_b2_n_0 : STD_LOGIC;
  signal g27_b3_n_0 : STD_LOGIC;
  signal g28_b0_n_0 : STD_LOGIC;
  signal g28_b1_n_0 : STD_LOGIC;
  signal g28_b2_n_0 : STD_LOGIC;
  signal g28_b3_n_0 : STD_LOGIC;
  signal g29_b0_n_0 : STD_LOGIC;
  signal g29_b1_n_0 : STD_LOGIC;
  signal g29_b2_n_0 : STD_LOGIC;
  signal g29_b3_n_0 : STD_LOGIC;
  signal g2_b0_n_0 : STD_LOGIC;
  signal g2_b1_n_0 : STD_LOGIC;
  signal g2_b2_n_0 : STD_LOGIC;
  signal g2_b3_n_0 : STD_LOGIC;
  signal g30_b0_n_0 : STD_LOGIC;
  signal g30_b1_n_0 : STD_LOGIC;
  signal g30_b2_n_0 : STD_LOGIC;
  signal g30_b3_n_0 : STD_LOGIC;
  signal g31_b0_n_0 : STD_LOGIC;
  signal g31_b1_n_0 : STD_LOGIC;
  signal g31_b2_n_0 : STD_LOGIC;
  signal g31_b3_n_0 : STD_LOGIC;
  signal g32_b0_n_0 : STD_LOGIC;
  signal g32_b1_n_0 : STD_LOGIC;
  signal g32_b2_n_0 : STD_LOGIC;
  signal g32_b3_n_0 : STD_LOGIC;
  signal g33_b0_n_0 : STD_LOGIC;
  signal g33_b1_n_0 : STD_LOGIC;
  signal g33_b2_n_0 : STD_LOGIC;
  signal g33_b3_n_0 : STD_LOGIC;
  signal g34_b0_n_0 : STD_LOGIC;
  signal g34_b1_n_0 : STD_LOGIC;
  signal g34_b2_n_0 : STD_LOGIC;
  signal g34_b3_n_0 : STD_LOGIC;
  signal g35_b0_n_0 : STD_LOGIC;
  signal g35_b1_n_0 : STD_LOGIC;
  signal g35_b2_n_0 : STD_LOGIC;
  signal g35_b3_n_0 : STD_LOGIC;
  signal g36_b0_n_0 : STD_LOGIC;
  signal g36_b1_n_0 : STD_LOGIC;
  signal g36_b2_n_0 : STD_LOGIC;
  signal g36_b3_n_0 : STD_LOGIC;
  signal g37_b0_n_0 : STD_LOGIC;
  signal g37_b1_n_0 : STD_LOGIC;
  signal g37_b2_n_0 : STD_LOGIC;
  signal g37_b3_n_0 : STD_LOGIC;
  signal g38_b0_n_0 : STD_LOGIC;
  signal g38_b1_n_0 : STD_LOGIC;
  signal g38_b2_n_0 : STD_LOGIC;
  signal g38_b3_n_0 : STD_LOGIC;
  signal g39_b0_n_0 : STD_LOGIC;
  signal g39_b1_n_0 : STD_LOGIC;
  signal g39_b2_n_0 : STD_LOGIC;
  signal g39_b3_n_0 : STD_LOGIC;
  signal g3_b0_n_0 : STD_LOGIC;
  signal g3_b1_n_0 : STD_LOGIC;
  signal g3_b2_n_0 : STD_LOGIC;
  signal g3_b3_n_0 : STD_LOGIC;
  signal g40_b0_n_0 : STD_LOGIC;
  signal g40_b1_n_0 : STD_LOGIC;
  signal g40_b2_n_0 : STD_LOGIC;
  signal g40_b3_n_0 : STD_LOGIC;
  signal g41_b0_n_0 : STD_LOGIC;
  signal g41_b1_n_0 : STD_LOGIC;
  signal g41_b2_n_0 : STD_LOGIC;
  signal g41_b3_n_0 : STD_LOGIC;
  signal g42_b0_n_0 : STD_LOGIC;
  signal g42_b1_n_0 : STD_LOGIC;
  signal g42_b2_n_0 : STD_LOGIC;
  signal g42_b3_n_0 : STD_LOGIC;
  signal g43_b0_n_0 : STD_LOGIC;
  signal g43_b1_n_0 : STD_LOGIC;
  signal g43_b2_n_0 : STD_LOGIC;
  signal g43_b3_n_0 : STD_LOGIC;
  signal g44_b0_n_0 : STD_LOGIC;
  signal g44_b1_n_0 : STD_LOGIC;
  signal g44_b2_n_0 : STD_LOGIC;
  signal g44_b3_n_0 : STD_LOGIC;
  signal g45_b0_n_0 : STD_LOGIC;
  signal g45_b1_n_0 : STD_LOGIC;
  signal g45_b2_n_0 : STD_LOGIC;
  signal g45_b3_n_0 : STD_LOGIC;
  signal g46_b0_n_0 : STD_LOGIC;
  signal g46_b1_n_0 : STD_LOGIC;
  signal g46_b2_n_0 : STD_LOGIC;
  signal g46_b3_n_0 : STD_LOGIC;
  signal g47_b0_n_0 : STD_LOGIC;
  signal g47_b1_n_0 : STD_LOGIC;
  signal g47_b2_n_0 : STD_LOGIC;
  signal g47_b3_n_0 : STD_LOGIC;
  signal g48_b0_n_0 : STD_LOGIC;
  signal g48_b1_n_0 : STD_LOGIC;
  signal g48_b2_n_0 : STD_LOGIC;
  signal g48_b3_n_0 : STD_LOGIC;
  signal g49_b0_n_0 : STD_LOGIC;
  signal g49_b1_n_0 : STD_LOGIC;
  signal g49_b2_n_0 : STD_LOGIC;
  signal g49_b3_n_0 : STD_LOGIC;
  signal g4_b0_n_0 : STD_LOGIC;
  signal g4_b1_n_0 : STD_LOGIC;
  signal g4_b2_n_0 : STD_LOGIC;
  signal g4_b3_n_0 : STD_LOGIC;
  signal g50_b0_n_0 : STD_LOGIC;
  signal g50_b1_n_0 : STD_LOGIC;
  signal g50_b2_n_0 : STD_LOGIC;
  signal g50_b3_n_0 : STD_LOGIC;
  signal g51_b0_n_0 : STD_LOGIC;
  signal g51_b1_n_0 : STD_LOGIC;
  signal g51_b2_n_0 : STD_LOGIC;
  signal g51_b3_n_0 : STD_LOGIC;
  signal g52_b0_n_0 : STD_LOGIC;
  signal g52_b1_n_0 : STD_LOGIC;
  signal g52_b2_n_0 : STD_LOGIC;
  signal g52_b3_n_0 : STD_LOGIC;
  signal g53_b0_n_0 : STD_LOGIC;
  signal g53_b1_n_0 : STD_LOGIC;
  signal g53_b2_n_0 : STD_LOGIC;
  signal g53_b3_n_0 : STD_LOGIC;
  signal g54_b0_n_0 : STD_LOGIC;
  signal g54_b1_n_0 : STD_LOGIC;
  signal g54_b2_n_0 : STD_LOGIC;
  signal g54_b3_n_0 : STD_LOGIC;
  signal g55_b0_n_0 : STD_LOGIC;
  signal g55_b1_n_0 : STD_LOGIC;
  signal g55_b2_n_0 : STD_LOGIC;
  signal g55_b3_n_0 : STD_LOGIC;
  signal g56_b0_n_0 : STD_LOGIC;
  signal g56_b1_n_0 : STD_LOGIC;
  signal g56_b2_n_0 : STD_LOGIC;
  signal g56_b3_n_0 : STD_LOGIC;
  signal g57_b0_n_0 : STD_LOGIC;
  signal g57_b1_n_0 : STD_LOGIC;
  signal g57_b2_n_0 : STD_LOGIC;
  signal g57_b3_n_0 : STD_LOGIC;
  signal g5_b0_n_0 : STD_LOGIC;
  signal g5_b1_n_0 : STD_LOGIC;
  signal g5_b2_n_0 : STD_LOGIC;
  signal g5_b3_n_0 : STD_LOGIC;
  signal g6_b0_n_0 : STD_LOGIC;
  signal g6_b1_n_0 : STD_LOGIC;
  signal g6_b2_n_0 : STD_LOGIC;
  signal g6_b3_n_0 : STD_LOGIC;
  signal g7_b0_n_0 : STD_LOGIC;
  signal g7_b1_n_0 : STD_LOGIC;
  signal g7_b2_n_0 : STD_LOGIC;
  signal g7_b3_n_0 : STD_LOGIC;
  signal g8_b0_n_0 : STD_LOGIC;
  signal g8_b1_n_0 : STD_LOGIC;
  signal g8_b2_n_0 : STD_LOGIC;
  signal g8_b3_n_0 : STD_LOGIC;
  signal g9_b0_n_0 : STD_LOGIC;
  signal g9_b1_n_0 : STD_LOGIC;
  signal g9_b2_n_0 : STD_LOGIC;
  signal g9_b3_n_0 : STD_LOGIC;
  signal \spo[0]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_9_n_0\ : STD_LOGIC;
begin
  dpo(3) <= \<const0>\;
  dpo(2) <= \<const0>\;
  dpo(1) <= \<const0>\;
  dpo(0) <= \<const0>\;
  qdpo(3) <= \<const0>\;
  qdpo(2) <= \<const0>\;
  qdpo(1) <= \<const0>\;
  qdpo(0) <= \<const0>\;
  qspo(3) <= \<const0>\;
  qspo(2) <= \<const0>\;
  qspo(1) <= \<const0>\;
  qspo(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
g10_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"19695DC11BBC12A6"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g10_b0_n_0
    );
g10_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1912FDC1E3C01061"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g10_b1_n_0
    );
g10_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E6F0023E03FFEFE0"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g10_b2_n_0
    );
g10_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0000003FFFFE0"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g10_b3_n_0
    );
g11_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB1A2C07094CCC3"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g11_b0_n_0
    );
g11_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4B309FEB709A7A02"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g11_b1_n_0
    );
g11_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCCF80148F607FFD"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g11_b2_n_0
    );
g11_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF800000007FFF"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g11_b3_n_0
    );
g12_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A7A9B6D670108A7E"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g12_b0_n_0
    );
g12_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5AA0F5D770085C98"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g12_b1_n_0
    );
g12_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5FF0288FF61EF7"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g12_b2_n_0
    );
g12_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF00000001EFF"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g12_b3_n_0
    );
g13_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBEE5ED9ED90F80"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g13_b0_n_0
    );
g13_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D85FDFBBBCAA076"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g13_b1_n_0
    );
g13_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"26800204640BFFF6"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g13_b2_n_0
    );
g13_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF800000000BFFF6"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g13_b3_n_0
    );
g14_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F88C59270B417C2"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g14_b0_n_0
    );
g14_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"12C8224E9B401FFF"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g14_b1_n_0
    );
g14_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"48B7FFFDA9FFE000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g14_b2_n_0
    );
g14_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4880000009FFFFFF"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g14_b3_n_0
    );
g15_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4C0D0D9A74803EC2"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g15_b0_n_0
    );
g15_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDEE422EC4A89CEA"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g15_b1_n_0
    );
g15_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"323B24F02077631B"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g15_b2_n_0
    );
g15_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008003264FFFFFB"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g15_b3_n_0
    );
g16_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D02872A883C398F5"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g16_b0_n_0
    );
g16_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D95EDA992B383EC"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g16_b1_n_0
    );
g16_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9D94FFDF6D3DC983"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g16_b2_n_0
    );
g16_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404FFFFFFFFC980"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g16_b3_n_0
    );
g17_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"977823FD1832B1C8"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g17_b0_n_0
    );
g17_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E59CF790957FE0AB"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g17_b1_n_0
    );
g17_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"43DA55FDBEE96E74"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g17_b2_n_0
    );
g17_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01DA77FDB6692000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g17_b3_n_0
    );
g18_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9348DBD255C038D1"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g18_b0_n_0
    );
g18_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1A4FA2F4259DC627"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g18_b1_n_0
    );
g18_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F493994BFDEC2ACD"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g18_b2_n_0
    );
g18_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"900399DBFDCC2201"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g18_b3_n_0
    );
g19_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D94FDEDA849E1FF9"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g19_b0_n_0
    );
g19_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4CEEE0F02F219F50"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g19_b1_n_0
    );
g19_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"663B956BB5733785"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g19_b2_n_0
    );
g19_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"666EC46225333791"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g19_b3_n_0
    );
g1_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F3C042000000000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g1_b0_n_0
    );
g1_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003C002000000000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g1_b1_n_0
    );
g1_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003C002000000000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g1_b2_n_0
    );
g1_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003C002000000000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g1_b3_n_0
    );
g20_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3858835C12D2A12"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g20_b0_n_0
    );
g20_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"72807C9B0E6E00AC"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g20_b1_n_0
    );
g20_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"57D03766681B29AD"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g20_b2_n_0
    );
g20_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"53903666481B29AD"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g20_b3_n_0
    );
g21_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"689E7E8EF5C67791"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g21_b0_n_0
    );
g21_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"96B73B0B32260AF7"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g21_b1_n_0
    );
g21_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C6B591A192715D54"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g21_b2_n_0
    );
g21_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C6B5998992644C44"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g21_b3_n_0
    );
g22_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CA94ED754F22C1EB"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g22_b0_n_0
    );
g22_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3758F26C8F19265C"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g22_b1_n_0
    );
g22_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0314149EC59B6F6C"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g22_b2_n_0
    );
g22_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0310100C859B6F6C"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g22_b3_n_0
    );
g23_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"81BC9A64A4B2271C"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g23_b0_n_0
    );
g23_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22B85AEEBECAFF6C"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g23_b1_n_0
    );
g23_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"09B8DA6CF6E26D08"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g23_b2_n_0
    );
g23_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"09B8DA6CB6E26D08"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g23_b3_n_0
    );
g24_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6C23C3F1FED6004B"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g24_b0_n_0
    );
g24_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"772A7D53EF612269"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g24_b1_n_0
    );
g24_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"36A999D0CE416820"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g24_b2_n_0
    );
g24_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"362999D0CE412020"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g24_b3_n_0
    );
g25_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F9193EDE69897B3F"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g25_b0_n_0
    );
g25_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0ADA526261B0CCBF"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g25_b1_n_0
    );
g25_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88D84CC260984C99"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g25_b2_n_0
    );
g25_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88D84CC260984C99"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g25_b3_n_0
    );
g26_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A86B9F2DA5D62AD"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g26_b0_n_0
    );
g26_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AB7E5D87C769819"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g26_b1_n_0
    );
g26_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A2ECB984C73320D"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g26_b2_n_0
    );
g26_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A26C9984C73320D"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g26_b3_n_0
    );
g27_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3994C02FBE47ED7B"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g27_b0_n_0
    );
g27_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9D3C2E523C3BBB60"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g27_b1_n_0
    );
g27_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"993C26423C0EC960"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g27_b2_n_0
    );
g27_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"993C26423C0EC960"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g27_b3_n_0
    );
g28_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"62F7991C04C5183D"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g28_b0_n_0
    );
g28_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3852A5110982377D"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g28_b1_n_0
    );
g28_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3846E44C0180361D"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g28_b2_n_0
    );
g28_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3846E44C0180361D"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g28_b3_n_0
    );
g29_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE13B6185EC11810"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g29_b0_n_0
    );
g29_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4240373A7AB3E0C3"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g29_b1_n_0
    );
g29_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02403608D89980C0"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g29_b2_n_0
    );
g29_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02403608D89980C0"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g29_b3_n_0
    );
g2_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"636B0B249247E343"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g2_b0_n_0
    );
g2_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8398F3DC7C7F9C7F"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g2_b1_n_0
    );
g2_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03F803FC007F807F"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g2_b2_n_0
    );
g2_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03F803FC007F807F"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g2_b3_n_0
    );
g30_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FCC3D586E72EE99"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g30_b0_n_0
    );
g30_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D763ADC1DE03E119"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g30_b1_n_0
    );
g30_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C4CC8DC07E03E019"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g30_b2_n_0
    );
g30_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C4CC8DC07E03E019"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g30_b3_n_0
    );
g31_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8393F30EE7FE8378"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g31_b0_n_0
    );
g31_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E29195320EB5B150"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g31_b1_n_0
    );
g31_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E21391320FB1B110"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g31_b2_n_0
    );
g31_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E21391320FB1B110"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g31_b3_n_0
    );
g32_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"660FC6D81DA5AED5"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g32_b0_n_0
    );
g32_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"72BFC95861A87F15"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g32_b1_n_0
    );
g32_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"720FC05801A03F05"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g32_b2_n_0
    );
g32_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"720FC05801A03F05"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g32_b3_n_0
    );
g33_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"855BBA215D9FB437"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g33_b0_n_0
    );
g33_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9C23E1A701FC0D80"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g33_b1_n_0
    );
g33_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9C03E02701FC0D80"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g33_b2_n_0
    );
g33_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9C03E02701FC0D80"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g33_b3_n_0
    );
g34_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9E901FB86A71B218"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g34_b0_n_0
    );
g34_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7E61B03E50705396"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g34_b1_n_0
    );
g34_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7E01B03E40701390"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g34_b2_n_0
    );
g34_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7E01B03E40701390"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g34_b3_n_0
    );
g35_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CA28B49C4A5AE511"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g35_b0_n_0
    );
g35_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8C3AB1430D9070C"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g35_b1_n_0
    );
g35_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F803A01C00D80700"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g35_b2_n_0
    );
g35_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F803A01C00D80700"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g35_b3_n_0
    );
g36_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE95845DF7756D0C"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g36_b0_n_0
    );
g36_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11F187C07F23F10"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g36_b1_n_0
    );
g36_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E01F007C07F03F00"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g36_b2_n_0
    );
g36_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E01F007C07F03F00"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g36_b3_n_0
    );
g37_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"76F39237913E693A"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g37_b0_n_0
    );
g37_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08F863E01F0078C3"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g37_b1_n_0
    );
g37_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F803E01F007803"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g37_b2_n_0
    );
g37_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F803E01F007803"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g37_b3_n_0
    );
g38_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44EF17DDC822EE9B"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g38_b0_n_0
    );
g38_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"87E01FA1F8C3E11F"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g38_b1_n_0
    );
g38_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07E01F81F803E01F"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g38_b2_n_0
    );
g38_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07E01F81F803E01F"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g38_b3_n_0
    );
g39_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1938ECD9B3AC8133"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g39_b0_n_0
    );
g39_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"78C3E31F8CBC71F0"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g39_b1_n_0
    );
g39_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7803E01F80BC01F0"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g39_b2_n_0
    );
g39_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7803E01F80BC01F0"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g39_b3_n_0
    );
g3_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"633C57522AA6A40F"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g3_b0_n_0
    );
g3_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF0266B3499F3B80"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g3_b1_n_0
    );
g3_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00798C77803F80"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g3_b2_n_0
    );
g3_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF007F807F803F80"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g3_b3_n_0
    );
g40_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"649BB66E999B347C"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g40_b0_n_0
    );
g40_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"18F847E11F843C00"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g40_b1_n_0
    );
g40_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F807E01F803C00"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g40_b2_n_0
    );
g40_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F807E01F803C00"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g40_b3_n_0
    );
g41_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E4C9C13644C89332"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g41_b0_n_0
    );
g41_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC31F0C7C30F8C3E"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g41_b1_n_0
    );
g41_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC01F007C00F803E"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g41_b2_n_0
    );
g41_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC01F007C00F803E"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g41_b3_n_0
    );
g42_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CD9932264499322E"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g42_b0_n_0
    );
g42_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"31F8C3E187863E10"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g42_b1_n_0
    );
g42_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01F803E007803E00"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g42_b2_n_0
    );
g42_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01F803E007803E00"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g42_b3_n_0
    );
g43_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B32264C899333666"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g43_b0_n_0
    );
g43_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0C3E30F863F087E"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g43_b1_n_0
    );
g43_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F003E00F803F007E"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g43_b2_n_0
    );
g43_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F003E00F803F007E"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g43_b3_n_0
    );
g44_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8D9B323664CCC999"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g44_b0_n_0
    );
g44_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F843E087C30F861"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g44_b1_n_0
    );
g44_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F803E007C00F801"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g44_b2_n_0
    );
g44_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F803E007C00F801"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g44_b3_n_0
    );
g45_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"78F8F9F1B36366CC"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g45_b0_n_0
    );
g45_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F801F043E087C3"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g45_b1_n_0
    );
g45_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F801F003E007C0"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g45_b2_n_0
    );
g45_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F801F003E007C0"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g45_b3_n_0
    );
g46_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F9F1B1B36367C7C"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g46_b0_n_0
    );
g46_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"801F041F083E007C"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g46_b1_n_0
    );
g46_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"801F001F003E007C"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g46_b2_n_0
    );
g46_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"801F001F003E007C"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g46_b3_n_0
    );
g47_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E3E3E3E3E7C6CFCF"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g47_b0_n_0
    );
g47_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E003E003E007C00F"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g47_b1_n_0
    );
g47_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E003E003E007C00F"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g47_b2_n_0
    );
g47_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E003E003E007C00F"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g47_b3_n_0
    );
g48_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F9F1F1F1F1F1"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g48_b0_n_0
    );
g48_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800F801F001F001"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g48_b1_n_0
    );
g48_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800F801F001F001"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g48_b2_n_0
    );
g48_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800F801F001F001"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g48_b3_n_0
    );
g49_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"78787878787878F8"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g49_b0_n_0
    );
g49_b1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7800"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      O => g49_b1_n_0
    );
g49_b2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7800"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      O => g49_b2_n_0
    );
g49_b3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7800"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      O => g49_b3_n_0
    );
g4_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"806492547C0BA2E0"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g4_b0_n_0
    );
g4_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1C578E46FCC3067"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g4_b1_n_0
    );
g4_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0005F8079C0FD067"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g4_b2_n_0
    );
g4_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0005F807FC0FF067"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g4_b3_n_0
    );
g50_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F878783C7C7C7C7C"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g50_b0_n_0
    );
g50_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F80078007C007C00"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g50_b1_n_0
    );
g50_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F80078007C007C00"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g50_b2_n_0
    );
g50_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F80078007C007C00"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g50_b3_n_0
    );
g51_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0E070787878F8F8"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g51_b0_n_0
    );
g51_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F00070007800F800"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g51_b1_n_0
    );
g51_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F00070007800F800"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g51_b2_n_0
    );
g51_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F00070007800F800"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g51_b3_n_0
    );
g52_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8180C0E1F1F1F1F1"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g52_b0_n_0
    );
g52_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000C001F001F001"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g52_b1_n_0
    );
g52_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000C001F001F001"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g52_b2_n_0
    );
g52_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000C001F001F001"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g52_b3_n_0
    );
g53_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0E070787C7C787"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g53_b0_n_0
    );
g53_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000E00078007C007"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g53_b1_n_0
    );
g53_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000E00078007C007"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g53_b2_n_0
    );
g53_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000E00078007C007"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g53_b3_n_0
    );
g54_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"607030383838180C"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g54_b0_n_0
    );
g54_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"007000380038000C"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g54_b1_n_0
    );
g54_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"007000380038000C"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g54_b2_n_0
    );
g54_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"007000380038000C"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g54_b3_n_0
    );
g55_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"06070707838080E0"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g55_b0_n_0
    );
g55_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"06000700038000E0"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g55_b1_n_0
    );
g55_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"06000700038000E0"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g55_b2_n_0
    );
g55_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"06000700038000E0"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g55_b3_n_0
    );
g56_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000007078700008"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g56_b0_n_0
    );
g56_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000078000000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g56_b1_n_0
    );
g56_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000078000000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g56_b2_n_0
    );
g56_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000078000000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g56_b3_n_0
    );
g57_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000C060303"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g57_b0_n_0
    );
g57_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000060003"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g57_b1_n_0
    );
g57_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000060003"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g57_b2_n_0
    );
g57_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000060003"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g57_b3_n_0
    );
g5_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"196827DAAFD80FB3"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g5_b0_n_0
    );
g5_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE97FFF5E0C2CB30"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g5_b1_n_0
    );
g5_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000001F003430"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g5_b2_n_0
    );
g5_b3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => a(1),
      I1 => a(2),
      I2 => a(3),
      I3 => a(4),
      I4 => a(5),
      O => g5_b3_n_0
    );
g6_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"83D1E083C771B682"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g6_b0_n_0
    );
g6_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03D0008007404001"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g6_b1_n_0
    );
g6_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03D0008007400000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g6_b2_n_0
    );
g6_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03D0008007400000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g6_b3_n_0
    );
g7_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6E46860BCC204020"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g7_b0_n_0
    );
g7_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5BF5FE1C00200020"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g7_b1_n_0
    );
g7_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F4C1E000200020"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g7_b2_n_0
    );
g7_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4C00000200020"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g7_b3_n_0
    );
g8_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9C37C4AA28C0D3EE"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g8_b0_n_0
    );
g8_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"82C3CC14E76992B3"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g8_b1_n_0
    );
g8_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7CFF3BD2E024EFB7"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g8_b2_n_0
    );
g8_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF0012E024FFB7"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g8_b3_n_0
    );
g9_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1D1E884E0C6BAC0"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g9_b0_n_0
    );
g9_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1EE00BB10046FFE"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g9_b1_n_0
    );
g9_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0FFF78CFF8A7FE"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g9_b2_n_0
    );
g9_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000FFFF8C000A7FE"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g9_b3_n_0
    );
\spo[0]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[0]_INST_0_i_1_n_0\,
      I1 => \spo[0]_INST_0_i_2_n_0\,
      O => spo(0),
      S => a(11)
    );
\spo[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[0]_INST_0_i_3_n_0\,
      I1 => \spo[0]_INST_0_i_4_n_0\,
      I2 => a(10),
      I3 => \spo[0]_INST_0_i_5_n_0\,
      I4 => a(9),
      I5 => \spo[0]_INST_0_i_6_n_0\,
      O => \spo[0]_INST_0_i_1_n_0\
    );
\spo[0]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[0]_INST_0_i_33_n_0\,
      I1 => \spo[0]_INST_0_i_34_n_0\,
      I2 => a(8),
      I3 => \spo[0]_INST_0_i_35_n_0\,
      I4 => a(7),
      I5 => \spo[0]_INST_0_i_36_n_0\,
      O => \spo[0]_INST_0_i_10_n_0\
    );
\spo[0]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => g30_b0_n_0,
      I1 => g31_b0_n_0,
      O => \spo[0]_INST_0_i_11_n_0\,
      S => a(6)
    );
\spo[0]_INST_0_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => g28_b0_n_0,
      I1 => g29_b0_n_0,
      O => \spo[0]_INST_0_i_12_n_0\,
      S => a(6)
    );
\spo[0]_INST_0_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => g26_b0_n_0,
      I1 => g27_b0_n_0,
      O => \spo[0]_INST_0_i_13_n_0\,
      S => a(6)
    );
\spo[0]_INST_0_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => g24_b0_n_0,
      I1 => g25_b0_n_0,
      O => \spo[0]_INST_0_i_14_n_0\,
      S => a(6)
    );
\spo[0]_INST_0_i_15\: unisim.vcomponents.MUXF7
     port map (
      I0 => g22_b0_n_0,
      I1 => g23_b0_n_0,
      O => \spo[0]_INST_0_i_15_n_0\,
      S => a(6)
    );
\spo[0]_INST_0_i_16\: unisim.vcomponents.MUXF7
     port map (
      I0 => g20_b0_n_0,
      I1 => g21_b0_n_0,
      O => \spo[0]_INST_0_i_16_n_0\,
      S => a(6)
    );
\spo[0]_INST_0_i_17\: unisim.vcomponents.MUXF7
     port map (
      I0 => g18_b0_n_0,
      I1 => g19_b0_n_0,
      O => \spo[0]_INST_0_i_17_n_0\,
      S => a(6)
    );
\spo[0]_INST_0_i_18\: unisim.vcomponents.MUXF7
     port map (
      I0 => g16_b0_n_0,
      I1 => g17_b0_n_0,
      O => \spo[0]_INST_0_i_18_n_0\,
      S => a(6)
    );
\spo[0]_INST_0_i_19\: unisim.vcomponents.MUXF7
     port map (
      I0 => g14_b0_n_0,
      I1 => g15_b0_n_0,
      O => \spo[0]_INST_0_i_19_n_0\,
      S => a(6)
    );
\spo[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[0]_INST_0_i_7_n_0\,
      I1 => \spo[0]_INST_0_i_8_n_0\,
      I2 => a(10),
      I3 => \spo[0]_INST_0_i_9_n_0\,
      I4 => a(9),
      I5 => \spo[0]_INST_0_i_10_n_0\,
      O => \spo[0]_INST_0_i_2_n_0\
    );
\spo[0]_INST_0_i_20\: unisim.vcomponents.MUXF7
     port map (
      I0 => g12_b0_n_0,
      I1 => g13_b0_n_0,
      O => \spo[0]_INST_0_i_20_n_0\,
      S => a(6)
    );
\spo[0]_INST_0_i_21\: unisim.vcomponents.MUXF7
     port map (
      I0 => g10_b0_n_0,
      I1 => g11_b0_n_0,
      O => \spo[0]_INST_0_i_21_n_0\,
      S => a(6)
    );
\spo[0]_INST_0_i_22\: unisim.vcomponents.MUXF7
     port map (
      I0 => g8_b0_n_0,
      I1 => g9_b0_n_0,
      O => \spo[0]_INST_0_i_22_n_0\,
      S => a(6)
    );
\spo[0]_INST_0_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => g3_b0_n_0,
      I1 => g2_b0_n_0,
      I2 => a(7),
      I3 => a(6),
      I4 => g1_b0_n_0,
      O => \spo[0]_INST_0_i_23_n_0\
    );
\spo[0]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g7_b0_n_0,
      I1 => g6_b0_n_0,
      I2 => a(7),
      I3 => g5_b0_n_0,
      I4 => a(6),
      I5 => g4_b0_n_0,
      O => \spo[0]_INST_0_i_24_n_0\
    );
\spo[0]_INST_0_i_25\: unisim.vcomponents.MUXF7
     port map (
      I0 => g54_b0_n_0,
      I1 => g55_b0_n_0,
      O => \spo[0]_INST_0_i_25_n_0\,
      S => a(6)
    );
\spo[0]_INST_0_i_26\: unisim.vcomponents.MUXF7
     port map (
      I0 => g52_b0_n_0,
      I1 => g53_b0_n_0,
      O => \spo[0]_INST_0_i_26_n_0\,
      S => a(6)
    );
\spo[0]_INST_0_i_27\: unisim.vcomponents.MUXF7
     port map (
      I0 => g50_b0_n_0,
      I1 => g51_b0_n_0,
      O => \spo[0]_INST_0_i_27_n_0\,
      S => a(6)
    );
\spo[0]_INST_0_i_28\: unisim.vcomponents.MUXF7
     port map (
      I0 => g48_b0_n_0,
      I1 => g49_b0_n_0,
      O => \spo[0]_INST_0_i_28_n_0\,
      S => a(6)
    );
\spo[0]_INST_0_i_29\: unisim.vcomponents.MUXF7
     port map (
      I0 => g46_b0_n_0,
      I1 => g47_b0_n_0,
      O => \spo[0]_INST_0_i_29_n_0\,
      S => a(6)
    );
\spo[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[0]_INST_0_i_11_n_0\,
      I1 => \spo[0]_INST_0_i_12_n_0\,
      I2 => a(8),
      I3 => \spo[0]_INST_0_i_13_n_0\,
      I4 => a(7),
      I5 => \spo[0]_INST_0_i_14_n_0\,
      O => \spo[0]_INST_0_i_3_n_0\
    );
\spo[0]_INST_0_i_30\: unisim.vcomponents.MUXF7
     port map (
      I0 => g44_b0_n_0,
      I1 => g45_b0_n_0,
      O => \spo[0]_INST_0_i_30_n_0\,
      S => a(6)
    );
\spo[0]_INST_0_i_31\: unisim.vcomponents.MUXF7
     port map (
      I0 => g42_b0_n_0,
      I1 => g43_b0_n_0,
      O => \spo[0]_INST_0_i_31_n_0\,
      S => a(6)
    );
\spo[0]_INST_0_i_32\: unisim.vcomponents.MUXF7
     port map (
      I0 => g40_b0_n_0,
      I1 => g41_b0_n_0,
      O => \spo[0]_INST_0_i_32_n_0\,
      S => a(6)
    );
\spo[0]_INST_0_i_33\: unisim.vcomponents.MUXF7
     port map (
      I0 => g38_b0_n_0,
      I1 => g39_b0_n_0,
      O => \spo[0]_INST_0_i_33_n_0\,
      S => a(6)
    );
\spo[0]_INST_0_i_34\: unisim.vcomponents.MUXF7
     port map (
      I0 => g36_b0_n_0,
      I1 => g37_b0_n_0,
      O => \spo[0]_INST_0_i_34_n_0\,
      S => a(6)
    );
\spo[0]_INST_0_i_35\: unisim.vcomponents.MUXF7
     port map (
      I0 => g34_b0_n_0,
      I1 => g35_b0_n_0,
      O => \spo[0]_INST_0_i_35_n_0\,
      S => a(6)
    );
\spo[0]_INST_0_i_36\: unisim.vcomponents.MUXF7
     port map (
      I0 => g32_b0_n_0,
      I1 => g33_b0_n_0,
      O => \spo[0]_INST_0_i_36_n_0\,
      S => a(6)
    );
\spo[0]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[0]_INST_0_i_15_n_0\,
      I1 => \spo[0]_INST_0_i_16_n_0\,
      I2 => a(8),
      I3 => \spo[0]_INST_0_i_17_n_0\,
      I4 => a(7),
      I5 => \spo[0]_INST_0_i_18_n_0\,
      O => \spo[0]_INST_0_i_4_n_0\
    );
\spo[0]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[0]_INST_0_i_19_n_0\,
      I1 => \spo[0]_INST_0_i_20_n_0\,
      I2 => a(8),
      I3 => \spo[0]_INST_0_i_21_n_0\,
      I4 => a(7),
      I5 => \spo[0]_INST_0_i_22_n_0\,
      O => \spo[0]_INST_0_i_5_n_0\
    );
\spo[0]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[0]_INST_0_i_23_n_0\,
      I1 => \spo[0]_INST_0_i_24_n_0\,
      O => \spo[0]_INST_0_i_6_n_0\,
      S => a(8)
    );
\spo[0]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => g56_b0_n_0,
      I1 => a(6),
      I2 => g57_b0_n_0,
      I3 => a(7),
      I4 => a(8),
      O => \spo[0]_INST_0_i_7_n_0\
    );
\spo[0]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[0]_INST_0_i_25_n_0\,
      I1 => \spo[0]_INST_0_i_26_n_0\,
      I2 => a(8),
      I3 => \spo[0]_INST_0_i_27_n_0\,
      I4 => a(7),
      I5 => \spo[0]_INST_0_i_28_n_0\,
      O => \spo[0]_INST_0_i_8_n_0\
    );
\spo[0]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[0]_INST_0_i_29_n_0\,
      I1 => \spo[0]_INST_0_i_30_n_0\,
      I2 => a(8),
      I3 => \spo[0]_INST_0_i_31_n_0\,
      I4 => a(7),
      I5 => \spo[0]_INST_0_i_32_n_0\,
      O => \spo[0]_INST_0_i_9_n_0\
    );
\spo[1]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[1]_INST_0_i_1_n_0\,
      I1 => \spo[1]_INST_0_i_2_n_0\,
      O => spo(1),
      S => a(11)
    );
\spo[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[1]_INST_0_i_3_n_0\,
      I1 => \spo[1]_INST_0_i_4_n_0\,
      I2 => a(10),
      I3 => \spo[1]_INST_0_i_5_n_0\,
      I4 => a(9),
      I5 => \spo[1]_INST_0_i_6_n_0\,
      O => \spo[1]_INST_0_i_1_n_0\
    );
\spo[1]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[1]_INST_0_i_33_n_0\,
      I1 => \spo[1]_INST_0_i_34_n_0\,
      I2 => a(8),
      I3 => \spo[1]_INST_0_i_35_n_0\,
      I4 => a(7),
      I5 => \spo[1]_INST_0_i_36_n_0\,
      O => \spo[1]_INST_0_i_10_n_0\
    );
\spo[1]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => g30_b1_n_0,
      I1 => g31_b1_n_0,
      O => \spo[1]_INST_0_i_11_n_0\,
      S => a(6)
    );
\spo[1]_INST_0_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => g28_b1_n_0,
      I1 => g29_b1_n_0,
      O => \spo[1]_INST_0_i_12_n_0\,
      S => a(6)
    );
\spo[1]_INST_0_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => g26_b1_n_0,
      I1 => g27_b1_n_0,
      O => \spo[1]_INST_0_i_13_n_0\,
      S => a(6)
    );
\spo[1]_INST_0_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => g24_b1_n_0,
      I1 => g25_b1_n_0,
      O => \spo[1]_INST_0_i_14_n_0\,
      S => a(6)
    );
\spo[1]_INST_0_i_15\: unisim.vcomponents.MUXF7
     port map (
      I0 => g22_b1_n_0,
      I1 => g23_b1_n_0,
      O => \spo[1]_INST_0_i_15_n_0\,
      S => a(6)
    );
\spo[1]_INST_0_i_16\: unisim.vcomponents.MUXF7
     port map (
      I0 => g20_b1_n_0,
      I1 => g21_b1_n_0,
      O => \spo[1]_INST_0_i_16_n_0\,
      S => a(6)
    );
\spo[1]_INST_0_i_17\: unisim.vcomponents.MUXF7
     port map (
      I0 => g18_b1_n_0,
      I1 => g19_b1_n_0,
      O => \spo[1]_INST_0_i_17_n_0\,
      S => a(6)
    );
\spo[1]_INST_0_i_18\: unisim.vcomponents.MUXF7
     port map (
      I0 => g16_b1_n_0,
      I1 => g17_b1_n_0,
      O => \spo[1]_INST_0_i_18_n_0\,
      S => a(6)
    );
\spo[1]_INST_0_i_19\: unisim.vcomponents.MUXF7
     port map (
      I0 => g14_b1_n_0,
      I1 => g15_b1_n_0,
      O => \spo[1]_INST_0_i_19_n_0\,
      S => a(6)
    );
\spo[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[1]_INST_0_i_7_n_0\,
      I1 => \spo[1]_INST_0_i_8_n_0\,
      I2 => a(10),
      I3 => \spo[1]_INST_0_i_9_n_0\,
      I4 => a(9),
      I5 => \spo[1]_INST_0_i_10_n_0\,
      O => \spo[1]_INST_0_i_2_n_0\
    );
\spo[1]_INST_0_i_20\: unisim.vcomponents.MUXF7
     port map (
      I0 => g12_b1_n_0,
      I1 => g13_b1_n_0,
      O => \spo[1]_INST_0_i_20_n_0\,
      S => a(6)
    );
\spo[1]_INST_0_i_21\: unisim.vcomponents.MUXF7
     port map (
      I0 => g10_b1_n_0,
      I1 => g11_b1_n_0,
      O => \spo[1]_INST_0_i_21_n_0\,
      S => a(6)
    );
\spo[1]_INST_0_i_22\: unisim.vcomponents.MUXF7
     port map (
      I0 => g8_b1_n_0,
      I1 => g9_b1_n_0,
      O => \spo[1]_INST_0_i_22_n_0\,
      S => a(6)
    );
\spo[1]_INST_0_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => g3_b1_n_0,
      I1 => g2_b1_n_0,
      I2 => a(7),
      I3 => a(6),
      I4 => g1_b1_n_0,
      O => \spo[1]_INST_0_i_23_n_0\
    );
\spo[1]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g7_b1_n_0,
      I1 => g6_b1_n_0,
      I2 => a(7),
      I3 => g5_b1_n_0,
      I4 => a(6),
      I5 => g4_b1_n_0,
      O => \spo[1]_INST_0_i_24_n_0\
    );
\spo[1]_INST_0_i_25\: unisim.vcomponents.MUXF7
     port map (
      I0 => g54_b1_n_0,
      I1 => g55_b1_n_0,
      O => \spo[1]_INST_0_i_25_n_0\,
      S => a(6)
    );
\spo[1]_INST_0_i_26\: unisim.vcomponents.MUXF7
     port map (
      I0 => g52_b1_n_0,
      I1 => g53_b1_n_0,
      O => \spo[1]_INST_0_i_26_n_0\,
      S => a(6)
    );
\spo[1]_INST_0_i_27\: unisim.vcomponents.MUXF7
     port map (
      I0 => g50_b1_n_0,
      I1 => g51_b1_n_0,
      O => \spo[1]_INST_0_i_27_n_0\,
      S => a(6)
    );
\spo[1]_INST_0_i_28\: unisim.vcomponents.MUXF7
     port map (
      I0 => g48_b1_n_0,
      I1 => g49_b1_n_0,
      O => \spo[1]_INST_0_i_28_n_0\,
      S => a(6)
    );
\spo[1]_INST_0_i_29\: unisim.vcomponents.MUXF7
     port map (
      I0 => g46_b1_n_0,
      I1 => g47_b1_n_0,
      O => \spo[1]_INST_0_i_29_n_0\,
      S => a(6)
    );
\spo[1]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[1]_INST_0_i_11_n_0\,
      I1 => \spo[1]_INST_0_i_12_n_0\,
      I2 => a(8),
      I3 => \spo[1]_INST_0_i_13_n_0\,
      I4 => a(7),
      I5 => \spo[1]_INST_0_i_14_n_0\,
      O => \spo[1]_INST_0_i_3_n_0\
    );
\spo[1]_INST_0_i_30\: unisim.vcomponents.MUXF7
     port map (
      I0 => g44_b1_n_0,
      I1 => g45_b1_n_0,
      O => \spo[1]_INST_0_i_30_n_0\,
      S => a(6)
    );
\spo[1]_INST_0_i_31\: unisim.vcomponents.MUXF7
     port map (
      I0 => g42_b1_n_0,
      I1 => g43_b1_n_0,
      O => \spo[1]_INST_0_i_31_n_0\,
      S => a(6)
    );
\spo[1]_INST_0_i_32\: unisim.vcomponents.MUXF7
     port map (
      I0 => g40_b1_n_0,
      I1 => g41_b1_n_0,
      O => \spo[1]_INST_0_i_32_n_0\,
      S => a(6)
    );
\spo[1]_INST_0_i_33\: unisim.vcomponents.MUXF7
     port map (
      I0 => g38_b1_n_0,
      I1 => g39_b1_n_0,
      O => \spo[1]_INST_0_i_33_n_0\,
      S => a(6)
    );
\spo[1]_INST_0_i_34\: unisim.vcomponents.MUXF7
     port map (
      I0 => g36_b1_n_0,
      I1 => g37_b1_n_0,
      O => \spo[1]_INST_0_i_34_n_0\,
      S => a(6)
    );
\spo[1]_INST_0_i_35\: unisim.vcomponents.MUXF7
     port map (
      I0 => g34_b1_n_0,
      I1 => g35_b1_n_0,
      O => \spo[1]_INST_0_i_35_n_0\,
      S => a(6)
    );
\spo[1]_INST_0_i_36\: unisim.vcomponents.MUXF7
     port map (
      I0 => g32_b1_n_0,
      I1 => g33_b1_n_0,
      O => \spo[1]_INST_0_i_36_n_0\,
      S => a(6)
    );
\spo[1]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[1]_INST_0_i_15_n_0\,
      I1 => \spo[1]_INST_0_i_16_n_0\,
      I2 => a(8),
      I3 => \spo[1]_INST_0_i_17_n_0\,
      I4 => a(7),
      I5 => \spo[1]_INST_0_i_18_n_0\,
      O => \spo[1]_INST_0_i_4_n_0\
    );
\spo[1]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[1]_INST_0_i_19_n_0\,
      I1 => \spo[1]_INST_0_i_20_n_0\,
      I2 => a(8),
      I3 => \spo[1]_INST_0_i_21_n_0\,
      I4 => a(7),
      I5 => \spo[1]_INST_0_i_22_n_0\,
      O => \spo[1]_INST_0_i_5_n_0\
    );
\spo[1]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[1]_INST_0_i_23_n_0\,
      I1 => \spo[1]_INST_0_i_24_n_0\,
      O => \spo[1]_INST_0_i_6_n_0\,
      S => a(8)
    );
\spo[1]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => g56_b1_n_0,
      I1 => a(6),
      I2 => g57_b1_n_0,
      I3 => a(7),
      I4 => a(8),
      O => \spo[1]_INST_0_i_7_n_0\
    );
\spo[1]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[1]_INST_0_i_25_n_0\,
      I1 => \spo[1]_INST_0_i_26_n_0\,
      I2 => a(8),
      I3 => \spo[1]_INST_0_i_27_n_0\,
      I4 => a(7),
      I5 => \spo[1]_INST_0_i_28_n_0\,
      O => \spo[1]_INST_0_i_8_n_0\
    );
\spo[1]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[1]_INST_0_i_29_n_0\,
      I1 => \spo[1]_INST_0_i_30_n_0\,
      I2 => a(8),
      I3 => \spo[1]_INST_0_i_31_n_0\,
      I4 => a(7),
      I5 => \spo[1]_INST_0_i_32_n_0\,
      O => \spo[1]_INST_0_i_9_n_0\
    );
\spo[2]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[2]_INST_0_i_1_n_0\,
      I1 => \spo[2]_INST_0_i_2_n_0\,
      O => spo(2),
      S => a(11)
    );
\spo[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[2]_INST_0_i_3_n_0\,
      I1 => \spo[2]_INST_0_i_4_n_0\,
      I2 => a(10),
      I3 => \spo[2]_INST_0_i_5_n_0\,
      I4 => a(9),
      I5 => \spo[2]_INST_0_i_6_n_0\,
      O => \spo[2]_INST_0_i_1_n_0\
    );
\spo[2]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[2]_INST_0_i_33_n_0\,
      I1 => \spo[2]_INST_0_i_34_n_0\,
      I2 => a(8),
      I3 => \spo[2]_INST_0_i_35_n_0\,
      I4 => a(7),
      I5 => \spo[2]_INST_0_i_36_n_0\,
      O => \spo[2]_INST_0_i_10_n_0\
    );
\spo[2]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => g30_b2_n_0,
      I1 => g31_b2_n_0,
      O => \spo[2]_INST_0_i_11_n_0\,
      S => a(6)
    );
\spo[2]_INST_0_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => g28_b2_n_0,
      I1 => g29_b2_n_0,
      O => \spo[2]_INST_0_i_12_n_0\,
      S => a(6)
    );
\spo[2]_INST_0_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => g26_b2_n_0,
      I1 => g27_b2_n_0,
      O => \spo[2]_INST_0_i_13_n_0\,
      S => a(6)
    );
\spo[2]_INST_0_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => g24_b2_n_0,
      I1 => g25_b2_n_0,
      O => \spo[2]_INST_0_i_14_n_0\,
      S => a(6)
    );
\spo[2]_INST_0_i_15\: unisim.vcomponents.MUXF7
     port map (
      I0 => g22_b2_n_0,
      I1 => g23_b2_n_0,
      O => \spo[2]_INST_0_i_15_n_0\,
      S => a(6)
    );
\spo[2]_INST_0_i_16\: unisim.vcomponents.MUXF7
     port map (
      I0 => g20_b2_n_0,
      I1 => g21_b2_n_0,
      O => \spo[2]_INST_0_i_16_n_0\,
      S => a(6)
    );
\spo[2]_INST_0_i_17\: unisim.vcomponents.MUXF7
     port map (
      I0 => g18_b2_n_0,
      I1 => g19_b2_n_0,
      O => \spo[2]_INST_0_i_17_n_0\,
      S => a(6)
    );
\spo[2]_INST_0_i_18\: unisim.vcomponents.MUXF7
     port map (
      I0 => g16_b2_n_0,
      I1 => g17_b2_n_0,
      O => \spo[2]_INST_0_i_18_n_0\,
      S => a(6)
    );
\spo[2]_INST_0_i_19\: unisim.vcomponents.MUXF7
     port map (
      I0 => g14_b2_n_0,
      I1 => g15_b2_n_0,
      O => \spo[2]_INST_0_i_19_n_0\,
      S => a(6)
    );
\spo[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[2]_INST_0_i_7_n_0\,
      I1 => \spo[2]_INST_0_i_8_n_0\,
      I2 => a(10),
      I3 => \spo[2]_INST_0_i_9_n_0\,
      I4 => a(9),
      I5 => \spo[2]_INST_0_i_10_n_0\,
      O => \spo[2]_INST_0_i_2_n_0\
    );
\spo[2]_INST_0_i_20\: unisim.vcomponents.MUXF7
     port map (
      I0 => g12_b2_n_0,
      I1 => g13_b2_n_0,
      O => \spo[2]_INST_0_i_20_n_0\,
      S => a(6)
    );
\spo[2]_INST_0_i_21\: unisim.vcomponents.MUXF7
     port map (
      I0 => g10_b2_n_0,
      I1 => g11_b2_n_0,
      O => \spo[2]_INST_0_i_21_n_0\,
      S => a(6)
    );
\spo[2]_INST_0_i_22\: unisim.vcomponents.MUXF7
     port map (
      I0 => g8_b2_n_0,
      I1 => g9_b2_n_0,
      O => \spo[2]_INST_0_i_22_n_0\,
      S => a(6)
    );
\spo[2]_INST_0_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => g3_b2_n_0,
      I1 => g2_b2_n_0,
      I2 => a(7),
      I3 => a(6),
      I4 => g1_b2_n_0,
      O => \spo[2]_INST_0_i_23_n_0\
    );
\spo[2]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g7_b2_n_0,
      I1 => g6_b2_n_0,
      I2 => a(7),
      I3 => g5_b2_n_0,
      I4 => a(6),
      I5 => g4_b2_n_0,
      O => \spo[2]_INST_0_i_24_n_0\
    );
\spo[2]_INST_0_i_25\: unisim.vcomponents.MUXF7
     port map (
      I0 => g54_b2_n_0,
      I1 => g55_b2_n_0,
      O => \spo[2]_INST_0_i_25_n_0\,
      S => a(6)
    );
\spo[2]_INST_0_i_26\: unisim.vcomponents.MUXF7
     port map (
      I0 => g52_b2_n_0,
      I1 => g53_b2_n_0,
      O => \spo[2]_INST_0_i_26_n_0\,
      S => a(6)
    );
\spo[2]_INST_0_i_27\: unisim.vcomponents.MUXF7
     port map (
      I0 => g50_b2_n_0,
      I1 => g51_b2_n_0,
      O => \spo[2]_INST_0_i_27_n_0\,
      S => a(6)
    );
\spo[2]_INST_0_i_28\: unisim.vcomponents.MUXF7
     port map (
      I0 => g48_b2_n_0,
      I1 => g49_b2_n_0,
      O => \spo[2]_INST_0_i_28_n_0\,
      S => a(6)
    );
\spo[2]_INST_0_i_29\: unisim.vcomponents.MUXF7
     port map (
      I0 => g46_b2_n_0,
      I1 => g47_b2_n_0,
      O => \spo[2]_INST_0_i_29_n_0\,
      S => a(6)
    );
\spo[2]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[2]_INST_0_i_11_n_0\,
      I1 => \spo[2]_INST_0_i_12_n_0\,
      I2 => a(8),
      I3 => \spo[2]_INST_0_i_13_n_0\,
      I4 => a(7),
      I5 => \spo[2]_INST_0_i_14_n_0\,
      O => \spo[2]_INST_0_i_3_n_0\
    );
\spo[2]_INST_0_i_30\: unisim.vcomponents.MUXF7
     port map (
      I0 => g44_b2_n_0,
      I1 => g45_b2_n_0,
      O => \spo[2]_INST_0_i_30_n_0\,
      S => a(6)
    );
\spo[2]_INST_0_i_31\: unisim.vcomponents.MUXF7
     port map (
      I0 => g42_b2_n_0,
      I1 => g43_b2_n_0,
      O => \spo[2]_INST_0_i_31_n_0\,
      S => a(6)
    );
\spo[2]_INST_0_i_32\: unisim.vcomponents.MUXF7
     port map (
      I0 => g40_b2_n_0,
      I1 => g41_b2_n_0,
      O => \spo[2]_INST_0_i_32_n_0\,
      S => a(6)
    );
\spo[2]_INST_0_i_33\: unisim.vcomponents.MUXF7
     port map (
      I0 => g38_b2_n_0,
      I1 => g39_b2_n_0,
      O => \spo[2]_INST_0_i_33_n_0\,
      S => a(6)
    );
\spo[2]_INST_0_i_34\: unisim.vcomponents.MUXF7
     port map (
      I0 => g36_b2_n_0,
      I1 => g37_b2_n_0,
      O => \spo[2]_INST_0_i_34_n_0\,
      S => a(6)
    );
\spo[2]_INST_0_i_35\: unisim.vcomponents.MUXF7
     port map (
      I0 => g34_b2_n_0,
      I1 => g35_b2_n_0,
      O => \spo[2]_INST_0_i_35_n_0\,
      S => a(6)
    );
\spo[2]_INST_0_i_36\: unisim.vcomponents.MUXF7
     port map (
      I0 => g32_b2_n_0,
      I1 => g33_b2_n_0,
      O => \spo[2]_INST_0_i_36_n_0\,
      S => a(6)
    );
\spo[2]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[2]_INST_0_i_15_n_0\,
      I1 => \spo[2]_INST_0_i_16_n_0\,
      I2 => a(8),
      I3 => \spo[2]_INST_0_i_17_n_0\,
      I4 => a(7),
      I5 => \spo[2]_INST_0_i_18_n_0\,
      O => \spo[2]_INST_0_i_4_n_0\
    );
\spo[2]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[2]_INST_0_i_19_n_0\,
      I1 => \spo[2]_INST_0_i_20_n_0\,
      I2 => a(8),
      I3 => \spo[2]_INST_0_i_21_n_0\,
      I4 => a(7),
      I5 => \spo[2]_INST_0_i_22_n_0\,
      O => \spo[2]_INST_0_i_5_n_0\
    );
\spo[2]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[2]_INST_0_i_23_n_0\,
      I1 => \spo[2]_INST_0_i_24_n_0\,
      O => \spo[2]_INST_0_i_6_n_0\,
      S => a(8)
    );
\spo[2]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => g56_b2_n_0,
      I1 => a(6),
      I2 => g57_b2_n_0,
      I3 => a(7),
      I4 => a(8),
      O => \spo[2]_INST_0_i_7_n_0\
    );
\spo[2]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[2]_INST_0_i_25_n_0\,
      I1 => \spo[2]_INST_0_i_26_n_0\,
      I2 => a(8),
      I3 => \spo[2]_INST_0_i_27_n_0\,
      I4 => a(7),
      I5 => \spo[2]_INST_0_i_28_n_0\,
      O => \spo[2]_INST_0_i_8_n_0\
    );
\spo[2]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[2]_INST_0_i_29_n_0\,
      I1 => \spo[2]_INST_0_i_30_n_0\,
      I2 => a(8),
      I3 => \spo[2]_INST_0_i_31_n_0\,
      I4 => a(7),
      I5 => \spo[2]_INST_0_i_32_n_0\,
      O => \spo[2]_INST_0_i_9_n_0\
    );
\spo[3]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[3]_INST_0_i_1_n_0\,
      I1 => \spo[3]_INST_0_i_2_n_0\,
      O => spo(3),
      S => a(11)
    );
\spo[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[3]_INST_0_i_3_n_0\,
      I1 => \spo[3]_INST_0_i_4_n_0\,
      I2 => a(10),
      I3 => \spo[3]_INST_0_i_5_n_0\,
      I4 => a(9),
      I5 => \spo[3]_INST_0_i_6_n_0\,
      O => \spo[3]_INST_0_i_1_n_0\
    );
\spo[3]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[3]_INST_0_i_33_n_0\,
      I1 => \spo[3]_INST_0_i_34_n_0\,
      I2 => a(8),
      I3 => \spo[3]_INST_0_i_35_n_0\,
      I4 => a(7),
      I5 => \spo[3]_INST_0_i_36_n_0\,
      O => \spo[3]_INST_0_i_10_n_0\
    );
\spo[3]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => g30_b3_n_0,
      I1 => g31_b3_n_0,
      O => \spo[3]_INST_0_i_11_n_0\,
      S => a(6)
    );
\spo[3]_INST_0_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => g28_b3_n_0,
      I1 => g29_b3_n_0,
      O => \spo[3]_INST_0_i_12_n_0\,
      S => a(6)
    );
\spo[3]_INST_0_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => g26_b3_n_0,
      I1 => g27_b3_n_0,
      O => \spo[3]_INST_0_i_13_n_0\,
      S => a(6)
    );
\spo[3]_INST_0_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => g24_b3_n_0,
      I1 => g25_b3_n_0,
      O => \spo[3]_INST_0_i_14_n_0\,
      S => a(6)
    );
\spo[3]_INST_0_i_15\: unisim.vcomponents.MUXF7
     port map (
      I0 => g22_b3_n_0,
      I1 => g23_b3_n_0,
      O => \spo[3]_INST_0_i_15_n_0\,
      S => a(6)
    );
\spo[3]_INST_0_i_16\: unisim.vcomponents.MUXF7
     port map (
      I0 => g20_b3_n_0,
      I1 => g21_b3_n_0,
      O => \spo[3]_INST_0_i_16_n_0\,
      S => a(6)
    );
\spo[3]_INST_0_i_17\: unisim.vcomponents.MUXF7
     port map (
      I0 => g18_b3_n_0,
      I1 => g19_b3_n_0,
      O => \spo[3]_INST_0_i_17_n_0\,
      S => a(6)
    );
\spo[3]_INST_0_i_18\: unisim.vcomponents.MUXF7
     port map (
      I0 => g16_b3_n_0,
      I1 => g17_b3_n_0,
      O => \spo[3]_INST_0_i_18_n_0\,
      S => a(6)
    );
\spo[3]_INST_0_i_19\: unisim.vcomponents.MUXF7
     port map (
      I0 => g14_b3_n_0,
      I1 => g15_b3_n_0,
      O => \spo[3]_INST_0_i_19_n_0\,
      S => a(6)
    );
\spo[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[3]_INST_0_i_7_n_0\,
      I1 => \spo[3]_INST_0_i_8_n_0\,
      I2 => a(10),
      I3 => \spo[3]_INST_0_i_9_n_0\,
      I4 => a(9),
      I5 => \spo[3]_INST_0_i_10_n_0\,
      O => \spo[3]_INST_0_i_2_n_0\
    );
\spo[3]_INST_0_i_20\: unisim.vcomponents.MUXF7
     port map (
      I0 => g12_b3_n_0,
      I1 => g13_b3_n_0,
      O => \spo[3]_INST_0_i_20_n_0\,
      S => a(6)
    );
\spo[3]_INST_0_i_21\: unisim.vcomponents.MUXF7
     port map (
      I0 => g10_b3_n_0,
      I1 => g11_b3_n_0,
      O => \spo[3]_INST_0_i_21_n_0\,
      S => a(6)
    );
\spo[3]_INST_0_i_22\: unisim.vcomponents.MUXF7
     port map (
      I0 => g8_b3_n_0,
      I1 => g9_b3_n_0,
      O => \spo[3]_INST_0_i_22_n_0\,
      S => a(6)
    );
\spo[3]_INST_0_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => g3_b3_n_0,
      I1 => g2_b3_n_0,
      I2 => a(7),
      I3 => a(6),
      I4 => g1_b3_n_0,
      O => \spo[3]_INST_0_i_23_n_0\
    );
\spo[3]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => g7_b3_n_0,
      I1 => g6_b3_n_0,
      I2 => a(7),
      I3 => g5_b3_n_0,
      I4 => a(6),
      I5 => g4_b3_n_0,
      O => \spo[3]_INST_0_i_24_n_0\
    );
\spo[3]_INST_0_i_25\: unisim.vcomponents.MUXF7
     port map (
      I0 => g54_b3_n_0,
      I1 => g55_b3_n_0,
      O => \spo[3]_INST_0_i_25_n_0\,
      S => a(6)
    );
\spo[3]_INST_0_i_26\: unisim.vcomponents.MUXF7
     port map (
      I0 => g52_b3_n_0,
      I1 => g53_b3_n_0,
      O => \spo[3]_INST_0_i_26_n_0\,
      S => a(6)
    );
\spo[3]_INST_0_i_27\: unisim.vcomponents.MUXF7
     port map (
      I0 => g50_b3_n_0,
      I1 => g51_b3_n_0,
      O => \spo[3]_INST_0_i_27_n_0\,
      S => a(6)
    );
\spo[3]_INST_0_i_28\: unisim.vcomponents.MUXF7
     port map (
      I0 => g48_b3_n_0,
      I1 => g49_b3_n_0,
      O => \spo[3]_INST_0_i_28_n_0\,
      S => a(6)
    );
\spo[3]_INST_0_i_29\: unisim.vcomponents.MUXF7
     port map (
      I0 => g46_b3_n_0,
      I1 => g47_b3_n_0,
      O => \spo[3]_INST_0_i_29_n_0\,
      S => a(6)
    );
\spo[3]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[3]_INST_0_i_11_n_0\,
      I1 => \spo[3]_INST_0_i_12_n_0\,
      I2 => a(8),
      I3 => \spo[3]_INST_0_i_13_n_0\,
      I4 => a(7),
      I5 => \spo[3]_INST_0_i_14_n_0\,
      O => \spo[3]_INST_0_i_3_n_0\
    );
\spo[3]_INST_0_i_30\: unisim.vcomponents.MUXF7
     port map (
      I0 => g44_b3_n_0,
      I1 => g45_b3_n_0,
      O => \spo[3]_INST_0_i_30_n_0\,
      S => a(6)
    );
\spo[3]_INST_0_i_31\: unisim.vcomponents.MUXF7
     port map (
      I0 => g42_b3_n_0,
      I1 => g43_b3_n_0,
      O => \spo[3]_INST_0_i_31_n_0\,
      S => a(6)
    );
\spo[3]_INST_0_i_32\: unisim.vcomponents.MUXF7
     port map (
      I0 => g40_b3_n_0,
      I1 => g41_b3_n_0,
      O => \spo[3]_INST_0_i_32_n_0\,
      S => a(6)
    );
\spo[3]_INST_0_i_33\: unisim.vcomponents.MUXF7
     port map (
      I0 => g38_b3_n_0,
      I1 => g39_b3_n_0,
      O => \spo[3]_INST_0_i_33_n_0\,
      S => a(6)
    );
\spo[3]_INST_0_i_34\: unisim.vcomponents.MUXF7
     port map (
      I0 => g36_b3_n_0,
      I1 => g37_b3_n_0,
      O => \spo[3]_INST_0_i_34_n_0\,
      S => a(6)
    );
\spo[3]_INST_0_i_35\: unisim.vcomponents.MUXF7
     port map (
      I0 => g34_b3_n_0,
      I1 => g35_b3_n_0,
      O => \spo[3]_INST_0_i_35_n_0\,
      S => a(6)
    );
\spo[3]_INST_0_i_36\: unisim.vcomponents.MUXF7
     port map (
      I0 => g32_b3_n_0,
      I1 => g33_b3_n_0,
      O => \spo[3]_INST_0_i_36_n_0\,
      S => a(6)
    );
\spo[3]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[3]_INST_0_i_15_n_0\,
      I1 => \spo[3]_INST_0_i_16_n_0\,
      I2 => a(8),
      I3 => \spo[3]_INST_0_i_17_n_0\,
      I4 => a(7),
      I5 => \spo[3]_INST_0_i_18_n_0\,
      O => \spo[3]_INST_0_i_4_n_0\
    );
\spo[3]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[3]_INST_0_i_19_n_0\,
      I1 => \spo[3]_INST_0_i_20_n_0\,
      I2 => a(8),
      I3 => \spo[3]_INST_0_i_21_n_0\,
      I4 => a(7),
      I5 => \spo[3]_INST_0_i_22_n_0\,
      O => \spo[3]_INST_0_i_5_n_0\
    );
\spo[3]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[3]_INST_0_i_23_n_0\,
      I1 => \spo[3]_INST_0_i_24_n_0\,
      O => \spo[3]_INST_0_i_6_n_0\,
      S => a(8)
    );
\spo[3]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => g56_b3_n_0,
      I1 => a(6),
      I2 => g57_b3_n_0,
      I3 => a(7),
      I4 => a(8),
      O => \spo[3]_INST_0_i_7_n_0\
    );
\spo[3]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[3]_INST_0_i_25_n_0\,
      I1 => \spo[3]_INST_0_i_26_n_0\,
      I2 => a(8),
      I3 => \spo[3]_INST_0_i_27_n_0\,
      I4 => a(7),
      I5 => \spo[3]_INST_0_i_28_n_0\,
      O => \spo[3]_INST_0_i_8_n_0\
    );
\spo[3]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[3]_INST_0_i_29_n_0\,
      I1 => \spo[3]_INST_0_i_30_n_0\,
      I2 => a(8),
      I3 => \spo[3]_INST_0_i_31_n_0\,
      I4 => a(7),
      I5 => \spo[3]_INST_0_i_32_n_0\,
      O => \spo[3]_INST_0_i_9_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity crash_sound is
  port (
    a : in STD_LOGIC_VECTOR ( 11 downto 0 );
    spo : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of crash_sound : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of crash_sound : entity is "crash_sound,dist_mem_gen_v8_0_9,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of crash_sound : entity is "crash_sound,dist_mem_gen_v8_0_9,{x_ipProduct=Vivado 2015.3,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=dist_mem_gen,x_ipVersion=8.0,x_ipCoreRevision=9,x_ipLanguage=VERILOG,x_ipSimLanguage=VERILOG,C_FAMILY=artix7,C_ADDR_WIDTH=12,C_DEFAULT_DATA=0,C_DEPTH=3680,C_HAS_CLK=0,C_HAS_D=0,C_HAS_DPO=0,C_HAS_DPRA=0,C_HAS_I_CE=0,C_HAS_QDPO=0,C_HAS_QDPO_CE=0,C_HAS_QDPO_CLK=0,C_HAS_QDPO_RST=0,C_HAS_QDPO_SRST=0,C_HAS_QSPO=0,C_HAS_QSPO_CE=0,C_HAS_QSPO_RST=0,C_HAS_QSPO_SRST=0,C_HAS_SPO=1,C_HAS_WE=0,C_MEM_INIT_FILE=crash_sound.mif,C_ELABORATION_DIR=./,C_MEM_TYPE=0,C_PIPELINE_STAGES=0,C_QCE_JOINED=0,C_QUALIFY_WE=0,C_READ_MIF=1,C_REG_A_D_INPUTS=0,C_REG_DPRA_INPUT=0,C_SYNC_ENABLE=1,C_WIDTH=4,C_PARSER_TYPE=1}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of crash_sound : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of crash_sound : entity is "dist_mem_gen_v8_0_9,Vivado 2015.3";
end crash_sound;

architecture STRUCTURE of crash_sound is
  signal NLW_U0_dpo_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_qdpo_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_qspo_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_HAS_D : integer;
  attribute C_HAS_D of U0 : label is 0;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of U0 : label is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of U0 : label is 0;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of U0 : label is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of U0 : label is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of U0 : label is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of U0 : label is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of U0 : label is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of U0 : label is 0;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of U0 : label is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 0;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of U0 : label is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of U0 : label is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of U0 : label is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of U0 : label is 0;
  attribute c_addr_width : integer;
  attribute c_addr_width of U0 : label is 12;
  attribute c_default_data : string;
  attribute c_default_data of U0 : label is "0";
  attribute c_depth : integer;
  attribute c_depth of U0 : label is 3680;
  attribute c_elaboration_dir : string;
  attribute c_elaboration_dir of U0 : label is "./";
  attribute c_has_clk : integer;
  attribute c_has_clk of U0 : label is 0;
  attribute c_has_qspo : integer;
  attribute c_has_qspo of U0 : label is 0;
  attribute c_has_qspo_ce : integer;
  attribute c_has_qspo_ce of U0 : label is 0;
  attribute c_has_qspo_rst : integer;
  attribute c_has_qspo_rst of U0 : label is 0;
  attribute c_has_qspo_srst : integer;
  attribute c_has_qspo_srst of U0 : label is 0;
  attribute c_has_spo : integer;
  attribute c_has_spo of U0 : label is 1;
  attribute c_mem_init_file : string;
  attribute c_mem_init_file of U0 : label is "crash_sound.mif";
  attribute c_parser_type : integer;
  attribute c_parser_type of U0 : label is 1;
  attribute c_read_mif : integer;
  attribute c_read_mif of U0 : label is 1;
  attribute c_reg_a_d_inputs : integer;
  attribute c_reg_a_d_inputs of U0 : label is 0;
  attribute c_sync_enable : integer;
  attribute c_sync_enable of U0 : label is 1;
  attribute c_width : integer;
  attribute c_width of U0 : label is 4;
begin
U0: entity work.crash_sound_dist_mem_gen_v8_0_9
     port map (
      a(11 downto 0) => a(11 downto 0),
      clk => '0',
      d(3 downto 0) => B"0000",
      dpo(3 downto 0) => NLW_U0_dpo_UNCONNECTED(3 downto 0),
      dpra(11 downto 0) => B"000000000000",
      i_ce => '1',
      qdpo(3 downto 0) => NLW_U0_qdpo_UNCONNECTED(3 downto 0),
      qdpo_ce => '1',
      qdpo_clk => '0',
      qdpo_rst => '0',
      qdpo_srst => '0',
      qspo(3 downto 0) => NLW_U0_qspo_UNCONNECTED(3 downto 0),
      qspo_ce => '1',
      qspo_rst => '0',
      qspo_srst => '0',
      spo(3 downto 0) => spo(3 downto 0),
      we => '0'
    );
end STRUCTURE;
