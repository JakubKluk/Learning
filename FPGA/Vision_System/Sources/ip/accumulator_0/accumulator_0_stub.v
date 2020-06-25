// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
// Date        : Tue Jun 23 21:29:50 2020
// Host        : LAPTOP-J9ADUE2F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/klukj/Desktop/agh/Sprawozdania/SystemyRekonfigurowalne/Lab5/hdmi_vga_zybo/hdmi_vga_zybo.srcs/sources_1/ip/accumulator_0/accumulator_0_stub.v
// Design      : accumulator_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "accumulator,Vivado 2014.4" *)
module accumulator_0(clk, ce, rst, data, Y)
/* synthesis syn_black_box black_box_pad_pin="clk,ce,rst,data[7:0],Y[30:0]" */;
  input clk;
  input ce;
  input rst;
  input [7:0]data;
  output [30:0]Y;
endmodule
