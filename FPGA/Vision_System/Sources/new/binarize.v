`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.05.2020 14:39:07
// Design Name: 
// Module Name: binarize
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module binarize
(
    input [23:0]pixel_in,
    output [23:0]pixel_out
    );
    
    localparam Ta = 72;
    localparam Tb = 130;
    localparam Tc = 140;
    localparam Td = 210;
    
    wire [7:0]bin;
    wire [7:0]Y = pixel_in[23:16];
    wire [7:0]Cb = pixel_in[15:8];
    wire [7:0]Cr = pixel_in[7:0];
    assign bin = (Cb > Ta && Cb < Tb && Cr > Tc && Cr < Td ) ? 8'd255 : 0;
    
    assign pixel_out[23:16] = bin;
    assign pixel_out[15:8] = bin;
    assign pixel_out[7:0] = bin;

endmodule