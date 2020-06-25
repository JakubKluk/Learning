`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2020 20:23:43
// Design Name: 
// Module Name: accumulator
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


module accumulator
(
    input clk,
    input ce,
    input rst,
    input [7:0]data,
    output [30:0]Y
);

wire signed [30:0]y;
register regg(
    .clk(clk),
    .ce(ce),
    .rst(rst),
    .data(y),
    .Y(Y)
);

accu_sum adding
( //latency = 1
    .A(data),
    .B(Y),
    //.CLK(clk),
    //.CE(ce),
    .S(y)
);

endmodule
