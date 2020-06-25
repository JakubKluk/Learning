`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.05.2020 16:03:36
// Design Name: 
// Module Name: centroid
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


module get_rect
#(
    parameter IMG_H = 720,
    parameter IMG_W = 1280
)
(
    input clk,
    input de,
    input hsync,
    input vsync,
    input mask,
    output [10:0]left,
    output [10:0]right,
    output [10:0]down,
    output [10:0]up    
);

    
    reg [10:0]x_pos = 11'b0;
    reg [10:0]y_pos = 11'b0;
    
    reg [10:0]left_max = 11'b11111111111;
    reg [10:0]right_max = 11'b0;
    reg [10:0]up_max = 11'b11111111111;
    reg [10:0]down_max = 11'b0;
    
    reg [10:0]result_left_max = 11'b1;
    reg [10:0]result_right_max = 11'b0;
    reg [10:0]result_up_max = 11'b1;
    reg [10:0]result_down_max = 11'b0;
    

    reg prev_vsync = 1'b1;
    wire eof;
    
    
    
    always @(posedge clk)
    begin
//        div_1 = 31'b1;
//        div_2 = 31'b1;
        if (eof == 1'b1)
        begin
            result_left_max <= left_max;
            result_right_max <= right_max;
            result_up_max <= up_max;
            result_down_max <= down_max;
            
            left_max <= 11'b11111111111;
            right_max <= 11'b0;
            up_max <= 11'b11111111111;
            down_max <= 11'b0;
                
        end
        
        
        prev_vsync <= vsync;
        if (vsync == 1'b1)
        begin
            x_pos <= 0;
            y_pos <= 0;
        end
        else
        begin
            if (de == 1'b1)
            begin
            
                if (mask == 1)
                begin
                    if (x_pos > right_max)
                    begin
                        right_max <= x_pos;
                    end
                    if (x_pos < left_max)
                    begin
                        left_max <= x_pos;
                    end
                    
                    if (y_pos > down_max)
                    begin
                        down_max <= y_pos;
                    end
                    if (y_pos < up_max)
                    begin
                        up_max <= y_pos;
                    end
                end
                
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
    
    assign eof = (prev_vsync == 1'b0 && vsync == 1'b1) ? 1'b1 : 1'b0;
    assign left = result_left_max;
    assign right = result_right_max;
    assign up = result_up_max;
    assign down = result_down_max;
        
       
endmodule
