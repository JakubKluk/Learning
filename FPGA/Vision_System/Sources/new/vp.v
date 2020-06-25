`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2020 14:24:06
// Design Name: 
// Module Name: vp
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


module vp
#(
    parameter LATENCY=0
)
(
    input [2:0]sw,
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
    
    //creating a multiplexer in order to change output easily
    wire [23:0]rgb_mux[7:0];
    wire de_mux[7:0];
    wire hsync_mux[7:0];
    wire vsync_mux[7:0];
    
    //wire for rgb-ycrcb conversion
    wire [23:0]ycrcb_pixel_out;
    
    //centroid wires
    wire [10:0]x_pos;
    wire [10:0]y_pos;
    wire [23:0]vis_circle;
    
    //binarization wires
    wire de_bin;
    wire h_sync_bin;
    wire v_sync_bin;
    wire [23:0]bin_pixel;
    
    //median filter wires
    wire [23:0]med_out;
    wire de_med;
    wire hsync_med;
    wire vsync_med;
    
    //wires for rectangular over object
    wire [10:0]left;
    wire [10:0]right;
    wire [10:0]up;
    wire [10:0]down;
    wire [23:0]vis_rect;    
    
    //wires for dilate operation
    wire [23:0]dilate_out;
    wire de_dilate;
    wire hsync_dilate;
    wire vsync_dilate;
    
    //wires for erode
    wire [23:0]erode_out;
    wire de_erode;
    wire hsync_erode;
    wire vsync_erode;
    
    
    //conversion from RGB to YCrCb
    rgb2ycbcr converter
    (
        .clk(clk),
        .de_in(de_in),
        .h_sync_in(h_sync_in),
        .v_sync_in(v_sync_in),
        .pixel_in(pixel_in),
        .de_out(de_bin),
        .h_sync_out(h_sync_bin),
        .v_sync_out(v_sync_bin),
        .pixel_out(ycrcb_pixel_out)
    );
    
    
    //Binarization
    binarize bin
    (
        .pixel_in(ycrcb_pixel_out),
        .pixel_out(bin_pixel)
    );
    
    
    //Median filtration with 5x5 window size
    median5x5 filtu
    (
        .clk(clk),
        .de(de_bin),
        .hsync(h_sync_bin),
        .vsync(v_sync_bin),
        .mask(bin_pixel),
        .de_med(de_med),
        .hsync_med(hsync_med),
        .vsync_med(vsync_med),
        .pixel_out(med_out)
    );
    
    
    //Determining the center of gravity of the image
    centroid 
    #(
        .IMG_H(64),
        .IMG_W(64)
    )centr
    (
        .clk(clk),
        .de(de_med),
        .hsync(hsync_med),
        .vsync(vsync_med),
        .mask(med_out[23]),
        .x(x_pos),
        .y(y_pos)   
    );
    
    
    //Finding Bounding Box cordinates
    get_rect
    #(
        .IMG_H(64),
        .IMG_W(64)
    )rect
    (
        .clk(clk),
        .de(de_med),
        .hsync(hsync_med),
        .vsync(vsync_med),
        .mask(med_out[23]),
        .left(left),
        .right(right),
        .up(up),
        .down(down)
    );
    
    
    //Visualizing the center of gravity as a red circle
    vis_circle_centroid
    #(
        .IMG_H(64),
        .IMG_W(64),
        .RADIUS(4)
    )visu_circ
    (
        .clk(clk),
        .de(de_med),
        .hsync(hsync_med),
        .vsync(vsync_med),
        .x(x_pos),
        .y(y_pos),
        .pixel_in(med_out),
        .pixel_out(vis_circle)
    );


    //Visualizing the Bounding Box
    vis_rect
    #(
        .IMG_H(64),
        .IMG_W(64),
        .RADIUS(2)
    )visu_rect
    (
        .clk(clk),
        .de(de_med),
        .hsync(hsync_med),
        .vsync(vsync_med),
        .x(x_pos),
        .y(y_pos),
        .right(right),
        .left(left),
        .up(up),
        .down(down),
        .pixel_in(med_out),
        .pixel_out(vis_rect)
    );
    
    
    //Eroding median filtered image
    erode ero
    (
        .clk(clk),
        .de(de_med),
        .hsync(hsync_med),
        .vsync(vsync_med),
        .mask(med_out[23]),
        .de_er(de_erode),
        .hsync_er(hsync_erode),
        .vsync_er(vsync_erode),
        .pixel_out(erode_out)
    );
    
    //Dilatating median filtered image
    dilate dil
    (
        .clk(clk),
        .de(de_med),
        .hsync(hsync_med),
        .vsync(vsync_med),
        .mask(med_out[23]),
        .de_dil(de_dilate),
        .hsync_dil(hsync_dilate),
        .vsync_dil(vsync_dilate),
        .pixel_out(dilate_out)
    );
    
    
    //assigning output signals to multiplexer
    //sw signal should be forced to constant in simulation
    //same picture as input
    assign rgb_mux[0] = pixel_in;
    assign de_mux[0] = de_in;
    assign hsync_mux[0] = h_sync_in;
    assign vsync_mux[0] = v_sync_in;
    
    //image converted to ycrcb
    assign rgb_mux[1] = ycrcb_pixel_out;
    assign de_mux[1] = de_bin;
    assign hsync_mux[1] = h_sync_bin;
    assign vsync_mux[1] = v_sync_bin;
    
    //image binarized
    assign rgb_mux[2] = bin_pixel;
    assign de_mux[2] = de_bin;
    assign hsync_mux[2] = h_sync_bin;
    assign vsync_mux[2] = v_sync_bin;
    
    //binarized image after median filtration
    assign rgb_mux[3] = med_out;
    assign de_mux[3] = de_med;
    assign hsync_mux[3] = hsync_med;
    assign vsync_mux[3] = vsync_med;
    
    //filtered image with center of gravity marked as a red circle
    assign rgb_mux[4] = vis_circle;
    assign de_mux[4] = de_med;
    assign hsync_mux[4] = hsync_med;
    assign vsync_mux[4] = vsync_med;
    
    //filtered image with red bounding box
    assign rgb_mux[5] = vis_rect;
    assign de_mux[5] = de_med;
    assign hsync_mux[5] = hsync_med;
    assign vsync_mux[5] = vsync_med;
    
    //eroded image
    assign rgb_mux[6] = erode_out;
    assign de_mux[6] = de_erode;
    assign hsync_mux[6] = hsync_erode;
    assign vsync_mux[6] = vsync_erode;
    
    //dilatated image
    assign rgb_mux[7] = dilate_out;
    assign de_mux[7] = de_dilate;
    assign hsync_mux[7] = hsync_dilate;
    assign vsync_mux[7] = vsync_dilate;
    
    
    //assigning multiplexer out to output signals
    assign pixel_out = rgb_mux[sw];
    assign de_out = de_mux[sw];
    assign h_sync_out = hsync_mux[sw];
    assign v_sync_out = vsync_mux[sw];

endmodule
