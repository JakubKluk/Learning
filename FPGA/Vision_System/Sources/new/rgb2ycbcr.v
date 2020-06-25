`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.04.2020 19:56:40
// Design Name: 
// Module Name: rgb2ycbcr
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


module rgb2ycbcr
(
    input clk,
    input de_in,
    input h_sync_in,
    input v_sync_in,
    input [23:0]pixel_in,
    output de_out,
    output h_sync_out,
    output v_sync_out,
    output [23:0]pixel_out
);

wire ce = 1'b1;

//Pomocnicze sygna³y z pojedynczymi kolorami
wire signed [17:0]R = {10'b0, pixel_in[23:16]};
wire signed [17:0]G = {10'b0, pixel_in[15:8]};
wire signed [17:0]B = {10'b0, pixel_in[7:0]};


// Sta³e wspó³czynniki macierzy
wire signed [17:0]coef11 = 18'b001001100100010111;
wire signed [17:0]coef12 = 18'b010010110010001011;
wire signed [17:0]coef13 = 18'b000011101001011110;
wire signed [17:0]coef21 = 18'b111010100110011011;
wire signed [17:0]coef22 = 18'b110101011001100101;
wire signed [17:0]coef23 = 18'b010000000000000000;
wire signed [17:0]coef31 = 18'b010000000000000000;
wire signed [17:0]coef32 = 18'b110010100110100010;
wire signed [17:0]coef33 = 18'b111101011001011110;


// Wyjœcia z mno¿arek
wire signed [35:0]mno1;
wire signed [35:0]mno2;
wire signed [35:0]mno3;
wire signed [35:0]mno4;
wire signed [35:0]mno5;
wire signed [35:0]mno6;
wire signed [35:0]mno7;
wire signed [35:0]mno8;
wire signed [35:0]mno9;


//Mno¿arki
mult_gen_0 c11
(
    .CLK(clk),
    .A(R),
    .B(coef11),
    .P(mno1)
);

mult_gen_0 c12
(
    .CLK(clk),
    .A(G),
    .B(coef12),
    .P(mno2)
);

mult_gen_0 c13
(
    .CLK(clk),
    .A(B),
    .B(coef13),
    .P(mno3)
);

mult_gen_0 c21
(
    .CLK(clk),
    .A(R),
    .B(coef21),
    .P(mno4)
);

mult_gen_0 c22
(
    .CLK(clk),
    .A(G),
    .B(coef22),
    .P(mno5)
);

mult_gen_0 c23
(
    .CLK(clk),
    .A(B),
    .B(coef23),
    .P(mno6)
);

mult_gen_0 c31
(
    .CLK(clk),
    .A(R),
    .B(coef31),
    .P(mno7)
);

mult_gen_0 c32
(
    .CLK(clk),
    .A(G),
    .B(coef32),
    .P(mno8)
);

mult_gen_0 c33
(
    .CLK(clk),
    .A(B),
    .B(coef33),
    .P(mno9)
);


// Po³¹czenia dla wyników dodawania
wire signed [8:0] sum_11_12;
wire signed [8:0] sum_21_22;
wire signed [8:0] sum_31_32;

wire signed [8:0] sum_11_12_delayed;
wire signed [8:0] mnozarka_delayed_Y;
wire signed [8:0] sum_21_22_delayed;
wire signed [8:0] sum_31_32_delayed;

wire signed [8:0] sum_Cb;
wire signed [8:0] sum_Cb_delayed;

wire signed [8:0] sum_Cr;
wire signed [8:0] sum_Cr_delayed;

wire signed [8:0] const_128 = 9'b010000000;
wire signed [8:0] const_0 = 9'b0;

wire signed [8:0] Y;
wire signed [8:0] Cb;
wire signed [8:0] Cr;

// Sumy dla Y
c_addsub_0 Y1
(
    .CLK(clk),
    .A({mno1[35] ,mno1[24:17]}),
    .B({mno2[35], mno2[24:17]}),
    .S(sum_11_12)
);

delay_module 
#(
    .N(9),
    .DELAY(4)
) delay_mnozarka_Y
(
    .clk(clk),
    .ce(ce),
    .idata({mno3[35],mno3[24:17]}),
    .odata(mnozarka_delayed_Y)
);

delay_module 
#(
    .N(9),
    .DELAY(2)
) delay_11_12
(
    .clk(clk),
    .ce(ce),
    .idata(sum_11_12),
    .odata(sum_11_12_delayed)
);

c_addsub_0 Y2
(
    .CLK(clk),
    .A(sum_11_12_delayed),
    .B(mnozarka_delayed_Y),
    .S(Y)
);

assign pixel_out[23:16] = Y[7:0];

// Sumy dla Cb
c_addsub_0 Cb1
(
    .CLK(clk),
    .A({mno4[35],mno4[24:17]}),
    .B({mno5[35],mno5[24:17]}),
    .S(sum_21_22)
);

delay_module 
#(
    .N(9),
    .DELAY(2)
) delay_21_22
(
    .clk(clk),
    .ce(ce),
    .idata({mno6[35],mno6[24:17]}),
    .odata(sum_21_22_delayed)
);

c_addsub_0 Cb2
(
    .CLK(clk),
    .A(sum_21_22_delayed),
    .B(sum_21_22),
    .S(sum_Cb)
);

c_addsub_0 Cb3
(
    .CLK(clk),
    .A(sum_Cb),
    .B(const_128),
    .S(Cb)
);

assign pixel_out[15:8] = Cb[7:0];

// Sumy dla Cr

c_addsub_0 Cr1
(
    .CLK(clk),
    .A({mno7[35],mno7[24:17]}),
    .B({mno8[35],mno8[24:17]}),
    .S(sum_31_32)
);

delay_module 
#(
    .N(9),
    .DELAY(2)
) delay_31_32
(
    .clk(clk),
    .ce(ce),
    .idata({mno9[35],mno9[24:17]}),
    .odata(sum_31_32_delayed)
);

c_addsub_0 Cr2
(
    .CLK(clk),
    .A(sum_31_32_delayed),
    .B(sum_31_32),
    .S(sum_Cr)
);

c_addsub_0 Cr3
(
    .CLK(clk),
    .A(sum_Cr),
    .B(const_128),
    .S(Cr)
);

assign pixel_out[7:0] = Cr[7:0];

// OpóŸnienie sygna³ów synchronizacji
delay_module
#(
    .N(1),
    .DELAY(9)
) delay_de
(
    .clk(clk),
    .ce(ce),
    .idata(de_in),
    .odata(de_out)
);

delay_module
#(
    .N(1),
    .DELAY(9)
) delay_v
(
    .clk(clk),
    .ce(ce),
    .idata(v_sync_in),
    .odata(v_sync_out)
);

delay_module
#(
    .N(1),
    .DELAY(9)
) delay_h
(
    .clk(clk),
    .ce(ce),
    .idata(h_sync_in),
    .odata(h_sync_out)
);
endmodule