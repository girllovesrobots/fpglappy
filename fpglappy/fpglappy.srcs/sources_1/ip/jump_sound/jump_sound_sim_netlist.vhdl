-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.3 (win64) Build 1368829 Mon Sep 28 20:06:43 MDT 2015
-- Date        : Sun Nov 29 21:23:38 2015
-- Host        : Nick-PC running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/Nick/Documents/fpglappy/fpglappy/fpglappy.srcs/sources_1/ip/jump_sound/jump_sound_sim_netlist.vhdl
-- Design      : jump_sound
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jump_sound_dist_mem_gen_v8_0_9 is
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
  attribute C_ADDR_WIDTH of jump_sound_dist_mem_gen_v8_0_9 : entity is 12;
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of jump_sound_dist_mem_gen_v8_0_9 : entity is "0";
  attribute C_DEPTH : integer;
  attribute C_DEPTH of jump_sound_dist_mem_gen_v8_0_9 : entity is 2320;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of jump_sound_dist_mem_gen_v8_0_9 : entity is "./";
  attribute C_FAMILY : string;
  attribute C_FAMILY of jump_sound_dist_mem_gen_v8_0_9 : entity is "artix7";
  attribute C_HAS_CLK : integer;
  attribute C_HAS_CLK of jump_sound_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_HAS_D : integer;
  attribute C_HAS_D of jump_sound_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of jump_sound_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of jump_sound_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of jump_sound_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of jump_sound_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of jump_sound_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of jump_sound_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of jump_sound_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of jump_sound_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_HAS_QSPO : integer;
  attribute C_HAS_QSPO of jump_sound_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_HAS_QSPO_CE : integer;
  attribute C_HAS_QSPO_CE of jump_sound_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_HAS_QSPO_RST : integer;
  attribute C_HAS_QSPO_RST of jump_sound_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_HAS_QSPO_SRST : integer;
  attribute C_HAS_QSPO_SRST of jump_sound_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_HAS_SPO : integer;
  attribute C_HAS_SPO of jump_sound_dist_mem_gen_v8_0_9 : entity is 1;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of jump_sound_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_MEM_INIT_FILE : string;
  attribute C_MEM_INIT_FILE of jump_sound_dist_mem_gen_v8_0_9 : entity is "jump_sound.mif";
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of jump_sound_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_PARSER_TYPE : integer;
  attribute C_PARSER_TYPE of jump_sound_dist_mem_gen_v8_0_9 : entity is 1;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of jump_sound_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of jump_sound_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of jump_sound_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_READ_MIF : integer;
  attribute C_READ_MIF of jump_sound_dist_mem_gen_v8_0_9 : entity is 1;
  attribute C_REG_A_D_INPUTS : integer;
  attribute C_REG_A_D_INPUTS of jump_sound_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of jump_sound_dist_mem_gen_v8_0_9 : entity is 0;
  attribute C_SYNC_ENABLE : integer;
  attribute C_SYNC_ENABLE of jump_sound_dist_mem_gen_v8_0_9 : entity is 1;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of jump_sound_dist_mem_gen_v8_0_9 : entity is 4;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jump_sound_dist_mem_gen_v8_0_9 : entity is "dist_mem_gen_v8_0_9";
end jump_sound_dist_mem_gen_v8_0_9;

architecture STRUCTURE of jump_sound_dist_mem_gen_v8_0_9 is
  signal \<const0>\ : STD_LOGIC;
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
  signal \spo[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_4_n_0\ : STD_LOGIC;
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
\spo[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \spo[0]_INST_0_i_1_n_0\,
      I1 => a(9),
      I2 => \spo[0]_INST_0_i_2_n_0\,
      I3 => a(10),
      I4 => \spo[0]_INST_0_i_3_n_0\,
      I5 => a(11),
      O => spo(0)
    );
\spo[0]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[0]_INST_0_i_4_n_0\,
      I1 => \spo[0]_INST_0_i_5_n_0\,
      O => \spo[0]_INST_0_i_1_n_0\,
      S => a(10)
    );
\spo[0]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(7),
      I3 => a(2),
      I4 => a(3),
      O => \spo[0]_INST_0_i_10_n_0\
    );
\spo[0]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000222000000000"
    )
        port map (
      I0 => a(5),
      I1 => a(7),
      I2 => a(1),
      I3 => a(0),
      I4 => a(2),
      I5 => a(3),
      O => \spo[0]_INST_0_i_11_n_0\
    );
\spo[0]_INST_0_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[0]_INST_0_i_26_n_0\,
      I1 => \spo[0]_INST_0_i_27_n_0\,
      O => \spo[0]_INST_0_i_12_n_0\,
      S => a(6)
    );
\spo[0]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001D55755570000"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(0),
      I3 => a(1),
      I4 => a(5),
      I5 => a(7),
      O => \spo[0]_INST_0_i_13_n_0\
    );
\spo[0]_INST_0_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[0]_INST_0_i_28_n_0\,
      I1 => \spo[0]_INST_0_i_29_n_0\,
      O => \spo[0]_INST_0_i_14_n_0\,
      S => a(6)
    );
\spo[0]_INST_0_i_15\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[0]_INST_0_i_30_n_0\,
      I1 => \spo[0]_INST_0_i_31_n_0\,
      O => \spo[0]_INST_0_i_15_n_0\,
      S => a(6)
    );
\spo[0]_INST_0_i_16\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[0]_INST_0_i_32_n_0\,
      I1 => \spo[0]_INST_0_i_33_n_0\,
      O => \spo[0]_INST_0_i_16_n_0\,
      S => a(6)
    );
\spo[0]_INST_0_i_17\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[0]_INST_0_i_34_n_0\,
      I1 => \spo[0]_INST_0_i_35_n_0\,
      O => \spo[0]_INST_0_i_17_n_0\,
      S => a(6)
    );
\spo[0]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4CC6777783932622"
    )
        port map (
      I0 => a(3),
      I1 => a(5),
      I2 => a(1),
      I3 => a(0),
      I4 => a(2),
      I5 => a(7),
      O => \spo[0]_INST_0_i_18_n_0\
    );
\spo[0]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A585D0550D0D6F78"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(5),
      I3 => a(0),
      I4 => a(7),
      I5 => a(1),
      O => \spo[0]_INST_0_i_19_n_0\
    );
\spo[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[0]_INST_0_i_6_n_0\,
      I1 => \spo[0]_INST_0_i_7_n_0\,
      I2 => a(4),
      I3 => \spo[0]_INST_0_i_8_n_0\,
      I4 => a(8),
      I5 => \spo[0]_INST_0_i_9_n_0\,
      O => \spo[0]_INST_0_i_2_n_0\
    );
\spo[0]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3403C3C30307AFAC"
    )
        port map (
      I0 => a(3),
      I1 => a(5),
      I2 => a(2),
      I3 => a(0),
      I4 => a(7),
      I5 => a(1),
      O => \spo[0]_INST_0_i_20_n_0\
    );
\spo[0]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"442E08AEC79DD58D"
    )
        port map (
      I0 => a(3),
      I1 => a(5),
      I2 => a(7),
      I3 => a(1),
      I4 => a(0),
      I5 => a(2),
      O => \spo[0]_INST_0_i_21_n_0\
    );
\spo[0]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B9414933D9D5035A"
    )
        port map (
      I0 => a(3),
      I1 => a(5),
      I2 => a(2),
      I3 => a(1),
      I4 => a(7),
      I5 => a(0),
      O => \spo[0]_INST_0_i_22_n_0\
    );
\spo[0]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"49E51D530DE59811"
    )
        port map (
      I0 => a(3),
      I1 => a(5),
      I2 => a(2),
      I3 => a(7),
      I4 => a(1),
      I5 => a(0),
      O => \spo[0]_INST_0_i_23_n_0\
    );
\spo[0]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AC0C0C8A88091849"
    )
        port map (
      I0 => a(3),
      I1 => a(5),
      I2 => a(7),
      I3 => a(1),
      I4 => a(0),
      I5 => a(2),
      O => \spo[0]_INST_0_i_24_n_0\
    );
\spo[0]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C8888888BD9F9F92"
    )
        port map (
      I0 => a(3),
      I1 => a(5),
      I2 => a(2),
      I3 => a(0),
      I4 => a(1),
      I5 => a(7),
      O => \spo[0]_INST_0_i_25_n_0\
    );
\spo[0]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE00EE00C900D800"
    )
        port map (
      I0 => a(3),
      I1 => a(5),
      I2 => a(1),
      I3 => a(7),
      I4 => a(0),
      I5 => a(2),
      O => \spo[0]_INST_0_i_26_n_0\
    );
\spo[0]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC00FFFF7FFFFC00"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(5),
      I5 => a(7),
      O => \spo[0]_INST_0_i_27_n_0\
    );
\spo[0]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11336666EE677777"
    )
        port map (
      I0 => a(3),
      I1 => a(5),
      I2 => a(0),
      I3 => a(1),
      I4 => a(2),
      I5 => a(7),
      O => \spo[0]_INST_0_i_28_n_0\
    );
\spo[0]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20000000050F051A"
    )
        port map (
      I0 => a(3),
      I1 => a(0),
      I2 => a(5),
      I3 => a(2),
      I4 => a(1),
      I5 => a(7),
      O => \spo[0]_INST_0_i_29_n_0\
    );
\spo[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0AFC0A0"
    )
        port map (
      I0 => \spo[3]_INST_0_i_9_n_0\,
      I1 => \spo[0]_INST_0_i_10_n_0\,
      I2 => a(4),
      I3 => a(6),
      I4 => \spo[0]_INST_0_i_11_n_0\,
      I5 => a(8),
      O => \spo[0]_INST_0_i_3_n_0\
    );
\spo[0]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A774767001919111"
    )
        port map (
      I0 => a(3),
      I1 => a(5),
      I2 => a(2),
      I3 => a(1),
      I4 => a(0),
      I5 => a(7),
      O => \spo[0]_INST_0_i_30_n_0\
    );
\spo[0]_INST_0_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA8AAAAAAA668867"
    )
        port map (
      I0 => a(3),
      I1 => a(5),
      I2 => a(0),
      I3 => a(7),
      I4 => a(1),
      I5 => a(2),
      O => \spo[0]_INST_0_i_31_n_0\
    );
\spo[0]_INST_0_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"18098182B2A22327"
    )
        port map (
      I0 => a(3),
      I1 => a(5),
      I2 => a(2),
      I3 => a(0),
      I4 => a(1),
      I5 => a(7),
      O => \spo[0]_INST_0_i_32_n_0\
    );
\spo[0]_INST_0_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1116000022085557"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(0),
      I3 => a(1),
      I4 => a(5),
      I5 => a(7),
      O => \spo[0]_INST_0_i_33_n_0\
    );
\spo[0]_INST_0_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BADF5D555A5A78F0"
    )
        port map (
      I0 => a(3),
      I1 => a(0),
      I2 => a(5),
      I3 => a(1),
      I4 => a(2),
      I5 => a(7),
      O => \spo[0]_INST_0_i_34_n_0\
    );
\spo[0]_INST_0_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C8AA88AA888A8904"
    )
        port map (
      I0 => a(3),
      I1 => a(5),
      I2 => a(0),
      I3 => a(7),
      I4 => a(1),
      I5 => a(2),
      O => \spo[0]_INST_0_i_35_n_0\
    );
\spo[0]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB888B800000000"
    )
        port map (
      I0 => \spo[0]_INST_0_i_12_n_0\,
      I1 => a(4),
      I2 => \spo[3]_INST_0_i_11_n_0\,
      I3 => a(6),
      I4 => \spo[0]_INST_0_i_13_n_0\,
      I5 => a(8),
      O => \spo[0]_INST_0_i_4_n_0\
    );
\spo[0]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[0]_INST_0_i_14_n_0\,
      I1 => \spo[0]_INST_0_i_15_n_0\,
      I2 => a(4),
      I3 => \spo[0]_INST_0_i_16_n_0\,
      I4 => a(8),
      I5 => \spo[0]_INST_0_i_17_n_0\,
      O => \spo[0]_INST_0_i_5_n_0\
    );
\spo[0]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[0]_INST_0_i_18_n_0\,
      I1 => \spo[0]_INST_0_i_19_n_0\,
      O => \spo[0]_INST_0_i_6_n_0\,
      S => a(6)
    );
\spo[0]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[0]_INST_0_i_20_n_0\,
      I1 => \spo[0]_INST_0_i_21_n_0\,
      O => \spo[0]_INST_0_i_7_n_0\,
      S => a(6)
    );
\spo[0]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[0]_INST_0_i_22_n_0\,
      I1 => \spo[0]_INST_0_i_23_n_0\,
      O => \spo[0]_INST_0_i_8_n_0\,
      S => a(6)
    );
\spo[0]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[0]_INST_0_i_24_n_0\,
      I1 => \spo[0]_INST_0_i_25_n_0\,
      O => \spo[0]_INST_0_i_9_n_0\,
      S => a(6)
    );
\spo[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \spo[3]_INST_0_i_1_n_0\,
      I1 => a(9),
      I2 => \spo[1]_INST_0_i_1_n_0\,
      I3 => a(10),
      I4 => \spo[3]_INST_0_i_3_n_0\,
      I5 => a(11),
      O => spo(1)
    );
\spo[1]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[1]_INST_0_i_2_n_0\,
      I1 => a(4),
      I2 => \spo[1]_INST_0_i_3_n_0\,
      I3 => a(8),
      I4 => \spo[1]_INST_0_i_4_n_0\,
      O => \spo[1]_INST_0_i_1_n_0\
    );
\spo[1]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88CC80CA01880088"
    )
        port map (
      I0 => a(3),
      I1 => a(5),
      I2 => a(0),
      I3 => a(7),
      I4 => a(1),
      I5 => a(2),
      O => \spo[1]_INST_0_i_10_n_0\
    );
\spo[1]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFD7FF77"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(1),
      I3 => a(7),
      I4 => a(0),
      I5 => a(5),
      O => \spo[1]_INST_0_i_11_n_0\
    );
\spo[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[3]_INST_0_i_17_n_0\,
      I1 => \spo[1]_INST_0_i_5_n_0\,
      I2 => a(8),
      I3 => \spo[1]_INST_0_i_6_n_0\,
      I4 => a(6),
      I5 => \spo[1]_INST_0_i_7_n_0\,
      O => \spo[1]_INST_0_i_2_n_0\
    );
\spo[1]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[1]_INST_0_i_8_n_0\,
      I1 => \spo[1]_INST_0_i_9_n_0\,
      O => \spo[1]_INST_0_i_3_n_0\,
      S => a(6)
    );
\spo[1]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[1]_INST_0_i_10_n_0\,
      I1 => \spo[1]_INST_0_i_11_n_0\,
      O => \spo[1]_INST_0_i_4_n_0\,
      S => a(6)
    );
\spo[1]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"28AAA0AA00AA01FF"
    )
        port map (
      I0 => a(3),
      I1 => a(0),
      I2 => a(1),
      I3 => a(5),
      I4 => a(7),
      I5 => a(2),
      O => \spo[1]_INST_0_i_5_n_0\
    );
\spo[1]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F955B915BEDFAFFF"
    )
        port map (
      I0 => a(3),
      I1 => a(5),
      I2 => a(1),
      I3 => a(7),
      I4 => a(0),
      I5 => a(2),
      O => \spo[1]_INST_0_i_6_n_0\
    );
\spo[1]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DBFA8884FAFE8884"
    )
        port map (
      I0 => a(3),
      I1 => a(5),
      I2 => a(2),
      I3 => a(1),
      I4 => a(7),
      I5 => a(0),
      O => \spo[1]_INST_0_i_7_n_0\
    );
\spo[1]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E67EFEB7773755D"
    )
        port map (
      I0 => a(3),
      I1 => a(5),
      I2 => a(1),
      I3 => a(0),
      I4 => a(7),
      I5 => a(2),
      O => \spo[1]_INST_0_i_8_n_0\
    );
\spo[1]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"010F11BD010F10BD"
    )
        port map (
      I0 => a(3),
      I1 => a(5),
      I2 => a(2),
      I3 => a(7),
      I4 => a(1),
      I5 => a(0),
      O => \spo[1]_INST_0_i_9_n_0\
    );
\spo[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \spo[3]_INST_0_i_1_n_0\,
      I1 => a(9),
      I2 => \spo[2]_INST_0_i_1_n_0\,
      I3 => a(10),
      I4 => \spo[3]_INST_0_i_3_n_0\,
      I5 => a(11),
      O => spo(2)
    );
\spo[2]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[3]_INST_0_i_6_n_0\,
      I1 => a(4),
      I2 => \spo[3]_INST_0_i_7_n_0\,
      I3 => a(8),
      I4 => \spo[2]_INST_0_i_2_n_0\,
      O => \spo[2]_INST_0_i_1_n_0\
    );
\spo[2]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[2]_INST_0_i_3_n_0\,
      I1 => \spo[2]_INST_0_i_4_n_0\,
      O => \spo[2]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[2]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEC8C8FFFFC8A8"
    )
        port map (
      I0 => a(3),
      I1 => a(5),
      I2 => a(2),
      I3 => a(0),
      I4 => a(7),
      I5 => a(1),
      O => \spo[2]_INST_0_i_3_n_0\
    );
\spo[2]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333333202222000"
    )
        port map (
      I0 => a(3),
      I1 => a(7),
      I2 => a(1),
      I3 => a(0),
      I4 => a(2),
      I5 => a(5),
      O => \spo[2]_INST_0_i_4_n_0\
    );
\spo[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \spo[3]_INST_0_i_1_n_0\,
      I1 => a(9),
      I2 => \spo[3]_INST_0_i_2_n_0\,
      I3 => a(10),
      I4 => \spo[3]_INST_0_i_3_n_0\,
      I5 => a(11),
      O => spo(3)
    );
\spo[3]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[3]_INST_0_i_4_n_0\,
      I1 => \spo[3]_INST_0_i_5_n_0\,
      O => \spo[3]_INST_0_i_1_n_0\,
      S => a(10)
    );
\spo[3]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[3]_INST_0_i_25_n_0\,
      I1 => \spo[3]_INST_0_i_26_n_0\,
      O => \spo[3]_INST_0_i_10_n_0\,
      S => a(6)
    );
\spo[3]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01FF000000000000"
    )
        port map (
      I0 => a(2),
      I1 => a(1),
      I2 => a(0),
      I3 => a(3),
      I4 => a(7),
      I5 => a(5),
      O => \spo[3]_INST_0_i_11_n_0\
    );
\spo[3]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0505051780000000"
    )
        port map (
      I0 => a(3),
      I1 => a(1),
      I2 => a(7),
      I3 => a(0),
      I4 => a(2),
      I5 => a(5),
      O => \spo[3]_INST_0_i_12_n_0\
    );
\spo[3]_INST_0_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[3]_INST_0_i_27_n_0\,
      I1 => \spo[3]_INST_0_i_28_n_0\,
      O => \spo[3]_INST_0_i_13_n_0\,
      S => a(6)
    );
\spo[3]_INST_0_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[3]_INST_0_i_29_n_0\,
      I1 => \spo[3]_INST_0_i_30_n_0\,
      O => \spo[3]_INST_0_i_14_n_0\,
      S => a(6)
    );
\spo[3]_INST_0_i_15\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[3]_INST_0_i_31_n_0\,
      I1 => \spo[3]_INST_0_i_32_n_0\,
      O => \spo[3]_INST_0_i_15_n_0\,
      S => a(6)
    );
\spo[3]_INST_0_i_16\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[3]_INST_0_i_33_n_0\,
      I1 => \spo[3]_INST_0_i_34_n_0\,
      O => \spo[3]_INST_0_i_16_n_0\,
      S => a(6)
    );
\spo[3]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9911EDF99111FDF8"
    )
        port map (
      I0 => a(3),
      I1 => a(5),
      I2 => a(2),
      I3 => a(1),
      I4 => a(7),
      I5 => a(0),
      O => \spo[3]_INST_0_i_17_n_0\
    );
\spo[3]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7DDD555500000000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(0),
      I3 => a(7),
      I4 => a(2),
      I5 => a(3),
      O => \spo[3]_INST_0_i_18_n_0\
    );
\spo[3]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBBBABBB00000000"
    )
        port map (
      I0 => a(3),
      I1 => a(7),
      I2 => a(2),
      I3 => a(1),
      I4 => a(0),
      I5 => a(5),
      O => \spo[3]_INST_0_i_19_n_0\
    );
\spo[3]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[3]_INST_0_i_6_n_0\,
      I1 => a(4),
      I2 => \spo[3]_INST_0_i_7_n_0\,
      I3 => a(8),
      I4 => \spo[3]_INST_0_i_8_n_0\,
      O => \spo[3]_INST_0_i_2_n_0\
    );
\spo[3]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFF00110000"
    )
        port map (
      I0 => a(3),
      I1 => a(1),
      I2 => a(0),
      I3 => a(2),
      I4 => a(5),
      I5 => a(7),
      O => \spo[3]_INST_0_i_20_n_0\
    );
\spo[3]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"044545455555555D"
    )
        port map (
      I0 => a(3),
      I1 => a(5),
      I2 => a(1),
      I3 => a(0),
      I4 => a(7),
      I5 => a(2),
      O => \spo[3]_INST_0_i_21_n_0\
    );
\spo[3]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000F33EF"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(7),
      I3 => a(2),
      I4 => a(5),
      I5 => a(3),
      O => \spo[3]_INST_0_i_22_n_0\
    );
\spo[3]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEAA0200"
    )
        port map (
      I0 => a(3),
      I1 => a(1),
      I2 => a(0),
      I3 => a(2),
      I4 => a(5),
      I5 => a(7),
      O => \spo[3]_INST_0_i_23_n_0\
    );
\spo[3]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333333200000000"
    )
        port map (
      I0 => a(3),
      I1 => a(7),
      I2 => a(1),
      I3 => a(0),
      I4 => a(2),
      I5 => a(5),
      O => \spo[3]_INST_0_i_24_n_0\
    );
\spo[3]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000089009800"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(0),
      I3 => a(7),
      I4 => a(1),
      I5 => a(5),
      O => \spo[3]_INST_0_i_25_n_0\
    );
\spo[3]_INST_0_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFE0"
    )
        port map (
      I0 => a(2),
      I1 => a(1),
      I2 => a(3),
      I3 => a(7),
      I4 => a(5),
      O => \spo[3]_INST_0_i_26_n_0\
    );
\spo[3]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000077771115"
    )
        port map (
      I0 => a(7),
      I1 => a(2),
      I2 => a(0),
      I3 => a(1),
      I4 => a(5),
      I5 => a(3),
      O => \spo[3]_INST_0_i_27_n_0\
    );
\spo[3]_INST_0_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001132"
    )
        port map (
      I0 => a(3),
      I1 => a(7),
      I2 => a(1),
      I3 => a(2),
      I4 => a(5),
      O => \spo[3]_INST_0_i_28_n_0\
    );
\spo[3]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002AA82AAA"
    )
        port map (
      I0 => a(7),
      I1 => a(2),
      I2 => a(0),
      I3 => a(1),
      I4 => a(5),
      I5 => a(3),
      O => \spo[3]_INST_0_i_29_n_0\
    );
\spo[3]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => a(8),
      I1 => \spo[3]_INST_0_i_9_n_0\,
      I2 => a(6),
      I3 => a(4),
      O => \spo[3]_INST_0_i_3_n_0\
    );
\spo[3]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000005050001"
    )
        port map (
      I0 => a(2),
      I1 => a(1),
      I2 => a(7),
      I3 => a(0),
      I4 => a(5),
      I5 => a(3),
      O => \spo[3]_INST_0_i_30_n_0\
    );
\spo[3]_INST_0_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"282880804E0A1A6A"
    )
        port map (
      I0 => a(3),
      I1 => a(1),
      I2 => a(7),
      I3 => a(0),
      I4 => a(2),
      I5 => a(5),
      O => \spo[3]_INST_0_i_31_n_0\
    );
\spo[3]_INST_0_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010506000000000"
    )
        port map (
      I0 => a(3),
      I1 => a(1),
      I2 => a(7),
      I3 => a(0),
      I4 => a(2),
      I5 => a(5),
      O => \spo[3]_INST_0_i_32_n_0\
    );
\spo[3]_INST_0_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800EA0015FF0000"
    )
        port map (
      I0 => a(2),
      I1 => a(1),
      I2 => a(0),
      I3 => a(3),
      I4 => a(5),
      I5 => a(7),
      O => \spo[3]_INST_0_i_33_n_0\
    );
\spo[3]_INST_0_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAA8AAA8008800A8"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(1),
      I3 => a(7),
      I4 => a(0),
      I5 => a(5),
      O => \spo[3]_INST_0_i_34_n_0\
    );
\spo[3]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB888B800000000"
    )
        port map (
      I0 => \spo[3]_INST_0_i_10_n_0\,
      I1 => a(4),
      I2 => \spo[3]_INST_0_i_11_n_0\,
      I3 => a(6),
      I4 => \spo[3]_INST_0_i_12_n_0\,
      I5 => a(8),
      O => \spo[3]_INST_0_i_4_n_0\
    );
\spo[3]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[3]_INST_0_i_13_n_0\,
      I1 => \spo[3]_INST_0_i_14_n_0\,
      I2 => a(4),
      I3 => \spo[3]_INST_0_i_15_n_0\,
      I4 => a(8),
      I5 => \spo[3]_INST_0_i_16_n_0\,
      O => \spo[3]_INST_0_i_5_n_0\
    );
\spo[3]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[3]_INST_0_i_17_n_0\,
      I1 => \spo[3]_INST_0_i_18_n_0\,
      I2 => a(8),
      I3 => \spo[3]_INST_0_i_19_n_0\,
      I4 => a(6),
      I5 => \spo[3]_INST_0_i_20_n_0\,
      O => \spo[3]_INST_0_i_6_n_0\
    );
\spo[3]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[3]_INST_0_i_21_n_0\,
      I1 => \spo[3]_INST_0_i_22_n_0\,
      O => \spo[3]_INST_0_i_7_n_0\,
      S => a(6)
    );
\spo[3]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[3]_INST_0_i_23_n_0\,
      I1 => \spo[3]_INST_0_i_24_n_0\,
      O => \spo[3]_INST_0_i_8_n_0\,
      S => a(6)
    );
\spo[3]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000055006A"
    )
        port map (
      I0 => a(3),
      I1 => a(0),
      I2 => a(1),
      I3 => a(7),
      I4 => a(2),
      I5 => a(5),
      O => \spo[3]_INST_0_i_9_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jump_sound is
  port (
    a : in STD_LOGIC_VECTOR ( 11 downto 0 );
    spo : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of jump_sound : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of jump_sound : entity is "jump_sound,dist_mem_gen_v8_0_9,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of jump_sound : entity is "jump_sound,dist_mem_gen_v8_0_9,{x_ipProduct=Vivado 2015.3,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=dist_mem_gen,x_ipVersion=8.0,x_ipCoreRevision=9,x_ipLanguage=VERILOG,x_ipSimLanguage=VERILOG,C_FAMILY=artix7,C_ADDR_WIDTH=12,C_DEFAULT_DATA=0,C_DEPTH=2320,C_HAS_CLK=0,C_HAS_D=0,C_HAS_DPO=0,C_HAS_DPRA=0,C_HAS_I_CE=0,C_HAS_QDPO=0,C_HAS_QDPO_CE=0,C_HAS_QDPO_CLK=0,C_HAS_QDPO_RST=0,C_HAS_QDPO_SRST=0,C_HAS_QSPO=0,C_HAS_QSPO_CE=0,C_HAS_QSPO_RST=0,C_HAS_QSPO_SRST=0,C_HAS_SPO=1,C_HAS_WE=0,C_MEM_INIT_FILE=jump_sound.mif,C_ELABORATION_DIR=./,C_MEM_TYPE=0,C_PIPELINE_STAGES=0,C_QCE_JOINED=0,C_QUALIFY_WE=0,C_READ_MIF=1,C_REG_A_D_INPUTS=0,C_REG_DPRA_INPUT=0,C_SYNC_ENABLE=1,C_WIDTH=4,C_PARSER_TYPE=1}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of jump_sound : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of jump_sound : entity is "dist_mem_gen_v8_0_9,Vivado 2015.3";
end jump_sound;

architecture STRUCTURE of jump_sound is
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
  attribute c_depth of U0 : label is 2320;
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
  attribute c_mem_init_file of U0 : label is "jump_sound.mif";
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
U0: entity work.jump_sound_dist_mem_gen_v8_0_9
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
