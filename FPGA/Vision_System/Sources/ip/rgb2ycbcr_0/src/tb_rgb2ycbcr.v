`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.04.2020 23:07:04
// Design Name: 
// Module Name: tb_rgb2ycbcr
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


module tb_rgb2ycbcr(
    );
    
reg clk=1'b0;
    
initial
begin
    while(1)
    begin
        #1; clk=1'b0;
        #1; clk=1'b1;
    end
end

wire de_in = 1'b0;
wire de_out;
wire h_sync_in = 1'b0;
wire v_sync_in = 1'b0;

wire h_sync_out;
wire v_sync_out;

wire [23:0]pixel_in = 24'b101011000010000000110011;
wire [23:0]pixel_out;

rgb2ycbcr test
(
    .clk(clk),
    .de_in(de_in),
    .h_sync_in(h_sync_in),
    .v_sync_in(v_sync_in),
    .pixel_in(pixel_in),
    .de_out(de_out),
    .h_sync_out(h_sync_out),
    .v_sync_out(v_sync_out),
    .pixel_out(pixel_out)
);
endmodule
