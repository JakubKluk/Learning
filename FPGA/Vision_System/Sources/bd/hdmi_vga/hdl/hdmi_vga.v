//Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
//Date        : Sat Apr 04 00:00:52 2020
//Host        : DESKTOP-C71LN11 running 64-bit major release  (build 9200)
//Command     : generate_target hdmi_vga.bd
//Design      : hdmi_vga
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module hdmi_vga
   (hdmi_hpd,
    hdmi_in_ddc_scl_i,
    hdmi_in_ddc_scl_o,
    hdmi_in_ddc_scl_t,
    hdmi_in_ddc_sda_i,
    hdmi_in_ddc_sda_o,
    hdmi_in_ddc_sda_t,
    hdmi_out_en,
    sys_clock,
    vga_pBlue,
    vga_pGreen,
    vga_pHSync,
    vga_pRed,
    vga_pVSync);
  output [0:0]hdmi_hpd;
  input hdmi_in_ddc_scl_i;
  output hdmi_in_ddc_scl_o;
  output hdmi_in_ddc_scl_t;
  input hdmi_in_ddc_sda_i;
  output hdmi_in_ddc_sda_o;
  output hdmi_in_ddc_sda_t;
  output [0:0]hdmi_out_en;
  input sys_clock;
  output [4:0]vga_pBlue;
  output [5:0]vga_pGreen;
  output vga_pHSync;
  output [4:0]vga_pRed;
  output vga_pVSync;

  wire clk_wiz_0_clk_out1;
  wire dvi2rgb_0_DDC_SCL_I;
  wire dvi2rgb_0_DDC_SCL_O;
  wire dvi2rgb_0_DDC_SCL_T;
  wire dvi2rgb_0_DDC_SDA_I;
  wire dvi2rgb_0_DDC_SDA_O;
  wire dvi2rgb_0_DDC_SDA_T;
  wire dvi2rgb_0_PixelClk;
  wire [23:0]dvi2rgb_0_vid_pData;
  wire dvi2rgb_0_vid_pHSync;
  wire dvi2rgb_0_vid_pVDE;
  wire dvi2rgb_0_vid_pVSync;
  wire [4:0]rgb2vga_0_vga_pBlue;
  wire [5:0]rgb2vga_0_vga_pGreen;
  wire rgb2vga_0_vga_pHSync;
  wire [4:0]rgb2vga_0_vga_pRed;
  wire rgb2vga_0_vga_pVSync;
  wire sys_clock_1;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_dout;

  assign dvi2rgb_0_DDC_SCL_I = hdmi_in_ddc_scl_i;
  assign dvi2rgb_0_DDC_SDA_I = hdmi_in_ddc_sda_i;
  assign hdmi_hpd[0] = xlconstant_1_dout;
  assign hdmi_in_ddc_scl_o = dvi2rgb_0_DDC_SCL_O;
  assign hdmi_in_ddc_scl_t = dvi2rgb_0_DDC_SCL_T;
  assign hdmi_in_ddc_sda_o = dvi2rgb_0_DDC_SDA_O;
  assign hdmi_in_ddc_sda_t = dvi2rgb_0_DDC_SDA_T;
  assign hdmi_out_en[0] = xlconstant_0_dout;
  assign sys_clock_1 = sys_clock;
  assign vga_pBlue[4:0] = rgb2vga_0_vga_pBlue;
  assign vga_pGreen[5:0] = rgb2vga_0_vga_pGreen;
  assign vga_pHSync = rgb2vga_0_vga_pHSync;
  assign vga_pRed[4:0] = rgb2vga_0_vga_pRed;
  assign vga_pVSync = rgb2vga_0_vga_pVSync;
hdmi_vga_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(sys_clock_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .reset(xlconstant_0_dout));
hdmi_vga_dvi2rgb_0_0 dvi2rgb_0
       (.PixelClk(dvi2rgb_0_PixelClk),
        .RefClk(clk_wiz_0_clk_out1),
        .SCL_I(dvi2rgb_0_DDC_SCL_I),
        .SCL_O(dvi2rgb_0_DDC_SCL_O),
        .SCL_T(dvi2rgb_0_DDC_SCL_T),
        .SDA_I(dvi2rgb_0_DDC_SDA_I),
        .SDA_O(dvi2rgb_0_DDC_SDA_O),
        .SDA_T(dvi2rgb_0_DDC_SDA_T),
        .TMDS_Clk_n(xlconstant_0_dout),
        .TMDS_Clk_p(xlconstant_0_dout),
        .TMDS_Data_n(xlconstant_0_dout),
        .TMDS_Data_p(xlconstant_0_dout),
        .aRst(xlconstant_0_dout),
        .pRst(xlconstant_0_dout),
        .vid_pData(dvi2rgb_0_vid_pData),
        .vid_pHSync(dvi2rgb_0_vid_pHSync),
        .vid_pVDE(dvi2rgb_0_vid_pVDE),
        .vid_pVSync(dvi2rgb_0_vid_pVSync));
hdmi_vga_rgb2vga_0_0 rgb2vga_0
       (.PixelClk(dvi2rgb_0_PixelClk),
        .rgb_pData(dvi2rgb_0_vid_pData),
        .rgb_pHSync(dvi2rgb_0_vid_pHSync),
        .rgb_pVDE(dvi2rgb_0_vid_pVDE),
        .rgb_pVSync(dvi2rgb_0_vid_pVSync),
        .vga_pBlue(rgb2vga_0_vga_pBlue),
        .vga_pGreen(rgb2vga_0_vga_pGreen),
        .vga_pHSync(rgb2vga_0_vga_pHSync),
        .vga_pRed(rgb2vga_0_vga_pRed),
        .vga_pVSync(rgb2vga_0_vga_pVSync));
hdmi_vga_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
hdmi_vga_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
endmodule
