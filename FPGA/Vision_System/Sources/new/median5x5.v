`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.05.2020 17:50:27
// Design Name: 
// Module Name: median5x5
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

module median5x5
#(
    parameter H_SIZE = 83
)
(
    input clk,
    input de,
    input hsync,
    input vsync,
    input mask,
    output de_med,
    output hsync_med,
    output vsync_med,
    output [23:0]pixel_out
);

    // flaga context_valid
    wire context_valid = D11[2] & D12[2] & D13[2] & D14[2] & D15[2] &
                        D21[2] & D22[2] & D23[2] & D24[2] & D25[2] &
                        D31[2] & D32[2] & D33[2] & D34[2] & D35[2] &
                        D41[2] & D42[2] & D43[2] & D44[2] & D45[2] &
                        D51[2] & D52[2] & D53[2] & D54[2] & D55[2];

    // dane aktualnie rozpatrywanego piksela
    wire [3:0]current_pixel = {context_valid, D33[2], D33[1], D33[0]};
    wire [3:0]del_current_pixel;

    // rejestry wchodz¹ce do drzewa sumacyjnego
    reg [2:0]sum_a;
    reg [2:0]sum_b;
    reg [2:0]sum_c;
    reg [2:0]sum_d;
    reg [2:0]sum_e;
    
    reg [4:0]whole_sum;

    // definicja rejestrow opozniajacych
    reg [3:0]D11;
    reg [3:0]D12;
    reg [3:0]D13;
    reg [3:0]D14;
    reg [3:0]D15;
    
    reg [3:0]D21;
    reg [3:0]D22;
    reg [3:0]D23;
    reg [3:0]D24;
    reg [3:0]D25;
    
    reg [3:0]D31;
    reg [3:0]D32;
    reg [3:0]D33;
    reg [3:0]D34;
    reg [3:0]D35;
        
    reg [3:0]D41;
    reg [3:0]D42;
    reg [3:0]D43;
    reg [3:0]D44;
    reg [3:0]D45;
    
    reg [3:0]D51;
    reg [3:0]D52;
    reg [3:0]D53;
    reg [3:0]D54;
    reg [3:0]D55;
    
    // wyjscia z dlugich lini opozniajacych
    wire [3:0]long_delay_out_1;
    wire [3:0]long_delay_out_2;
    wire [3:0]long_delay_out_3;
    wire [3:0]long_delay_out_4;
    
    // sygnaly rst i ce do sterowania pamiecia dlugiej lini opozniajacej
    reg ce = 1'b1;
    reg rst = 1'b0;
    
    always @(posedge clk)
    begin
        // przepisanie opoznionych wartosci
        D55 <= D54;
        D54 <= D53;
        D53 <= D52;
        D52 <= D51;
        
        D45 <= D44;
        D44 <= D43;
        D43 <= D42;
        D42 <= D41;
        
        D35 <= D34;
        D34 <= D33;
        D33 <= D32;
        D32 <= D31;
        
        D25 <= D24;
        D24 <= D23;
        D23 <= D22;
        D22 <= D21;
        
        D15 <= D14;
        D14 <= D13;
        D13 <= D12;
        D12 <= D11;
        
        // przypisanie wyjsc z dlugiej lini do rejestrow
        D51 <= long_delay_out_4;
        D41 <= long_delay_out_3;
        D31 <= long_delay_out_2;
        D21 <= long_delay_out_1;
        
        // przypisanie wejscia z modulu do pierwszego rejestru
        D11 <= {mask, de, hsync, vsync};
        
        // drzewo sumacyjne
        sum_a <= D11[3] + D12[3] + D13[3] + D14[3] + D15[3];
        sum_b <= D21[3] + D22[3] + D23[3] + D24[3] + D25[3];
        sum_c <= D31[3] + D32[3] + D33[3] + D34[3] + D35[3];
        sum_d <= D41[3] + D42[3] + D43[3] + D44[3] + D45[3];
        sum_e <= D51[3] + D52[3] + D53[3] + D54[3] + D55[3];
        
        whole_sum <= sum_a + sum_b + sum_c + sum_d + sum_e;
        
    end
    
    // dluga linia opozniajaca. jedna zamiast czterech, operuje na skonkatenowanych sygnalach
    delayLinieBRAM_WP long_delay
    (
        .clk(clk),
        .rst(rst),
        .ce(ce),
        .din({D15, D25, D35, D45}),
        .dout({long_delay_out_1, long_delay_out_2, long_delay_out_3, long_delay_out_4}),
        .h_size(H_SIZE-5)
    );
    
    delay_module #(
        .N(4),
        .DELAY(2)
    )  delay_pix (
        .clk(clk),
        .ce(1),
        .idata(current_pixel),
        .odata(del_current_pixel)
    );
    
    wire [23:0]new_pixel;
    assign new_pixel[23:16] = whole_sum > 5'd12 ? 255 : 0;
    assign new_pixel[15:8] = whole_sum > 5'd12 ? 255 : 0;
    assign new_pixel[7:0] = whole_sum > 5'd12 ? 255 : 0;
    
    assign pixel_out = del_current_pixel[3] == 1 ? new_pixel : 0;
    
    assign  de_med = del_current_pixel[2];
    assign hsync_med = del_current_pixel[1];
    assign vsync_med = del_current_pixel[0];
                            
    // ===============================================================================================

endmodule
