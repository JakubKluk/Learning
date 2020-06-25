-- Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
-- Date        : Tue Jun 23 21:29:50 2020
-- Host        : LAPTOP-J9ADUE2F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/klukj/Desktop/agh/Sprawozdania/SystemyRekonfigurowalne/Lab5/hdmi_vga_zybo/hdmi_vga_zybo.srcs/sources_1/ip/accumulator_0/accumulator_0_stub.vhdl
-- Design      : accumulator_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity accumulator_0 is
  Port ( 
    clk : in STD_LOGIC;
    ce : in STD_LOGIC;
    rst : in STD_LOGIC;
    data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Y : out STD_LOGIC_VECTOR ( 30 downto 0 )
  );

end accumulator_0;

architecture stub of accumulator_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,ce,rst,data[7:0],Y[30:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "accumulator,Vivado 2014.4";
begin
end;
