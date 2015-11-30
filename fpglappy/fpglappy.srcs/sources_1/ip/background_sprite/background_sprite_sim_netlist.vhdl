-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.3 (win64) Build 1368829 Mon Sep 28 20:06:43 MDT 2015
-- Date        : Sun Nov 29 21:20:21 2015
-- Host        : Nick-PC running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/Nick/Documents/fpglappy/fpglappy/fpglappy.srcs/sources_1/ip/background_sprite/background_sprite_sim_netlist.vhdl
-- Design      : background_sprite
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity background_sprite_dist_mem_gen_v8_0_9 is
  port (
    a : in STD_LOGIC_VECTOR ( 12 downto 0 );
    d : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dpra : in STD_LOGIC_VECTOR ( 12 downto 0 );
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
    spo : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dpo : out STD_LOGIC_VECTOR ( 7 downto 0 );
    qspo : out STD_LOGIC_VECTOR ( 7 downto 0 );
    qdpo : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute C_ADDR_WIDTH : integer;
  attribute C_ADDR_WIDTH of background_sprite_dist_mem_gen_v8_0_9 : entity is 13;
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of background_sprite_dist_mem_gen_v8_0_9 : entity is "10001000";
  attribute C_DEPTH : integer;
  attribute C_DEPTH of background_sprite_dist_mem_gen_v8_0_9 : entity is 8192;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of background_sprite_dist_mem_gen_v8_0_9 : entity is "./";
  attribute C_FAMILY : string;
  attribute C_FAMILY of background_sprite_dist_mem_gen_v8_0_9 : entity is "artix7";
  attribute C_HAS_CLK : integer;
  attribute C_HAS_CLK of background_sprite_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_HAS_D : integer;
  attribute C_HAS_D of background_sprite_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of background_sprite_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of background_sprite_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of background_sprite_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of background_sprite_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of background_sprite_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of background_sprite_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of background_sprite_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of background_sprite_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_HAS_QSPO : integer;
  attribute C_HAS_QSPO of background_sprite_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_HAS_QSPO_CE : integer;
  attribute C_HAS_QSPO_CE of background_sprite_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_HAS_QSPO_RST : integer;
  attribute C_HAS_QSPO_RST of background_sprite_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_HAS_QSPO_SRST : integer;
  attribute C_HAS_QSPO_SRST of background_sprite_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_HAS_SPO : integer;
  attribute C_HAS_SPO of background_sprite_dist_mem_gen_v8_0_9 : entity is 1;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of background_sprite_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_MEM_INIT_FILE : string;
  attribute C_MEM_INIT_FILE of background_sprite_dist_mem_gen_v8_0_9 : entity is "background_sprite.mif";
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of background_sprite_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_PARSER_TYPE : integer;
  attribute C_PARSER_TYPE of background_sprite_dist_mem_gen_v8_0_9 : entity is 1;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of background_sprite_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of background_sprite_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of background_sprite_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_READ_MIF : integer;
  attribute C_READ_MIF of background_sprite_dist_mem_gen_v8_0_9 : entity is 1;
  attribute C_REG_A_D_INPUTS : integer;
  attribute C_REG_A_D_INPUTS of background_sprite_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of background_sprite_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_SYNC_ENABLE : integer;
  attribute C_SYNC_ENABLE of background_sprite_dist_mem_gen_v8_0_9 : entity is 1;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of background_sprite_dist_mem_gen_v8_0_9 : entity is 8;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of background_sprite_dist_mem_gen_v8_0_9 : entity is "dist_mem_gen_v8_0_9";
end background_sprite_dist_mem_gen_v8_0_9;

architecture STRUCTURE of background_sprite_dist_mem_gen_v8_0_9 is
  signal \<const0>\ : STD_LOGIC;
  signal \^spo\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \spo[0]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_2_n_0\ : STD_LOGIC;
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
  signal \spo[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_2_n_0\ : STD_LOGIC;
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
  signal \spo[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_39_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_40_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_41_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_42_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_43_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_44_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_45_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_46_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_47_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_48_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_49_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_50_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_51_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_52_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_39_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_40_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_41_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_42_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_43_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_44_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_45_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_46_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_47_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_48_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_49_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_50_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_51_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_52_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_53_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_54_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_55_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_56_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_57_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_58_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_59_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_60_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_61_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_62_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_63_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_64_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_65_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_66_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_67_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_68_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_69_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_70_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_71_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_72_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_9_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \spo[3]_INST_0_i_14\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \spo[3]_INST_0_i_15\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \spo[3]_INST_0_i_16\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \spo[3]_INST_0_i_17\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \spo[3]_INST_0_i_18\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \spo[3]_INST_0_i_19\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \spo[3]_INST_0_i_20\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \spo[3]_INST_0_i_21\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \spo[5]_INST_0_i_11\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \spo[5]_INST_0_i_13\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \spo[5]_INST_0_i_34\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \spo[5]_INST_0_i_38\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \spo[5]_INST_0_i_42\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \spo[5]_INST_0_i_43\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \spo[7]_INST_0_i_13\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \spo[7]_INST_0_i_16\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \spo[7]_INST_0_i_49\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \spo[7]_INST_0_i_54\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \spo[7]_INST_0_i_55\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \spo[7]_INST_0_i_62\ : label is "soft_lutpair2";
begin
  dpo(7) <= \<const0>\;
  dpo(6) <= \<const0>\;
  dpo(5) <= \<const0>\;
  dpo(4) <= \<const0>\;
  dpo(3) <= \<const0>\;
  dpo(2) <= \<const0>\;
  dpo(1) <= \<const0>\;
  dpo(0) <= \<const0>\;
  qdpo(7) <= \<const0>\;
  qdpo(6) <= \<const0>\;
  qdpo(5) <= \<const0>\;
  qdpo(4) <= \<const0>\;
  qdpo(3) <= \<const0>\;
  qdpo(2) <= \<const0>\;
  qdpo(1) <= \<const0>\;
  qdpo(0) <= \<const0>\;
  qspo(7) <= \<const0>\;
  qspo(6) <= \<const0>\;
  qspo(5) <= \<const0>\;
  qspo(4) <= \<const0>\;
  qspo(3) <= \<const0>\;
  qspo(2) <= \<const0>\;
  qspo(1) <= \<const0>\;
  qspo(0) <= \<const0>\;
  spo(7) <= \^spo\(7);
  spo(6) <= \^spo\(4);
  spo(5 downto 4) <= \^spo\(5 downto 4);
  spo(3) <= \^spo\(4);
  spo(2 downto 0) <= \^spo\(2 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\spo[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[0]_INST_0_i_1_n_0\,
      I1 => a(12),
      I2 => \spo[3]_INST_0_i_2_n_0\,
      I3 => a(11),
      I4 => \spo[3]_INST_0_i_3_n_0\,
      O => \^spo\(0)
    );
\spo[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEE222E2"
    )
        port map (
      I0 => \spo[7]_INST_0_i_1_n_0\,
      I1 => a(9),
      I2 => \spo[7]_INST_0_i_8_n_0\,
      I3 => a(10),
      I4 => \spo[0]_INST_0_i_2_n_0\,
      I5 => a(11),
      O => \spo[0]_INST_0_i_1_n_0\
    );
\spo[0]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFBFFFFFF"
    )
        port map (
      I0 => a(7),
      I1 => a(3),
      I2 => a(2),
      I3 => a(1),
      I4 => a(0),
      I5 => a(4),
      O => \spo[0]_INST_0_i_10_n_0\
    );
\spo[0]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FFFFFEEFFFBFFFF"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => a(3),
      I3 => a(0),
      I4 => a(1),
      I5 => a(2),
      O => \spo[0]_INST_0_i_11_n_0\
    );
\spo[0]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFAFFFFFFFFFFF"
    )
        port map (
      I0 => a(7),
      I1 => a(0),
      I2 => a(1),
      I3 => a(2),
      I4 => a(3),
      I5 => a(4),
      O => \spo[0]_INST_0_i_12_n_0\
    );
\spo[0]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFE7BFFFDF7FF7"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => a(0),
      I3 => a(1),
      I4 => a(2),
      I5 => a(3),
      O => \spo[0]_INST_0_i_13_n_0\
    );
\spo[0]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7EFFEFFF"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(2),
      I3 => a(1),
      I4 => a(0),
      I5 => a(7),
      O => \spo[0]_INST_0_i_14_n_0\
    );
\spo[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[0]_INST_0_i_3_n_0\,
      I1 => \spo[0]_INST_0_i_4_n_0\,
      I2 => a(6),
      I3 => \spo[0]_INST_0_i_5_n_0\,
      I4 => a(5),
      I5 => \spo[0]_INST_0_i_6_n_0\,
      O => \spo[0]_INST_0_i_2_n_0\
    );
\spo[0]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[0]_INST_0_i_7_n_0\,
      I1 => \spo[0]_INST_0_i_8_n_0\,
      O => \spo[0]_INST_0_i_3_n_0\,
      S => a(8)
    );
\spo[0]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[0]_INST_0_i_9_n_0\,
      I1 => \spo[0]_INST_0_i_10_n_0\,
      O => \spo[0]_INST_0_i_4_n_0\,
      S => a(8)
    );
\spo[0]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[0]_INST_0_i_11_n_0\,
      I1 => \spo[0]_INST_0_i_12_n_0\,
      O => \spo[0]_INST_0_i_5_n_0\,
      S => a(8)
    );
\spo[0]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[0]_INST_0_i_13_n_0\,
      I1 => \spo[0]_INST_0_i_14_n_0\,
      O => \spo[0]_INST_0_i_6_n_0\,
      S => a(8)
    );
\spo[0]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFEDFFFFFDFF"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => a(3),
      I3 => a(2),
      I4 => a(1),
      I5 => a(0),
      O => \spo[0]_INST_0_i_7_n_0\
    );
\spo[0]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF7FFFFEF"
    )
        port map (
      I0 => a(4),
      I1 => a(0),
      I2 => a(2),
      I3 => a(1),
      I4 => a(3),
      I5 => a(7),
      O => \spo[0]_INST_0_i_8_n_0\
    );
\spo[0]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFDFFFFFBDFFEED"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => a(0),
      I3 => a(2),
      I4 => a(1),
      I5 => a(3),
      O => \spo[0]_INST_0_i_9_n_0\
    );
\spo[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[1]_INST_0_i_1_n_0\,
      I1 => a(12),
      I2 => \spo[3]_INST_0_i_2_n_0\,
      I3 => a(11),
      I4 => \spo[3]_INST_0_i_3_n_0\,
      O => \^spo\(1)
    );
\spo[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \spo[7]_INST_0_i_1_n_0\,
      I1 => a(9),
      I2 => \spo[7]_INST_0_i_8_n_0\,
      I3 => a(10),
      I4 => \spo[1]_INST_0_i_2_n_0\,
      I5 => a(11),
      O => \spo[1]_INST_0_i_1_n_0\
    );
\spo[1]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000005040000"
    )
        port map (
      I0 => a(7),
      I1 => a(0),
      I2 => a(2),
      I3 => a(1),
      I4 => a(3),
      I5 => a(4),
      O => \spo[1]_INST_0_i_10_n_0\
    );
\spo[1]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAABBBFAABBB7B7"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => a(3),
      I3 => a(0),
      I4 => a(2),
      I5 => a(1),
      O => \spo[1]_INST_0_i_11_n_0\
    );
\spo[1]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"406E006E00000000"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(1),
      I3 => a(7),
      I4 => a(0),
      I5 => a(4),
      O => \spo[1]_INST_0_i_12_n_0\
    );
\spo[1]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCFCC3B33FF3FCF"
    )
        port map (
      I0 => a(0),
      I1 => a(4),
      I2 => a(7),
      I3 => a(2),
      I4 => a(1),
      I5 => a(3),
      O => \spo[1]_INST_0_i_13_n_0\
    );
\spo[1]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000081909010"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(2),
      I3 => a(0),
      I4 => a(1),
      I5 => a(7),
      O => \spo[1]_INST_0_i_14_n_0\
    );
\spo[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[1]_INST_0_i_3_n_0\,
      I1 => \spo[1]_INST_0_i_4_n_0\,
      I2 => a(6),
      I3 => \spo[1]_INST_0_i_5_n_0\,
      I4 => a(5),
      I5 => \spo[1]_INST_0_i_6_n_0\,
      O => \spo[1]_INST_0_i_2_n_0\
    );
\spo[1]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[1]_INST_0_i_7_n_0\,
      I1 => \spo[1]_INST_0_i_8_n_0\,
      O => \spo[1]_INST_0_i_3_n_0\,
      S => a(8)
    );
\spo[1]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[1]_INST_0_i_9_n_0\,
      I1 => \spo[1]_INST_0_i_10_n_0\,
      O => \spo[1]_INST_0_i_4_n_0\,
      S => a(8)
    );
\spo[1]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[1]_INST_0_i_11_n_0\,
      I1 => \spo[1]_INST_0_i_12_n_0\,
      O => \spo[1]_INST_0_i_5_n_0\,
      S => a(8)
    );
\spo[1]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[1]_INST_0_i_13_n_0\,
      I1 => \spo[1]_INST_0_i_14_n_0\,
      O => \spo[1]_INST_0_i_6_n_0\,
      S => a(8)
    );
\spo[1]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33AABABBF7557777"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => a(0),
      I3 => a(2),
      I4 => a(1),
      I5 => a(3),
      O => \spo[1]_INST_0_i_7_n_0\
    );
\spo[1]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000980190"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(1),
      I3 => a(2),
      I4 => a(0),
      I5 => a(7),
      O => \spo[1]_INST_0_i_8_n_0\
    );
\spo[1]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F33373FFF0F0807"
    )
        port map (
      I0 => a(0),
      I1 => a(4),
      I2 => a(7),
      I3 => a(1),
      I4 => a(2),
      I5 => a(3),
      O => \spo[1]_INST_0_i_9_n_0\
    );
\spo[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \spo[7]_INST_0_i_1_n_0\,
      I1 => a(9),
      I2 => \spo[2]_INST_0_i_1_n_0\,
      I3 => a(11),
      I4 => a(12),
      I5 => \spo[7]_INST_0_i_3_n_0\,
      O => \^spo\(2)
    );
\spo[2]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[2]_INST_0_i_2_n_0\,
      I1 => a(6),
      I2 => \spo[2]_INST_0_i_3_n_0\,
      I3 => a(10),
      I4 => \spo[7]_INST_0_i_8_n_0\,
      O => \spo[2]_INST_0_i_1_n_0\
    );
\spo[2]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33AABEABB7557557"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => a(0),
      I3 => a(2),
      I4 => a(1),
      I5 => a(3),
      O => \spo[2]_INST_0_i_10_n_0\
    );
\spo[2]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000800051000"
    )
        port map (
      I0 => a(4),
      I1 => a(0),
      I2 => a(7),
      I3 => a(2),
      I4 => a(1),
      I5 => a(3),
      O => \spo[2]_INST_0_i_11_n_0\
    );
\spo[2]_INST_0_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[2]_INST_0_i_4_n_0\,
      I1 => \spo[2]_INST_0_i_5_n_0\,
      O => \spo[2]_INST_0_i_2_n_0\,
      S => a(5)
    );
\spo[2]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[7]_INST_0_i_20_n_0\,
      I1 => \spo[2]_INST_0_i_6_n_0\,
      I2 => a(5),
      I3 => \spo[2]_INST_0_i_7_n_0\,
      I4 => a(8),
      I5 => \spo[7]_INST_0_i_23_n_0\,
      O => \spo[2]_INST_0_i_3_n_0\
    );
\spo[2]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[2]_INST_0_i_8_n_0\,
      I1 => \spo[2]_INST_0_i_9_n_0\,
      O => \spo[2]_INST_0_i_4_n_0\,
      S => a(8)
    );
\spo[2]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[2]_INST_0_i_10_n_0\,
      I1 => \spo[2]_INST_0_i_11_n_0\,
      O => \spo[2]_INST_0_i_5_n_0\,
      S => a(8)
    );
\spo[2]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AEAAAAAAAA5FFFF"
    )
        port map (
      I0 => a(4),
      I1 => a(0),
      I2 => a(1),
      I3 => a(3),
      I4 => a(7),
      I5 => a(2),
      O => \spo[2]_INST_0_i_6_n_0\
    );
\spo[2]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000040008300"
    )
        port map (
      I0 => a(0),
      I1 => a(4),
      I2 => a(3),
      I3 => a(2),
      I4 => a(1),
      I5 => a(7),
      O => \spo[2]_INST_0_i_7_n_0\
    );
\spo[2]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33555577FB003641"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => a(0),
      I3 => a(2),
      I4 => a(1),
      I5 => a(3),
      O => \spo[2]_INST_0_i_8_n_0\
    );
\spo[2]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0041001000002000"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => a(0),
      I3 => a(2),
      I4 => a(1),
      I5 => a(3),
      O => \spo[2]_INST_0_i_9_n_0\
    );
\spo[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[3]_INST_0_i_1_n_0\,
      I1 => a(12),
      I2 => \spo[3]_INST_0_i_2_n_0\,
      I3 => a(11),
      I4 => \spo[3]_INST_0_i_3_n_0\,
      O => \^spo\(4)
    );
\spo[3]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEEE2"
    )
        port map (
      I0 => \spo[7]_INST_0_i_1_n_0\,
      I1 => a(9),
      I2 => a(10),
      I3 => \spo[7]_INST_0_i_8_n_0\,
      I4 => a(11),
      O => \spo[3]_INST_0_i_1_n_0\
    );
\spo[3]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF05FE0EFFFFFFFF"
    )
        port map (
      I0 => a(8),
      I1 => \spo[3]_INST_0_i_18_n_0\,
      I2 => a(0),
      I3 => \spo[3]_INST_0_i_19_n_0\,
      I4 => a(7),
      I5 => a(4),
      O => \spo[3]_INST_0_i_10_n_0\
    );
\spo[3]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF05FE0E"
    )
        port map (
      I0 => a(8),
      I1 => \spo[3]_INST_0_i_20_n_0\,
      I2 => a(0),
      I3 => \spo[3]_INST_0_i_18_n_0\,
      I4 => a(7),
      I5 => a(4),
      O => \spo[3]_INST_0_i_11_n_0\
    );
\spo[3]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA0FEA4FFFFFFFF"
    )
        port map (
      I0 => a(8),
      I1 => \spo[3]_INST_0_i_21_n_0\,
      I2 => a(0),
      I3 => \spo[3]_INST_0_i_20_n_0\,
      I4 => a(7),
      I5 => a(4),
      O => \spo[3]_INST_0_i_12_n_0\
    );
\spo[3]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFDFFDDF"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(1),
      I3 => a(0),
      I4 => a(7),
      I5 => a(4),
      O => \spo[3]_INST_0_i_13_n_0\
    );
\spo[3]_INST_0_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(1),
      O => \spo[3]_INST_0_i_14_n_0\
    );
\spo[3]_INST_0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDFC"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      O => \spo[3]_INST_0_i_15_n_0\
    );
\spo[3]_INST_0_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"83FFFFFF"
    )
        port map (
      I0 => a(0),
      I1 => a(7),
      I2 => a(1),
      I3 => a(2),
      I4 => a(3),
      O => \spo[3]_INST_0_i_16_n_0\
    );
\spo[3]_INST_0_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => a(1),
      I1 => a(2),
      I2 => a(3),
      O => \spo[3]_INST_0_i_17_n_0\
    );
\spo[3]_INST_0_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => a(1),
      I1 => a(2),
      I2 => a(3),
      O => \spo[3]_INST_0_i_18_n_0\
    );
\spo[3]_INST_0_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => a(1),
      I1 => a(2),
      I2 => a(3),
      O => \spo[3]_INST_0_i_19_n_0\
    );
\spo[3]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[7]_INST_0_i_9_n_0\,
      I1 => a(9),
      I2 => \spo[3]_INST_0_i_4_n_0\,
      I3 => a(10),
      I4 => \spo[3]_INST_0_i_5_n_0\,
      O => \spo[3]_INST_0_i_2_n_0\
    );
\spo[3]_INST_0_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => a(1),
      I1 => a(2),
      I2 => a(3),
      O => \spo[3]_INST_0_i_20_n_0\
    );
\spo[3]_INST_0_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => a(2),
      I1 => a(1),
      I2 => a(3),
      O => \spo[3]_INST_0_i_21_n_0\
    );
\spo[3]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF5DFDFFFFFFFFF"
    )
        port map (
      I0 => a(10),
      I1 => \spo[3]_INST_0_i_6_n_0\,
      I2 => a(6),
      I3 => \spo[3]_INST_0_i_7_n_0\,
      I4 => a(5),
      I5 => a(9),
      O => \spo[3]_INST_0_i_3_n_0\
    );
\spo[3]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF00E2FFE2FF"
    )
        port map (
      I0 => \spo[3]_INST_0_i_8_n_0\,
      I1 => a(8),
      I2 => \spo[3]_INST_0_i_9_n_0\,
      I3 => a(6),
      I4 => \spo[3]_INST_0_i_10_n_0\,
      I5 => a(5),
      O => \spo[3]_INST_0_i_4_n_0\
    );
\spo[3]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCBB"
    )
        port map (
      I0 => \spo[3]_INST_0_i_11_n_0\,
      I1 => a(6),
      I2 => \spo[3]_INST_0_i_12_n_0\,
      I3 => a(5),
      O => \spo[3]_INST_0_i_5_n_0\
    );
\spo[3]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBB888B8"
    )
        port map (
      I0 => \spo[3]_INST_0_i_13_n_0\,
      I1 => a(8),
      I2 => \spo[3]_INST_0_i_14_n_0\,
      I3 => a(7),
      I4 => \spo[3]_INST_0_i_15_n_0\,
      I5 => a(4),
      O => \spo[3]_INST_0_i_6_n_0\
    );
\spo[3]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB8BBBBBFFFFFFFF"
    )
        port map (
      I0 => \spo[3]_INST_0_i_16_n_0\,
      I1 => a(8),
      I2 => a(7),
      I3 => \spo[3]_INST_0_i_17_n_0\,
      I4 => a(0),
      I5 => a(4),
      O => \spo[3]_INST_0_i_7_n_0\
    );
\spo[3]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFBFBFBEF"
    )
        port map (
      I0 => a(3),
      I1 => a(1),
      I2 => a(2),
      I3 => a(0),
      I4 => a(7),
      I5 => a(4),
      O => \spo[3]_INST_0_i_8_n_0\
    );
\spo[3]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFEFEEF"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(1),
      I3 => a(0),
      I4 => a(7),
      I5 => a(4),
      O => \spo[3]_INST_0_i_9_n_0\
    );
\spo[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[5]_INST_0_i_1_n_0\,
      I1 => \spo[5]_INST_0_i_2_n_0\,
      I2 => a(12),
      I3 => \spo[5]_INST_0_i_3_n_0\,
      I4 => a(11),
      I5 => \spo[5]_INST_0_i_4_n_0\,
      O => \^spo\(5)
    );
\spo[5]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => a(10),
      I1 => \spo[5]_INST_0_i_5_n_0\,
      I2 => a(6),
      I3 => \spo[5]_INST_0_i_6_n_0\,
      I4 => a(9),
      O => \spo[5]_INST_0_i_1_n_0\
    );
\spo[5]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[5]_INST_0_i_24_n_0\,
      I1 => a(6),
      I2 => \spo[5]_INST_0_i_25_n_0\,
      I3 => a(10),
      I4 => \spo[5]_INST_0_i_26_n_0\,
      O => \spo[5]_INST_0_i_10_n_0\
    );
\spo[5]_INST_0_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => a(2),
      I1 => a(1),
      I2 => a(3),
      O => \spo[5]_INST_0_i_11_n_0\
    );
\spo[5]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000150000000000"
    )
        port map (
      I0 => a(7),
      I1 => a(1),
      I2 => a(0),
      I3 => a(3),
      I4 => a(2),
      I5 => a(4),
      O => \spo[5]_INST_0_i_12_n_0\
    );
\spo[5]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(7),
      O => \spo[5]_INST_0_i_13_n_0\
    );
\spo[5]_INST_0_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[5]_INST_0_i_27_n_0\,
      I1 => \spo[5]_INST_0_i_28_n_0\,
      O => \spo[5]_INST_0_i_14_n_0\,
      S => a(8)
    );
\spo[5]_INST_0_i_15\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[5]_INST_0_i_29_n_0\,
      I1 => \spo[5]_INST_0_i_30_n_0\,
      O => \spo[5]_INST_0_i_15_n_0\,
      S => a(8)
    );
\spo[5]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBB8BBBBB"
    )
        port map (
      I0 => \spo[5]_INST_0_i_31_n_0\,
      I1 => a(8),
      I2 => a(7),
      I3 => a(2),
      I4 => a(3),
      I5 => a(4),
      O => \spo[5]_INST_0_i_16_n_0\
    );
\spo[5]_INST_0_i_17\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[5]_INST_0_i_32_n_0\,
      I1 => \spo[5]_INST_0_i_33_n_0\,
      O => \spo[5]_INST_0_i_17_n_0\,
      S => a(8)
    );
\spo[5]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEFFAEF"
    )
        port map (
      I0 => a(7),
      I1 => \spo[3]_INST_0_i_17_n_0\,
      I2 => a(0),
      I3 => a(4),
      I4 => \spo[5]_INST_0_i_34_n_0\,
      I5 => a(8),
      O => \spo[5]_INST_0_i_18_n_0\
    );
\spo[5]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88FFFEFF98AA"
    )
        port map (
      I0 => a(8),
      I1 => a(0),
      I2 => \spo[3]_INST_0_i_21_n_0\,
      I3 => a(4),
      I4 => \spo[3]_INST_0_i_20_n_0\,
      I5 => a(7),
      O => \spo[5]_INST_0_i_19_n_0\
    );
\spo[5]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[5]_INST_0_i_7_n_0\,
      I1 => a(10),
      I2 => \spo[7]_INST_0_i_8_n_0\,
      I3 => a(9),
      I4 => \spo[7]_INST_0_i_1_n_0\,
      O => \spo[5]_INST_0_i_2_n_0\
    );
\spo[5]_INST_0_i_20\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[5]_INST_0_i_35_n_0\,
      I1 => \spo[5]_INST_0_i_36_n_0\,
      O => \spo[5]_INST_0_i_20_n_0\,
      S => a(8)
    );
\spo[5]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAA00C000C000"
    )
        port map (
      I0 => \spo[5]_INST_0_i_37_n_0\,
      I1 => \spo[5]_INST_0_i_38_n_0\,
      I2 => a(4),
      I3 => a(5),
      I4 => \spo[5]_INST_0_i_39_n_0\,
      I5 => a(8),
      O => \spo[5]_INST_0_i_21_n_0\
    );
\spo[5]_INST_0_i_22\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[5]_INST_0_i_40_n_0\,
      I1 => \spo[5]_INST_0_i_41_n_0\,
      O => \spo[5]_INST_0_i_22_n_0\,
      S => a(8)
    );
\spo[5]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E222222200000000"
    )
        port map (
      I0 => \spo[5]_INST_0_i_42_n_0\,
      I1 => a(4),
      I2 => a(7),
      I3 => \spo[5]_INST_0_i_43_n_0\,
      I4 => a(3),
      I5 => a(8),
      O => \spo[5]_INST_0_i_23_n_0\
    );
\spo[5]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[5]_INST_0_i_44_n_0\,
      I1 => \spo[5]_INST_0_i_45_n_0\,
      I2 => a(5),
      I3 => \spo[3]_INST_0_i_13_n_0\,
      I4 => a(8),
      I5 => \spo[5]_INST_0_i_46_n_0\,
      O => \spo[5]_INST_0_i_24_n_0\
    );
\spo[5]_INST_0_i_25\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[5]_INST_0_i_47_n_0\,
      I1 => \spo[5]_INST_0_i_48_n_0\,
      O => \spo[5]_INST_0_i_25_n_0\,
      S => a(5)
    );
\spo[5]_INST_0_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => \spo[5]_INST_0_i_42_n_0\,
      I3 => a(8),
      I4 => a(6),
      O => \spo[5]_INST_0_i_26_n_0\
    );
\spo[5]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBFFDFFFFFFFF"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(2),
      I3 => a(1),
      I4 => a(0),
      I5 => a(7),
      O => \spo[5]_INST_0_i_27_n_0\
    );
\spo[5]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0027A21108752350"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => a(0),
      I3 => a(3),
      I4 => a(2),
      I5 => a(1),
      O => \spo[5]_INST_0_i_28_n_0\
    );
\spo[5]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFDFFFFFFFFDF"
    )
        port map (
      I0 => a(4),
      I1 => a(0),
      I2 => a(1),
      I3 => a(2),
      I4 => a(3),
      I5 => a(7),
      O => \spo[5]_INST_0_i_29_n_0\
    );
\spo[5]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[7]_INST_0_i_9_n_0\,
      I1 => a(9),
      I2 => \spo[3]_INST_0_i_4_n_0\,
      I3 => a(10),
      I4 => \spo[5]_INST_0_i_8_n_0\,
      O => \spo[5]_INST_0_i_3_n_0\
    );
\spo[5]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2223043255003701"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => a(0),
      I3 => a(3),
      I4 => a(1),
      I5 => a(2),
      O => \spo[5]_INST_0_i_30_n_0\
    );
\spo[5]_INST_0_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"28AAAAA2AA223277"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => a(0),
      I3 => a(1),
      I4 => a(2),
      I5 => a(3),
      O => \spo[5]_INST_0_i_31_n_0\
    );
\spo[5]_INST_0_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFEFFFFFFFF7BFFF"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => a(3),
      I3 => a(1),
      I4 => a(2),
      I5 => a(0),
      O => \spo[5]_INST_0_i_32_n_0\
    );
\spo[5]_INST_0_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B22A022045132013"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => a(0),
      I3 => a(1),
      I4 => a(2),
      I5 => a(3),
      O => \spo[5]_INST_0_i_33_n_0\
    );
\spo[5]_INST_0_i_34\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => a(1),
      I1 => a(2),
      I2 => a(3),
      O => \spo[5]_INST_0_i_34_n_0\
    );
\spo[5]_INST_0_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEBAEC5ADD57DD"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => a(0),
      I3 => a(1),
      I4 => a(2),
      I5 => a(3),
      O => \spo[5]_INST_0_i_35_n_0\
    );
\spo[5]_INST_0_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFDBDFDB"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(2),
      I3 => a(1),
      I4 => a(0),
      I5 => a(7),
      O => \spo[5]_INST_0_i_36_n_0\
    );
\spo[5]_INST_0_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA0088000308005"
    )
        port map (
      I0 => a(4),
      I1 => a(0),
      I2 => a(7),
      I3 => a(1),
      I4 => a(2),
      I5 => a(3),
      O => \spo[5]_INST_0_i_37_n_0\
    );
\spo[5]_INST_0_i_38\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(7),
      O => \spo[5]_INST_0_i_38_n_0\
    );
\spo[5]_INST_0_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004800100000004"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => a(3),
      I3 => a(2),
      I4 => a(1),
      I5 => a(0),
      O => \spo[5]_INST_0_i_39_n_0\
    );
\spo[5]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[5]_INST_0_i_9_n_0\,
      I1 => \spo[5]_INST_0_i_10_n_0\,
      O => \spo[5]_INST_0_i_4_n_0\,
      S => a(9)
    );
\spo[5]_INST_0_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"108028A2AAFAA887"
    )
        port map (
      I0 => a(4),
      I1 => a(0),
      I2 => a(7),
      I3 => a(1),
      I4 => a(2),
      I5 => a(3),
      O => \spo[5]_INST_0_i_40_n_0\
    );
\spo[5]_INST_0_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"41CCAEEABEEEFFFF"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => a(1),
      I3 => a(0),
      I4 => a(2),
      I5 => a(3),
      O => \spo[5]_INST_0_i_41_n_0\
    );
\spo[5]_INST_0_i_42\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00081420"
    )
        port map (
      I0 => a(7),
      I1 => a(0),
      I2 => a(1),
      I3 => a(2),
      I4 => a(3),
      O => \spo[5]_INST_0_i_42_n_0\
    );
\spo[5]_INST_0_i_43\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => a(2),
      I1 => a(1),
      O => \spo[5]_INST_0_i_43_n_0\
    );
\spo[5]_INST_0_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C9FFEEFFFFD5FF7D"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => a(0),
      I3 => a(2),
      I4 => a(1),
      I5 => a(3),
      O => \spo[5]_INST_0_i_44_n_0\
    );
\spo[5]_INST_0_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88DD9CD44275CD41"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => a(0),
      I3 => a(3),
      I4 => a(2),
      I5 => a(1),
      O => \spo[5]_INST_0_i_45_n_0\
    );
\spo[5]_INST_0_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7DEEFEEEFEEEAEBB"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => a(0),
      I3 => a(3),
      I4 => a(2),
      I5 => a(1),
      O => \spo[5]_INST_0_i_46_n_0\
    );
\spo[5]_INST_0_i_47\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[5]_INST_0_i_49_n_0\,
      I1 => \spo[5]_INST_0_i_50_n_0\,
      O => \spo[5]_INST_0_i_47_n_0\,
      S => a(8)
    );
\spo[5]_INST_0_i_48\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[5]_INST_0_i_51_n_0\,
      I1 => \spo[5]_INST_0_i_52_n_0\,
      O => \spo[5]_INST_0_i_48_n_0\,
      S => a(8)
    );
\spo[5]_INST_0_i_49\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2A0888004044515"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => a(2),
      I3 => a(0),
      I4 => a(1),
      I5 => a(3),
      O => \spo[5]_INST_0_i_49_n_0\
    );
\spo[5]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => a(8),
      I1 => a(7),
      I2 => \spo[5]_INST_0_i_11_n_0\,
      I3 => a(0),
      I4 => a(4),
      I5 => a(5),
      O => \spo[5]_INST_0_i_5_n_0\
    );
\spo[5]_INST_0_i_50\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAAAA88291005555"
    )
        port map (
      I0 => a(4),
      I1 => a(0),
      I2 => a(1),
      I3 => a(7),
      I4 => a(2),
      I5 => a(3),
      O => \spo[5]_INST_0_i_50_n_0\
    );
\spo[5]_INST_0_i_51\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2EA8AA8629DDCCD7"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => a(0),
      I3 => a(2),
      I4 => a(1),
      I5 => a(3),
      O => \spo[5]_INST_0_i_51_n_0\
    );
\spo[5]_INST_0_i_52\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D423EEBEEFFFFFFF"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => a(0),
      I3 => a(1),
      I4 => a(2),
      I5 => a(3),
      O => \spo[5]_INST_0_i_52_n_0\
    );
\spo[5]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008B88"
    )
        port map (
      I0 => \spo[5]_INST_0_i_12_n_0\,
      I1 => a(5),
      I2 => a(4),
      I3 => \spo[5]_INST_0_i_13_n_0\,
      I4 => a(8),
      O => \spo[5]_INST_0_i_6_n_0\
    );
\spo[5]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[5]_INST_0_i_14_n_0\,
      I1 => \spo[5]_INST_0_i_15_n_0\,
      I2 => a(6),
      I3 => \spo[5]_INST_0_i_16_n_0\,
      I4 => a(5),
      I5 => \spo[5]_INST_0_i_17_n_0\,
      O => \spo[5]_INST_0_i_7_n_0\
    );
\spo[5]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[5]_INST_0_i_18_n_0\,
      I1 => \spo[3]_INST_0_i_11_n_0\,
      I2 => a(6),
      I3 => \spo[5]_INST_0_i_19_n_0\,
      I4 => a(5),
      I5 => \spo[5]_INST_0_i_20_n_0\,
      O => \spo[5]_INST_0_i_8_n_0\
    );
\spo[5]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \spo[5]_INST_0_i_21_n_0\,
      I1 => a(6),
      I2 => \spo[5]_INST_0_i_22_n_0\,
      I3 => a(5),
      I4 => \spo[5]_INST_0_i_23_n_0\,
      I5 => a(10),
      O => \spo[5]_INST_0_i_9_n_0\
    );
\spo[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \spo[7]_INST_0_i_1_n_0\,
      I1 => a(9),
      I2 => \spo[7]_INST_0_i_2_n_0\,
      I3 => a(11),
      I4 => a(12),
      I5 => \spo[7]_INST_0_i_3_n_0\,
      O => \^spo\(7)
    );
\spo[7]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[7]_INST_0_i_4_n_0\,
      I1 => \spo[7]_INST_0_i_5_n_0\,
      O => \spo[7]_INST_0_i_1_n_0\,
      S => a(10)
    );
\spo[7]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[7]_INST_0_i_29_n_0\,
      I1 => \spo[7]_INST_0_i_30_n_0\,
      I2 => a(10),
      I3 => \spo[7]_INST_0_i_31_n_0\,
      I4 => a(6),
      I5 => \spo[7]_INST_0_i_32_n_0\,
      O => \spo[7]_INST_0_i_10_n_0\
    );
\spo[7]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[7]_INST_0_i_33_n_0\,
      I1 => a(6),
      I2 => \spo[7]_INST_0_i_34_n_0\,
      I3 => a(10),
      I4 => \spo[7]_INST_0_i_35_n_0\,
      O => \spo[7]_INST_0_i_11_n_0\
    );
\spo[7]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \spo[7]_INST_0_i_36_n_0\,
      I1 => a(6),
      I2 => \spo[7]_INST_0_i_37_n_0\,
      I3 => a(10),
      O => \spo[7]_INST_0_i_12_n_0\
    );
\spo[7]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEBFE"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(1),
      I3 => a(7),
      I4 => a(4),
      O => \spo[7]_INST_0_i_13_n_0\
    );
\spo[7]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF3FFF7"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => a(1),
      I3 => a(3),
      I4 => a(7),
      I5 => a(4),
      O => \spo[7]_INST_0_i_14_n_0\
    );
\spo[7]_INST_0_i_15\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[7]_INST_0_i_38_n_0\,
      I1 => \spo[7]_INST_0_i_39_n_0\,
      O => \spo[7]_INST_0_i_15_n_0\,
      S => a(8)
    );
\spo[7]_INST_0_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF8"
    )
        port map (
      I0 => a(0),
      I1 => a(7),
      I2 => a(1),
      I3 => a(2),
      I4 => a(3),
      O => \spo[7]_INST_0_i_16_n_0\
    );
\spo[7]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"007FFF7FFFFFFFFF"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(7),
      I5 => a(4),
      O => \spo[7]_INST_0_i_17_n_0\
    );
\spo[7]_INST_0_i_18\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[7]_INST_0_i_40_n_0\,
      I1 => \spo[7]_INST_0_i_41_n_0\,
      O => \spo[7]_INST_0_i_18_n_0\,
      S => a(8)
    );
\spo[7]_INST_0_i_19\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[7]_INST_0_i_42_n_0\,
      I1 => \spo[7]_INST_0_i_43_n_0\,
      O => \spo[7]_INST_0_i_19_n_0\,
      S => a(8)
    );
\spo[7]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[7]_INST_0_i_6_n_0\,
      I1 => a(6),
      I2 => \spo[7]_INST_0_i_7_n_0\,
      I3 => a(10),
      I4 => \spo[7]_INST_0_i_8_n_0\,
      O => \spo[7]_INST_0_i_2_n_0\
    );
\spo[7]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000347400000000"
    )
        port map (
      I0 => a(1),
      I1 => a(2),
      I2 => a(3),
      I3 => a(0),
      I4 => a(7),
      I5 => a(4),
      O => \spo[7]_INST_0_i_20_n_0\
    );
\spo[7]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4CCCCCCCCCC3FFFF"
    )
        port map (
      I0 => a(0),
      I1 => a(4),
      I2 => a(1),
      I3 => a(3),
      I4 => a(7),
      I5 => a(2),
      O => \spo[7]_INST_0_i_21_n_0\
    );
\spo[7]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040008300"
    )
        port map (
      I0 => a(0),
      I1 => a(4),
      I2 => a(3),
      I3 => a(2),
      I4 => a(1),
      I5 => a(7),
      O => \spo[7]_INST_0_i_22_n_0\
    );
\spo[7]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAAA33555577BF3"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => a(1),
      I3 => a(0),
      I4 => a(2),
      I5 => a(3),
      O => \spo[7]_INST_0_i_23_n_0\
    );
\spo[7]_INST_0_i_24\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[7]_INST_0_i_44_n_0\,
      I1 => \spo[7]_INST_0_i_45_n_0\,
      O => \spo[7]_INST_0_i_24_n_0\,
      S => a(8)
    );
\spo[7]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8E6E1E6FFFFFFFF"
    )
        port map (
      I0 => a(2),
      I1 => a(1),
      I2 => a(3),
      I3 => a(7),
      I4 => a(0),
      I5 => a(4),
      O => \spo[7]_INST_0_i_25_n_0\
    );
\spo[7]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFBFFDFFFFFFFF"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(1),
      I3 => a(0),
      I4 => a(7),
      I5 => a(4),
      O => \spo[7]_INST_0_i_26_n_0\
    );
\spo[7]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF00E2FFE2FF"
    )
        port map (
      I0 => \spo[7]_INST_0_i_46_n_0\,
      I1 => a(8),
      I2 => \spo[7]_INST_0_i_47_n_0\,
      I3 => a(6),
      I4 => \spo[7]_INST_0_i_48_n_0\,
      I5 => a(5),
      O => \spo[7]_INST_0_i_27_n_0\
    );
\spo[7]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF00FEFFFEFF"
    )
        port map (
      I0 => a(8),
      I1 => \spo[7]_INST_0_i_49_n_0\,
      I2 => a(4),
      I3 => a(6),
      I4 => \spo[7]_INST_0_i_50_n_0\,
      I5 => a(5),
      O => \spo[7]_INST_0_i_28_n_0\
    );
\spo[7]_INST_0_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFE2"
    )
        port map (
      I0 => \spo[3]_INST_0_i_8_n_0\,
      I1 => a(8),
      I2 => \spo[3]_INST_0_i_9_n_0\,
      I3 => a(5),
      O => \spo[7]_INST_0_i_29_n_0\
    );
\spo[7]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[7]_INST_0_i_9_n_0\,
      I1 => \spo[7]_INST_0_i_10_n_0\,
      I2 => a(11),
      I3 => \spo[7]_INST_0_i_11_n_0\,
      I4 => a(9),
      I5 => \spo[7]_INST_0_i_12_n_0\,
      O => \spo[7]_INST_0_i_3_n_0\
    );
\spo[7]_INST_0_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => \spo[7]_INST_0_i_26_n_0\,
      I1 => a(8),
      I2 => \spo[7]_INST_0_i_51_n_0\,
      I3 => a(5),
      O => \spo[7]_INST_0_i_30_n_0\
    );
\spo[7]_INST_0_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFE2"
    )
        port map (
      I0 => \spo[7]_INST_0_i_52_n_0\,
      I1 => a(8),
      I2 => \spo[7]_INST_0_i_53_n_0\,
      I3 => a(5),
      O => \spo[7]_INST_0_i_31_n_0\
    );
\spo[7]_INST_0_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAAFFCFFFCF00"
    )
        port map (
      I0 => \spo[7]_INST_0_i_54_n_0\,
      I1 => \spo[7]_INST_0_i_55_n_0\,
      I2 => a(4),
      I3 => a(5),
      I4 => \spo[7]_INST_0_i_56_n_0\,
      I5 => a(8),
      O => \spo[7]_INST_0_i_32_n_0\
    );
\spo[7]_INST_0_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[7]_INST_0_i_57_n_0\,
      I1 => \spo[7]_INST_0_i_58_n_0\,
      I2 => a(5),
      I3 => \spo[3]_INST_0_i_13_n_0\,
      I4 => a(8),
      I5 => \spo[7]_INST_0_i_59_n_0\,
      O => \spo[7]_INST_0_i_33_n_0\
    );
\spo[7]_INST_0_i_34\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[7]_INST_0_i_60_n_0\,
      I1 => \spo[7]_INST_0_i_61_n_0\,
      O => \spo[7]_INST_0_i_34_n_0\,
      S => a(5)
    );
\spo[7]_INST_0_i_35\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => \spo[7]_INST_0_i_62_n_0\,
      I3 => a(8),
      I4 => a(6),
      O => \spo[7]_INST_0_i_35_n_0\
    );
\spo[7]_INST_0_i_36\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \spo[7]_INST_0_i_63_n_0\,
      I1 => a(5),
      I2 => \spo[7]_INST_0_i_64_n_0\,
      I3 => a(8),
      O => \spo[7]_INST_0_i_36_n_0\
    );
\spo[7]_INST_0_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F400F0F4F400000"
    )
        port map (
      I0 => a(4),
      I1 => \spo[7]_INST_0_i_62_n_0\,
      I2 => a(5),
      I3 => \spo[7]_INST_0_i_65_n_0\,
      I4 => a(8),
      I5 => \spo[7]_INST_0_i_66_n_0\,
      O => \spo[7]_INST_0_i_37_n_0\
    );
\spo[7]_INST_0_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0AF1F5F3FFFFFDF"
    )
        port map (
      I0 => a(7),
      I1 => a(0),
      I2 => a(4),
      I3 => a(1),
      I4 => a(2),
      I5 => a(3),
      O => \spo[7]_INST_0_i_38_n_0\
    );
\spo[7]_INST_0_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ED7EFE7EFFFFFFFF"
    )
        port map (
      I0 => a(1),
      I1 => a(2),
      I2 => a(0),
      I3 => a(3),
      I4 => a(7),
      I5 => a(4),
      O => \spo[7]_INST_0_i_39_n_0\
    );
\spo[7]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF00E2FFE2FF"
    )
        port map (
      I0 => \spo[7]_INST_0_i_13_n_0\,
      I1 => a(8),
      I2 => \spo[7]_INST_0_i_14_n_0\,
      I3 => a(6),
      I4 => \spo[7]_INST_0_i_15_n_0\,
      I5 => a(5),
      O => \spo[7]_INST_0_i_4_n_0\
    );
\spo[7]_INST_0_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33555577FB003201"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => a(0),
      I3 => a(2),
      I4 => a(1),
      I5 => a(3),
      O => \spo[7]_INST_0_i_40_n_0\
    );
\spo[7]_INST_0_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001040000"
    )
        port map (
      I0 => a(7),
      I1 => a(0),
      I2 => a(2),
      I3 => a(1),
      I4 => a(3),
      I5 => a(4),
      O => \spo[7]_INST_0_i_41_n_0\
    );
\spo[7]_INST_0_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33AABAABB7557557"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => a(0),
      I3 => a(2),
      I4 => a(1),
      I5 => a(3),
      O => \spo[7]_INST_0_i_42_n_0\
    );
\spo[7]_INST_0_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004380"
    )
        port map (
      I0 => a(0),
      I1 => a(4),
      I2 => a(3),
      I3 => a(1),
      I4 => a(2),
      I5 => a(7),
      O => \spo[7]_INST_0_i_43_n_0\
    );
\spo[7]_INST_0_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFDBFFFB"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => a(1),
      I3 => a(3),
      I4 => a(7),
      I5 => a(4),
      O => \spo[7]_INST_0_i_44_n_0\
    );
\spo[7]_INST_0_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF9FFF7"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(7),
      I5 => a(4),
      O => \spo[7]_INST_0_i_45_n_0\
    );
\spo[7]_INST_0_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBFBFBFFD"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(1),
      I3 => a(0),
      I4 => a(7),
      I5 => a(4),
      O => \spo[7]_INST_0_i_46_n_0\
    );
\spo[7]_INST_0_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFBFBFBBF"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(1),
      I3 => a(0),
      I4 => a(7),
      I5 => a(4),
      O => \spo[7]_INST_0_i_47_n_0\
    );
\spo[7]_INST_0_i_48\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF9FFFFFFFFFFFF"
    )
        port map (
      I0 => a(8),
      I1 => a(0),
      I2 => a(1),
      I3 => a(2),
      I4 => a(3),
      I5 => a(4),
      O => \spo[7]_INST_0_i_48_n_0\
    );
\spo[7]_INST_0_i_49\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(7),
      O => \spo[7]_INST_0_i_49_n_0\
    );
\spo[7]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF0FFEFFFEF"
    )
        port map (
      I0 => \spo[7]_INST_0_i_16_n_0\,
      I1 => a(4),
      I2 => a(6),
      I3 => a(8),
      I4 => \spo[7]_INST_0_i_17_n_0\,
      I5 => a(5),
      O => \spo[7]_INST_0_i_5_n_0\
    );
\spo[7]_INST_0_i_50\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[7]_INST_0_i_67_n_0\,
      I1 => \spo[7]_INST_0_i_68_n_0\,
      O => \spo[7]_INST_0_i_50_n_0\,
      S => a(8)
    );
\spo[7]_INST_0_i_51\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF3FFF7FFFFFFFFF"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(7),
      I5 => a(4),
      O => \spo[7]_INST_0_i_51_n_0\
    );
\spo[7]_INST_0_i_52\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFDFFFDDF"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(1),
      I3 => a(0),
      I4 => a(7),
      I5 => a(4),
      O => \spo[7]_INST_0_i_52_n_0\
    );
\spo[7]_INST_0_i_53\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFCFFFDFF"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(7),
      I5 => a(4),
      O => \spo[7]_INST_0_i_53_n_0\
    );
\spo[7]_INST_0_i_54\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFFFFFF"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      O => \spo[7]_INST_0_i_54_n_0\
    );
\spo[7]_INST_0_i_55\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F1EFFFFF"
    )
        port map (
      I0 => a(7),
      I1 => a(0),
      I2 => a(2),
      I3 => a(1),
      I4 => a(3),
      O => \spo[7]_INST_0_i_55_n_0\
    );
\spo[7]_INST_0_i_56\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAEAA555DFDF"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => a(1),
      I3 => a(0),
      I4 => a(2),
      I5 => a(3),
      O => \spo[7]_INST_0_i_56_n_0\
    );
\spo[7]_INST_0_i_57\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAFFFFFFFFFFFFD5"
    )
        port map (
      I0 => a(4),
      I1 => a(0),
      I2 => a(7),
      I3 => a(1),
      I4 => a(2),
      I5 => a(3),
      O => \spo[7]_INST_0_i_57_n_0\
    );
\spo[7]_INST_0_i_58\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFEF558CDDFF54"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => a(0),
      I3 => a(3),
      I4 => a(2),
      I5 => a(1),
      O => \spo[7]_INST_0_i_58_n_0\
    );
\spo[7]_INST_0_i_59\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFEEEFEEFFEEAEBB"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => a(0),
      I3 => a(3),
      I4 => a(2),
      I5 => a(1),
      O => \spo[7]_INST_0_i_59_n_0\
    );
\spo[7]_INST_0_i_6\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[7]_INST_0_i_18_n_0\,
      I1 => \spo[7]_INST_0_i_19_n_0\,
      O => \spo[7]_INST_0_i_6_n_0\,
      S => a(5)
    );
\spo[7]_INST_0_i_60\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[7]_INST_0_i_69_n_0\,
      I1 => \spo[7]_INST_0_i_70_n_0\,
      O => \spo[7]_INST_0_i_60_n_0\,
      S => a(8)
    );
\spo[7]_INST_0_i_61\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[7]_INST_0_i_71_n_0\,
      I1 => \spo[7]_INST_0_i_72_n_0\,
      O => \spo[7]_INST_0_i_61_n_0\,
      S => a(8)
    );
\spo[7]_INST_0_i_62\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"32260000"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(1),
      I3 => a(0),
      I4 => a(7),
      O => \spo[7]_INST_0_i_62_n_0\
    );
\spo[7]_INST_0_i_63\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA80000000000088"
    )
        port map (
      I0 => a(8),
      I1 => a(7),
      I2 => a(1),
      I3 => a(2),
      I4 => a(3),
      I5 => a(4),
      O => \spo[7]_INST_0_i_63_n_0\
    );
\spo[7]_INST_0_i_64\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000480040005"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => a(3),
      I3 => a(2),
      I4 => a(1),
      I5 => a(0),
      O => \spo[7]_INST_0_i_64_n_0\
    );
\spo[7]_INST_0_i_65\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55EAAAAEEFFFFFFF"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => a(0),
      I3 => a(1),
      I4 => a(2),
      I5 => a(3),
      O => \spo[7]_INST_0_i_65_n_0\
    );
\spo[7]_INST_0_i_66\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6B2B2BAB222A2A28"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(2),
      I3 => a(0),
      I4 => a(1),
      I5 => a(7),
      O => \spo[7]_INST_0_i_66_n_0\
    );
\spo[7]_INST_0_i_67\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"427FFFFFDD5F75F5"
    )
        port map (
      I0 => a(4),
      I1 => a(0),
      I2 => a(7),
      I3 => a(1),
      I4 => a(2),
      I5 => a(3),
      O => \spo[7]_INST_0_i_67_n_0\
    );
\spo[7]_INST_0_i_68\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B7FF5DFFA5FF7FFF"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => a(3),
      I3 => a(2),
      I4 => a(1),
      I5 => a(0),
      O => \spo[7]_INST_0_i_68_n_0\
    );
\spo[7]_INST_0_i_69\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA00001005555"
    )
        port map (
      I0 => a(4),
      I1 => a(0),
      I2 => a(1),
      I3 => a(7),
      I4 => a(2),
      I5 => a(3),
      O => \spo[7]_INST_0_i_69_n_0\
    );
\spo[7]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[7]_INST_0_i_20_n_0\,
      I1 => \spo[7]_INST_0_i_21_n_0\,
      I2 => a(5),
      I3 => \spo[7]_INST_0_i_22_n_0\,
      I4 => a(8),
      I5 => \spo[7]_INST_0_i_23_n_0\,
      O => \spo[7]_INST_0_i_7_n_0\
    );
\spo[7]_INST_0_i_70\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0E0000F0F0F"
    )
        port map (
      I0 => a(7),
      I1 => a(0),
      I2 => a(4),
      I3 => a(1),
      I4 => a(2),
      I5 => a(3),
      O => \spo[7]_INST_0_i_70_n_0\
    );
\spo[7]_INST_0_i_71\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAA8F2FFFFFD"
    )
        port map (
      I0 => a(4),
      I1 => a(0),
      I2 => a(7),
      I3 => a(1),
      I4 => a(2),
      I5 => a(3),
      O => \spo[7]_INST_0_i_71_n_0\
    );
\spo[7]_INST_0_i_72\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D5AA76EFFFFFFFFF"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => a(0),
      I3 => a(2),
      I4 => a(1),
      I5 => a(3),
      O => \spo[7]_INST_0_i_72_n_0\
    );
\spo[7]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCCCFCBBBBBBBB"
    )
        port map (
      I0 => \spo[7]_INST_0_i_24_n_0\,
      I1 => a(6),
      I2 => \spo[7]_INST_0_i_25_n_0\,
      I3 => a(8),
      I4 => \spo[7]_INST_0_i_26_n_0\,
      I5 => a(5),
      O => \spo[7]_INST_0_i_8_n_0\
    );
\spo[7]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[7]_INST_0_i_27_n_0\,
      I1 => \spo[7]_INST_0_i_28_n_0\,
      O => \spo[7]_INST_0_i_9_n_0\,
      S => a(10)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity background_sprite is
  port (
    a : in STD_LOGIC_VECTOR ( 12 downto 0 );
    spo : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of background_sprite : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of background_sprite : entity is "background_sprite,dist_mem_gen_v8_0_9,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of background_sprite : entity is "background_sprite,dist_mem_gen_v8_0_9,{x_ipProduct=Vivado 2015.3,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=dist_mem_gen,x_ipVersion=8.0,x_ipCoreRevision=9,x_ipLanguage=VERILOG,x_ipSimLanguage=VERILOG,C_FAMILY=artix7,C_ADDR_WIDTH=13,C_DEFAULT_DATA=10001000,C_DEPTH=8192,C_HAS_CLK=0,C_HAS_D=0,C_HAS_DPO=0,C_HAS_DPRA=0,C_HAS_I_CE=0,C_HAS_QDPO=0,C_HAS_QDPO_CE=0,C_HAS_QDPO_CLK=0,C_HAS_QDPO_RST=0,C_HAS_QDPO_SRST=0,C_HAS_QSPO=0,C_HAS_QSPO_CE=0,C_HAS_QSPO_RST=0,C_HAS_QSPO_SRST=0,C_HAS_SPO=1,C_HAS_WE=0,C_MEM_INIT_FILE=background_sprite.mif,C_ELABORATION_DIR=./,C_MEM_TYPE=0,C_PIPELINE_STAGES=0,C_QCE_JOINED=0,C_QUALIFY_WE=0,C_READ_MIF=1,C_REG_A_D_INPUTS=0,C_REG_DPRA_INPUT=0,C_SYNC_ENABLE=1,C_WIDTH=8,C_PARSER_TYPE=1}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of background_sprite : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of background_sprite : entity is "dist_mem_gen_v8_0_9,Vivado 2015.3";
end background_sprite;

architecture STRUCTURE of background_sprite is
  signal NLW_U0_dpo_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_qdpo_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_qspo_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
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
  attribute c_addr_width of U0 : label is 13;
  attribute c_default_data : string;
  attribute c_default_data of U0 : label is "10001000";
  attribute c_depth : integer;
  attribute c_depth of U0 : label is 8192;
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
  attribute c_mem_init_file of U0 : label is "background_sprite.mif";
  attribute c_parser_type : integer;
  attribute c_parser_type of U0 : label is 1;
  attribute c_read_mif : integer;
  attribute c_read_mif of U0 : label is 1;
  attribute c_reg_a_d_inputs : integer;
  attribute c_reg_a_d_inputs of U0 : label is 0;
  attribute c_sync_enable : integer;
  attribute c_sync_enable of U0 : label is 1;
  attribute c_width : integer;
  attribute c_width of U0 : label is 8;
begin
U0: entity work.background_sprite_dist_mem_gen_v8_0_9
     port map (
      a(12 downto 0) => a(12 downto 0),
      clk => '0',
      d(7 downto 0) => B"00000000",
      dpo(7 downto 0) => NLW_U0_dpo_UNCONNECTED(7 downto 0),
      dpra(12 downto 0) => B"0000000000000",
      i_ce => '1',
      qdpo(7 downto 0) => NLW_U0_qdpo_UNCONNECTED(7 downto 0),
      qdpo_ce => '1',
      qdpo_clk => '0',
      qdpo_rst => '0',
      qdpo_srst => '0',
      qspo(7 downto 0) => NLW_U0_qspo_UNCONNECTED(7 downto 0),
      qspo_ce => '1',
      qspo_rst => '0',
      qspo_srst => '0',
      spo(7 downto 0) => spo(7 downto 0),
      we => '0'
    );
end STRUCTURE;
