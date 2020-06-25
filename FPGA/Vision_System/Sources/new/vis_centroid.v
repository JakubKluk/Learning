`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.05.2020 19:20:17
// Design Name: 
// Module Name: vis_centroid
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


module vis_centroid
#(
    parameter IMG_H = 720,
    parameter IMG_W = 1280
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
//                pixel[23:16] <= (x_pos == x || y_pos == y) ? 8'hff : pixel_in[23:16];
//                pixel[15:8] <= (x_pos == x || y_pos == y) ? 8'h00 : pixel_in[15:8];
//                pixel[7:0] <= (x_pos == x || y_pos == y) ? 8'h00 : pixel_in[7:0];
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
    
assign pixel_out[15:8] = (x_pos == x || y_pos == y) ? 8'b0 : pixel_in[15:8];
assign pixel_out[23:16] = (x_pos == x || y_pos == y) ? 8'b11111111 : pixel_in[23:16];
assign pixel_out[7:0] = (x_pos == x || y_pos == y) ? 8'b0 : pixel_in[7:0];

endmodule