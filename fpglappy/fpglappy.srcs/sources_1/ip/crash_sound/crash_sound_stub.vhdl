-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.3 (lin64) Build 1368829 Mon Sep 28 20:06:39 MDT 2015
-- Date        : Wed Dec  2 17:04:28 2015
-- Host        : cyanide running 64-bit Ubuntu 15.10
-- Command     : write_vhdl -force -mode synth_stub
--               /home/jmend/Documents/fpglapls/fpglappy/fpglappy/fpglappy.srcs/sources_1/ip/crash_sound/crash_sound_stub.vhdl
-- Design      : crash_sound
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity crash_sound is
  Port ( 
    a : in STD_LOGIC_VECTOR ( 11 downto 0 );
    spo : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end crash_sound;

architecture stub of crash_sound is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "a[11:0],spo[3:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "dist_mem_gen_v8_0_9,Vivado 2015.3";
begin
end;
