`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2020 21:25:24
// Design Name: 
// Module Name: register
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


module register(
    input clk,
    input ce,
    input rst,
    input [30:0]data,
    output [30:0]Y
    );

reg signed [30:0]rego=31'b0;

always @(posedge clk)
begin
    if (rst) rego <= 31'b0;
    else
        if (ce) rego <= data;
end

assign Y = rego;

endmodule
