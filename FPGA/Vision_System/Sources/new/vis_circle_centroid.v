`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2020 13:38:09
// Design Name: 
// Module Name: vis_circle_centroid
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


module vis_circle_centroid
#(
    parameter IMG_H = 720,
    parameter IMG_W = 1280,
    parameter RADIUS = 4
)
(
    input clk,
    input de,
    input hsync,
    input vsync,
    input [10:0]x,
    input [10:0]y,
    input [23:0]pixel_in,
    output [23:0]pixel_out
);

    reg [10:0]x_pos = 11'b0;
    reg [10:0]y_pos = 11'b0;
    
    reg [23:0]pixel;
    
    
    always @(posedge clk)
    begin
//        div_1 = 31'b1;
//        div_2 = 31'b1;
        
        
        if (vsync == 1'b1)
        begin
            x_pos <= 0;
            y_pos <= 0;
        end
        else
        begin
            if (de == 1'b1)
            begin
                x_pos <= x_pos + 1;
                if (x_pos == (IMG_W - 1))
                begin
                    x_pos <= 11'b0;
                    y_pos <= y_pos + 1;
                    if (y_pos == (IMG_H - 1))
                    begin
                        y_pos <= 11'b0;
                    end
                end
            end
        end
    end
    
wire [10:0] subx;
wire [10:0] suby;

wire [10:0] a_x = (x_pos < x) ? x : x_pos;
wire [10:0] b_x = (x_pos < x) ? x_pos : x;

wire [10:0] a_y = (y_pos < y) ? y : y_pos;
wire [10:0] b_y = (y_pos < y) ? y_pos : y;

wire [11:0] dista;

subtract_0 subtract_x
(
    .A(a_x),
    .B(b_x),
    .CLK(clk),
    .S(subx)
);

subtract_0 subtract_y
(
    .A(a_y),
    .B(b_y),
    .CLK(clk),
    .S(suby)
);

add_pos calc_dist
(
    .A(subx),
    .B(suby),
    .CLK(clk),
    .S(dista)
);

assign pixel_out[15:8] = (dista <= RADIUS) ? 8'b0 : pixel_in[15:8];
assign pixel_out[23:16] = (dista <= RADIUS) ? 8'b11111111 : pixel_in[23:16];
assign pixel_out[7:0] = (dista <= RADIUS) ? 8'b0 : pixel_in[7:0];

endmodule
