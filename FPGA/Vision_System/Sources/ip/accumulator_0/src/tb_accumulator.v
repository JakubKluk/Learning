`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2020 20:44:14
// Design Name: 
// Module Name: tb_accumulator
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


module tb_accumulator(
);

reg clk = 1'b0;
reg ce  = 1'b1;
reg rst = 1'b0;

reg signed [12:0]A1=13'b0011001000100; //A1=100.2400
reg signed [12:0]A2=13'b1101010001011; //A2=-87.3100
reg signed [12:0]A3=13'b0000011010111; //A3=13.4270
reg signed [12:0]A4=13'b1111100001110; //A4=-15.1500
reg signed [12:0]A5=13'b0000111110010; //A5=31.1200
reg signed [12:0]A6=13'b0011100000010; //A6=112.1000
reg signed [12:0]A7=13'b0010110011110; //A7=89.9000
reg signed [12:0]A8=13'b1111101001010; //A8=-11.4000
reg signed [12:0]A9=13'b0001001010101; //A9=37.3300
reg signed [12:0]A10=13'b0001010100010; //A10=42.1200
wire signed [20:0] Y; //000000001001110000111, Y=312.4375
    
reg signed [12:0]A=13'b0;
initial
begin
   while(1)
   begin
     rst = 1'b0;
     ce = 1'b1;
     A = 13'b0;
     #1; clk = 1'b0;
     #1; clk = 1'b1;
     #1; clk = 1'b0;
     #1; clk = 1'b1;
     A <= A1;
     #1; clk = 1'b0;
     #1; clk = 1'b1;
     A <= A2;
     #1; clk = 1'b0;
     #1; clk = 1'b1;
     A <= A3;
     #1; clk = 1'b0;
     #1; clk = 1'b1;
     A <= A4;
     #1; clk = 1'b0;
     #1; clk = 1'b1;
     A <= A5;
     #1; clk = 1'b0;
     #1; clk = 1'b1;
     A <= A6;
     #1; clk = 1'b0;
     #1; clk = 1'b1;
     A <= A7;
     #1; clk = 1'b0;
     #1; clk = 1'b1;
     A <= A8;
     #1; clk = 1'b0;
     #1; clk = 1'b1;
     A <= A9;
     #1; clk = 1'b0;
     #1; clk = 1'b1;
     A <= A10;
     #1; clk = 1'b0;
     #1; clk = 1'b1;
     #1; clk = 1'b0;
     #1; clk = 1'b1;
     ce = 1'b0;
     #1; clk = 1'b0;
     #1; clk = 1'b1;
     #1; clk = 1'b0;
     #1; clk = 1'b1;
     rst = 1'b1;
     #1; clk = 1'b0;
     #1; clk = 1'b1;
   end
end  

accumulator test(
    .clk(clk),
    .ce(ce),
    .rst(rst),
    .data(A),
    .Y(Y)
);

endmodule
