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


module centroid
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
    output [10:0]x,
    output [10:0]y    
);

    
    reg [10:0]x_pos = 11'b0;
    reg [10:0]y_pos = 11'b0;
    
    reg [20:0]m00 = 21'b0;
    reg [20:0]m00_r = 21'b0;
    // (1279 / 2) * 1280 * 1280 - 31 bitów
    wire [30:0]m01_n;
    wire [30:0]m10_n;
    reg [30:0]m01 = 31'b0;
    reg [30:0]m10 = 31'b0;


    reg prev_vsync = 1'b1;
    wire eof;
    
    wire qv_1;
    wire qv_2;
    
    wire [31:0]div_1;
    wire [31:0]div_2;
    
    reg [31:0]result_x;
    reg [31:0]result_y;
    
    
    always @(posedge clk)
    begin
//        div_1 = 31'b1;
//        div_2 = 31'b1;
        m00_r = m00;
        if (eof == 1'b1)
        begin
            m00 = 21'b0;
        end
        
        if (qv_1 == 1'b1)
        begin
            result_x <= div_1;
        end
        
        if (qv_2 == 1'b1)
        begin
            result_y <= div_2;
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
                if (mask==1)
                begin
                    m00 <= m00 + 1;
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
    assign x = result_x;
    assign y = result_y;
    
    accumulator_0 sum_x
    (
        .clk(clk),
        .ce(mask && de),
        .rst(eof),
        .data(x_pos),
        .Y(m10_n)
    );
    
    accumulator_0 sum_y
    (
        .clk(clk),
        .ce(mask && de),
        .rst(eof),
        .data(y_pos),
        .Y(m01_n)
    );
    
    divider_32_20 divide_1
    (
        .clk(clk),
        .start(eof),
        .dividend({1'b0,m10_n}),
        .divisor(m00_r[19:0]),
        .quotient(div_1),
        .qv(qv_1)
    );


//    assign qv1 = 1'b1;
//    assign qv2 = 1'b1;
    
    divider_32_20 divide_2
        (
            .clk(clk),
            .start(eof),
            .dividend({1'b0,m01_n}),
            .divisor(m00_r[19:0]),
            .quotient(div_2),
            .qv(qv_2)
        );
        
       
endmodule
