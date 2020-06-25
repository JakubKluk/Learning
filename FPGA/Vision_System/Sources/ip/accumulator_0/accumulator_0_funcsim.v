// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
// Date        : Tue Jun 23 21:29:50 2020
// Host        : LAPTOP-J9ADUE2F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/klukj/Desktop/agh/Sprawozdania/SystemyRekonfigurowalne/Lab5/hdmi_vga_zybo/hdmi_vga_zybo.srcs/sources_1/ip/accumulator_0/accumulator_0_funcsim.v
// Design      : accumulator_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* X_CORE_INFO = "accumulator,Vivado 2014.4" *) (* CHECK_LICENSE_TYPE = "accumulator_0,accumulator,{}" *) (* CORE_GENERATION_INFO = "accumulator_0,accumulator,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=accumulator,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) 
(* NotValidForBitStream *)
module accumulator_0
   (clk,
    ce,
    rst,
    data,
    Y);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 signal_clock CLK" *) input clk;
  input ce;
  input rst;
  input [7:0]data;
  output [30:0]Y;

  wire [30:0]Y;
  wire ce;
  wire clk;
  wire [7:0]data;
  wire rst;

accumulator_0_accumulator inst
       (.Y(Y),
        .ce(ce),
        .clk(clk),
        .data(data),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "accu_sum" *) 
module accumulator_0_accu_sum
   (D,
    data,
    Y);
  output [30:0]D;
  input [7:0]data;
  input [30:0]Y;

  wire [30:0]D;
  wire [30:0]Y;
  wire [7:0]data;
  wire NLW_U0_C_OUT_UNCONNECTED;

(* C_ADD_MODE = "0" *) 
   (* C_AINIT_VAL = "0" *) 
   (* C_A_TYPE = "0" *) 
   (* C_A_WIDTH = "8" *) 
   (* C_BORROW_LOW = "1" *) 
   (* C_BYPASS_LOW = "0" *) 
   (* C_B_CONSTANT = "0" *) 
   (* C_B_TYPE = "0" *) 
   (* C_B_VALUE = "0000000000000000000000000000000" *) 
   (* C_B_WIDTH = "31" *) 
   (* C_CE_OVERRIDES_BYPASS = "1" *) 
   (* C_CE_OVERRIDES_SCLR = "0" *) 
   (* C_HAS_BYPASS = "0" *) 
   (* C_HAS_CE = "0" *) 
   (* C_HAS_C_IN = "0" *) 
   (* C_HAS_C_OUT = "0" *) 
   (* C_HAS_SCLR = "0" *) 
   (* C_HAS_SINIT = "0" *) 
   (* C_HAS_SSET = "0" *) 
   (* C_IMPLEMENTATION = "1" *) 
   (* C_LATENCY = "0" *) 
   (* C_OUT_WIDTH = "31" *) 
   (* C_SCLR_OVERRIDES_SSET = "1" *) 
   (* C_SINIT_VAL = "0" *) 
   (* C_VERBOSITY = "0" *) 
   (* C_XDEVICEFAMILY = "zynq" *) 
   (* DONT_TOUCH *) 
   (* downgradeipidentifiedwarnings = "yes" *) 
   accumulator_0_c_addsub_v12_0__parameterized0 U0
       (.A(data),
        .ADD(1'b1),
        .B(Y),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(1'b0),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(D),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* ORIG_REF_NAME = "accumulator" *) 
module accumulator_0_accumulator
   (Y,
    data,
    rst,
    ce,
    clk);
  output [30:0]Y;
  input [7:0]data;
  input rst;
  input ce;
  input clk;

  wire [30:0]Y;
  wire ce;
  wire clk;
  wire [7:0]data;
  wire rst;
  wire [30:0]y;

accumulator_0_accu_sum adding
       (.D(y),
        .Y(Y),
        .data(data));
accumulator_0_register regg
       (.D(y),
        .Y(Y),
        .ce(ce),
        .clk(clk),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "c_addsub_v12_0" *) (* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) 
(* C_IMPLEMENTATION = "1" *) (* C_A_WIDTH = "8" *) (* C_B_WIDTH = "31" *) 
(* C_OUT_WIDTH = "31" *) (* C_CE_OVERRIDES_SCLR = "0" *) (* C_A_TYPE = "0" *) 
(* C_B_TYPE = "0" *) (* C_LATENCY = "0" *) (* C_ADD_MODE = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_VALUE = "0000000000000000000000000000000" *) (* C_AINIT_VAL = "0" *) 
(* C_SINIT_VAL = "0" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_SCLR_OVERRIDES_SSET = "1" *) (* C_HAS_C_IN = "0" *) (* C_HAS_C_OUT = "0" *) 
(* C_BORROW_LOW = "1" *) (* C_HAS_CE = "0" *) (* C_HAS_BYPASS = "0" *) 
(* C_HAS_SCLR = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_SINIT = "0" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) 
module accumulator_0_c_addsub_v12_0__parameterized0
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [7:0]A;
  input [30:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [30:0]S;

  wire [7:0]A;
  wire ADD;
  wire [30:0]B;
  wire BYPASS;
  wire CE;
  wire CLK;
  wire C_IN;
  wire C_OUT;
  wire [30:0]S;
  wire SCLR;
  wire SINIT;
  wire SSET;

(* C_ADD_MODE = "0" *) 
   (* C_AINIT_VAL = "0" *) 
   (* C_A_TYPE = "0" *) 
   (* C_A_WIDTH = "8" *) 
   (* C_BORROW_LOW = "1" *) 
   (* C_BYPASS_LOW = "0" *) 
   (* C_B_CONSTANT = "0" *) 
   (* C_B_TYPE = "0" *) 
   (* C_B_VALUE = "0000000000000000000000000000000" *) 
   (* C_B_WIDTH = "31" *) 
   (* C_CE_OVERRIDES_BYPASS = "1" *) 
   (* C_CE_OVERRIDES_SCLR = "0" *) 
   (* C_HAS_BYPASS = "0" *) 
   (* C_HAS_CE = "0" *) 
   (* C_HAS_C_IN = "0" *) 
   (* C_HAS_C_OUT = "0" *) 
   (* C_HAS_SCLR = "0" *) 
   (* C_HAS_SINIT = "0" *) 
   (* C_HAS_SSET = "0" *) 
   (* C_IMPLEMENTATION = "1" *) 
   (* C_LATENCY = "0" *) 
   (* C_OUT_WIDTH = "31" *) 
   (* C_SCLR_OVERRIDES_SSET = "1" *) 
   (* C_SINIT_VAL = "0" *) 
   (* C_VERBOSITY = "0" *) 
   (* C_XDEVICEFAMILY = "zynq" *) 
   (* downgradeipidentifiedwarnings = "yes" *) 
   accumulator_0_c_addsub_v12_0_viv__parameterized0 xst_addsub
       (.A(A),
        .ADD(ADD),
        .B(B),
        .BYPASS(BYPASS),
        .CE(CE),
        .CLK(CLK),
        .C_IN(C_IN),
        .C_OUT(C_OUT),
        .S(S),
        .SCLR(SCLR),
        .SINIT(SINIT),
        .SSET(SSET));
endmodule

(* ORIG_REF_NAME = "register" *) 
module accumulator_0_register
   (Y,
    rst,
    ce,
    D,
    clk);
  output [30:0]Y;
  input rst;
  input ce;
  input [30:0]D;
  input clk;

  wire [30:0]D;
  wire [30:0]Y;
  wire ce;
  wire clk;
  wire rst;

FDRE #(
    .INIT(1'b0)) 
     \rego_reg[0] 
       (.C(clk),
        .CE(ce),
        .D(D[0]),
        .Q(Y[0]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \rego_reg[10] 
       (.C(clk),
        .CE(ce),
        .D(D[10]),
        .Q(Y[10]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \rego_reg[11] 
       (.C(clk),
        .CE(ce),
        .D(D[11]),
        .Q(Y[11]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \rego_reg[12] 
       (.C(clk),
        .CE(ce),
        .D(D[12]),
        .Q(Y[12]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \rego_reg[13] 
       (.C(clk),
        .CE(ce),
        .D(D[13]),
        .Q(Y[13]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \rego_reg[14] 
       (.C(clk),
        .CE(ce),
        .D(D[14]),
        .Q(Y[14]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \rego_reg[15] 
       (.C(clk),
        .CE(ce),
        .D(D[15]),
        .Q(Y[15]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \rego_reg[16] 
       (.C(clk),
        .CE(ce),
        .D(D[16]),
        .Q(Y[16]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \rego_reg[17] 
       (.C(clk),
        .CE(ce),
        .D(D[17]),
        .Q(Y[17]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \rego_reg[18] 
       (.C(clk),
        .CE(ce),
        .D(D[18]),
        .Q(Y[18]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \rego_reg[19] 
       (.C(clk),
        .CE(ce),
        .D(D[19]),
        .Q(Y[19]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \rego_reg[1] 
       (.C(clk),
        .CE(ce),
        .D(D[1]),
        .Q(Y[1]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \rego_reg[20] 
       (.C(clk),
        .CE(ce),
        .D(D[20]),
        .Q(Y[20]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \rego_reg[21] 
       (.C(clk),
        .CE(ce),
        .D(D[21]),
        .Q(Y[21]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \rego_reg[22] 
       (.C(clk),
        .CE(ce),
        .D(D[22]),
        .Q(Y[22]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \rego_reg[23] 
       (.C(clk),
        .CE(ce),
        .D(D[23]),
        .Q(Y[23]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \rego_reg[24] 
       (.C(clk),
        .CE(ce),
        .D(D[24]),
        .Q(Y[24]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \rego_reg[25] 
       (.C(clk),
        .CE(ce),
        .D(D[25]),
        .Q(Y[25]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \rego_reg[26] 
       (.C(clk),
        .CE(ce),
        .D(D[26]),
        .Q(Y[26]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \rego_reg[27] 
       (.C(clk),
        .CE(ce),
        .D(D[27]),
        .Q(Y[27]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \rego_reg[28] 
       (.C(clk),
        .CE(ce),
        .D(D[28]),
        .Q(Y[28]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \rego_reg[29] 
       (.C(clk),
        .CE(ce),
        .D(D[29]),
        .Q(Y[29]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \rego_reg[2] 
       (.C(clk),
        .CE(ce),
        .D(D[2]),
        .Q(Y[2]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \rego_reg[30] 
       (.C(clk),
        .CE(ce),
        .D(D[30]),
        .Q(Y[30]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \rego_reg[3] 
       (.C(clk),
        .CE(ce),
        .D(D[3]),
        .Q(Y[3]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \rego_reg[4] 
       (.C(clk),
        .CE(ce),
        .D(D[4]),
        .Q(Y[4]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \rego_reg[5] 
       (.C(clk),
        .CE(ce),
        .D(D[5]),
        .Q(Y[5]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \rego_reg[6] 
       (.C(clk),
        .CE(ce),
        .D(D[6]),
        .Q(Y[6]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \rego_reg[7] 
       (.C(clk),
        .CE(ce),
        .D(D[7]),
        .Q(Y[7]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \rego_reg[8] 
       (.C(clk),
        .CE(ce),
        .D(D[8]),
        .Q(Y[8]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \rego_reg[9] 
       (.C(clk),
        .CE(ce),
        .D(D[9]),
        .Q(Y[9]),
        .R(rst));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2014"
`pragma protect key_keyowner = "Cadence Design Systems.", key_keyname= "cds_rsa_key", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 64)
`pragma protect key_block
EqeSQPTUNoqpnK4nVrjuhvpLxxZNDJh+LNRK2Fq61au3XOscZMNjSdFnJGIReM9px3jwUK8mWPLM
l2UaT6RoRA==


`pragma protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-VERIF-SIM-RSA-1", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`pragma protect key_block
R/e+Ejlqih+TSvlnIKg+dwq51h4kWd54YlCFFQy9zsheFzRESBkYAJVBQ7ILZxlIabXB9j1aVu6K
8Z9+zFqLmyMQsSIYA+K5QWIYU2Bb4Y+4ItYi3jvYDfr5JSmpj9QxtO4XgJ2RtY9KcYuWgf5gOHOo
CGJBYbRGF6KlMQNiZY0=


`pragma protect key_keyowner = "Xilinx", key_keyname= "xilinx_2014_03", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
FGR8zuciZ/8sVVU6xCRWgmdIMjc8uYI3UHET2BNcz8IsAUWDmcL0tHzNeDqJZtYR/mBKgtwk0FS0
brG7VZIqCDc60xU944GI813RKjn7gNR95WmCXI3nLE6zFyuG7nEwz+kAG0QnJAUKcptSnEuOtyAp
G00TZRjEgSp1ngjItSeOkXIl9iSRoxIf+ulU26wM4Qi1rpPrWbvRFwbKQXF2hKnapTa5m+QuyFQl
8oXI091D6DZJd3LchJrs+hfSyVU4LRCEhxLK35ziohIVbp02lMS2TU4VaCvVQ5W+PV//KDSpOXb5
rBSZZfGWP10mmogiFuBlCAiom0an10D3fyeyPg==


`pragma protect key_keyowner = "Synopsys", key_keyname= "SNPS-VCS-RSA-1", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`pragma protect key_block
ZlqiLdBEo9HlWl8m539vAKUx5Fn/ByKjL7kE2TM/hrLGdwE3ZteynKlE3PVhPzI/rAjvwS7dUWJx
A1N5W7f+UYJsQ1elVQIeuHDqtbs7RZnlbev9ajKV9Zt3Z/WSjOprvHNPsZgKUtaI8RvScZB/fcq1
oXqq1F7MyeI4y80ngnI=


`pragma protect key_keyowner = "Aldec", key_keyname= "ALDEC08_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
W9ppzRUYPhAWiZbvV6lVSv7DCAhtgisXW0N4BwCumnHvuoB5HOtawlTREf8gdVeyetpMVVyautFU
zrKAQZN0HUwBMy4hmHFt9BxCWeiaePF4YxGslc2uxKsVjTCjrSPjd1ftP+z2FG37n3xJqaJCrDQC
5Fyz1CwqyuLnsCcUfiXGobQLQEAwWPpJ5OMiWCh0pRv5U7ZildaDd/W1yQAfdQ4qgDUPes7HV/yr
bOse6nbEPbWW/7zlGjNWrNnVDHAgljR3ggdQlQMXqjkaYS66ItrqNf5UZjFaEdWHlmxH3j3f9J2Z
6DYkLL8cKeUmFtTLEhGydAnLHmEpCwTNXRGFnA==


`pragma protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-PREC-RSA", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
Vwd6BX/4v1jt6ZREb8lqevhBzxhdwfPllvTeU7vPtxf4/aXFZWhfZ4w9DgjJlDOS1iFdk+WS7/JT
s34PqXVSDZ/dUN5pU44UVF+u65hhI8hxM8SSxrj/NvHfqDLHJ40Do+rMXGE+ELfy2lEz0wbKc+1i
nsFsjL5qbHDGfYuhXot+Jqkd0uth8+fGK+0E8vX5KwC3yCzWGOETMemCKy3GQn2Cp2QqR8L3H2Wh
VA1D9cSSm5PiqRI3fllepGz0rHkW8MjzGhM7+Npwk70IhY314YBuS3b967EoGOtxb8nbCFrWA5+k
4ckMdr6BfjjXRcsFTqkB0ZcPRxucei6ukiXfRQ==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
iFgpp0gz+0ay27bTAfslIBq8DrSQalwnOWBUrAsyXJYs2xRT+gA3Sm3iCGIkoFvXhm6Gy5ThmDuz
4W3zwyztO5QK7ilsuBPJwuxiaFTgBRf4lMFbLxaD7fjqkFHTOy/7jpIoDWGDFrEYXlqH+dYly4lK
0mls5of1QQFTbV6+mwaCHB+P09sjB0wckml/gh9ArlH+jwtEwfSoGoQdKATocVXqv721Zxj1EKla
RUtOw9+RJX75XqIq34xEKuMhfceuAExtUlU7Epzm0MNlONdzMRSFo4NbPkBEgDwkvy2cZcDmIUeY
ph3zNp+ZKtR/uXUW01NzP9DCxbQ+gCnj/Xw15Q==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 1504)
`pragma protect data_block
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
M/appt4j8t7JTjQWVAgVlMhcSGJWAA==
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2014"
`pragma protect key_keyowner = "Cadence Design Systems.", key_keyname= "cds_rsa_key", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 64)
`pragma protect key_block
EqeSQPTUNoqpnK4nVrjuhvpLxxZNDJh+LNRK2Fq61au3XOscZMNjSdFnJGIReM9px3jwUK8mWPLM
l2UaT6RoRA==


`pragma protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-VERIF-SIM-RSA-1", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`pragma protect key_block
R/e+Ejlqih+TSvlnIKg+dwq51h4kWd54YlCFFQy9zsheFzRESBkYAJVBQ7ILZxlIabXB9j1aVu6K
8Z9+zFqLmyMQsSIYA+K5QWIYU2Bb4Y+4ItYi3jvYDfr5JSmpj9QxtO4XgJ2RtY9KcYuWgf5gOHOo
CGJBYbRGF6KlMQNiZY0=


`pragma protect key_keyowner = "Xilinx", key_keyname= "xilinx_2014_03", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
FGR8zuciZ/8sVVU6xCRWgmdIMjc8uYI3UHET2BNcz8IsAUWDmcL0tHzNeDqJZtYR/mBKgtwk0FS0
brG7VZIqCDc60xU944GI813RKjn7gNR95WmCXI3nLE6zFyuG7nEwz+kAG0QnJAUKcptSnEuOtyAp
G00TZRjEgSp1ngjItSeOkXIl9iSRoxIf+ulU26wM4Qi1rpPrWbvRFwbKQXF2hKnapTa5m+QuyFQl
8oXI091D6DZJd3LchJrs+hfSyVU4LRCEhxLK35ziohIVbp02lMS2TU4VaCvVQ5W+PV//KDSpOXb5
rBSZZfGWP10mmogiFuBlCAiom0an10D3fyeyPg==


`pragma protect key_keyowner = "Synopsys", key_keyname= "SNPS-VCS-RSA-1", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`pragma protect key_block
ZlqiLdBEo9HlWl8m539vAKUx5Fn/ByKjL7kE2TM/hrLGdwE3ZteynKlE3PVhPzI/rAjvwS7dUWJx
A1N5W7f+UYJsQ1elVQIeuHDqtbs7RZnlbev9ajKV9Zt3Z/WSjOprvHNPsZgKUtaI8RvScZB/fcq1
oXqq1F7MyeI4y80ngnI=


`pragma protect key_keyowner = "Aldec", key_keyname= "ALDEC08_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
W9ppzRUYPhAWiZbvV6lVSv7DCAhtgisXW0N4BwCumnHvuoB5HOtawlTREf8gdVeyetpMVVyautFU
zrKAQZN0HUwBMy4hmHFt9BxCWeiaePF4YxGslc2uxKsVjTCjrSPjd1ftP+z2FG37n3xJqaJCrDQC
5Fyz1CwqyuLnsCcUfiXGobQLQEAwWPpJ5OMiWCh0pRv5U7ZildaDd/W1yQAfdQ4qgDUPes7HV/yr
bOse6nbEPbWW/7zlGjNWrNnVDHAgljR3ggdQlQMXqjkaYS66ItrqNf5UZjFaEdWHlmxH3j3f9J2Z
6DYkLL8cKeUmFtTLEhGydAnLHmEpCwTNXRGFnA==


`pragma protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-PREC-RSA", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
Vwd6BX/4v1jt6ZREb8lqevhBzxhdwfPllvTeU7vPtxf4/aXFZWhfZ4w9DgjJlDOS1iFdk+WS7/JT
s34PqXVSDZ/dUN5pU44UVF+u65hhI8hxM8SSxrj/NvHfqDLHJ40Do+rMXGE+ELfy2lEz0wbKc+1i
nsFsjL5qbHDGfYuhXot+Jqkd0uth8+fGK+0E8vX5KwC3yCzWGOETMemCKy3GQn2Cp2QqR8L3H2Wh
VA1D9cSSm5PiqRI3fllepGz0rHkW8MjzGhM7+Npwk70IhY314YBuS3b967EoGOtxb8nbCFrWA5+k
4ckMdr6BfjjXRcsFTqkB0ZcPRxucei6ukiXfRQ==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
iFgpp0gz+0ay27bTAfslIBq8DrSQalwnOWBUrAsyXJYs2xRT+gA3Sm3iCGIkoFvXhm6Gy5ThmDuz
4W3zwyztO5QK7ilsuBPJwuxiaFTgBRf4lMFbLxaD7fjqkFHTOy/7jpIoDWGDFrEYXlqH+dYly4lK
0mls5of1QQFTbV6+mwaCHB+P09sjB0wckml/gh9ArlH+jwtEwfSoGoQdKATocVXqv721Zxj1EKla
RUtOw9+RJX75XqIq34xEKuMhfceuAExtUlU7Epzm0MNlONdzMRSFo4NbPkBEgDwkvy2cZcDmIUeY
ph3zNp+ZKtR/uXUW01NzP9DCxbQ+gCnj/Xw15Q==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 384)
`pragma protect data_block
jT2PH+1CsdvQTzwjlYibRVzRI+JS2C4n6NNhQvQFvuiC+9dfDwPY6RhOGd3xbtE6qjxi3OahY2RS
vrP46vqi2Gqw2/iPNwwN0TELxddLv4QC+Y4nCbb9jvlhxEZZ8xj2jWWgxV/dYn3YM5FP/NU3HEIC
DdZXGH9jQYEs8yauDko5lDRjkfAwpxBU/cx7HVHofdte0AUMU7kfrJclqTUUsqgMbU+BbiiEEeQp
gX9hRMOyMgGLCJIJrB37HCsU7mllmzNMJdDU/930g7YZGDxSUMdR02FaQvlxy9YBd0mgnvaOHXNu
8YpU9wBwYQ+aFD5n3aDulyryVsl0Fm11v85k+RQ4v7+Mry9+HZHWvbS9tltKrmvTgUqjxmLnKNFY
0DoQA+rQyvxaz8MkJeZWETY+/UADlZDHAGqi6sX42NRcBWpvvGzu2ajI5Q/J6+jqs32O4OvEZKCs
JaPp+sjnLG0EGC4SCQcvT+NNqn05dVJVZUfotQuga2TULRQ4ss0fCebR
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2014"
`pragma protect key_keyowner = "Cadence Design Systems.", key_keyname= "cds_rsa_key", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 64)
`pragma protect key_block
EqeSQPTUNoqpnK4nVrjuhvpLxxZNDJh+LNRK2Fq61au3XOscZMNjSdFnJGIReM9px3jwUK8mWPLM
l2UaT6RoRA==


`pragma protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-VERIF-SIM-RSA-1", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`pragma protect key_block
R/e+Ejlqih+TSvlnIKg+dwq51h4kWd54YlCFFQy9zsheFzRESBkYAJVBQ7ILZxlIabXB9j1aVu6K
8Z9+zFqLmyMQsSIYA+K5QWIYU2Bb4Y+4ItYi3jvYDfr5JSmpj9QxtO4XgJ2RtY9KcYuWgf5gOHOo
CGJBYbRGF6KlMQNiZY0=


`pragma protect key_keyowner = "Xilinx", key_keyname= "xilinx_2014_03", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
FGR8zuciZ/8sVVU6xCRWgmdIMjc8uYI3UHET2BNcz8IsAUWDmcL0tHzNeDqJZtYR/mBKgtwk0FS0
brG7VZIqCDc60xU944GI813RKjn7gNR95WmCXI3nLE6zFyuG7nEwz+kAG0QnJAUKcptSnEuOtyAp
G00TZRjEgSp1ngjItSeOkXIl9iSRoxIf+ulU26wM4Qi1rpPrWbvRFwbKQXF2hKnapTa5m+QuyFQl
8oXI091D6DZJd3LchJrs+hfSyVU4LRCEhxLK35ziohIVbp02lMS2TU4VaCvVQ5W+PV//KDSpOXb5
rBSZZfGWP10mmogiFuBlCAiom0an10D3fyeyPg==


`pragma protect key_keyowner = "Synopsys", key_keyname= "SNPS-VCS-RSA-1", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`pragma protect key_block
ZlqiLdBEo9HlWl8m539vAKUx5Fn/ByKjL7kE2TM/hrLGdwE3ZteynKlE3PVhPzI/rAjvwS7dUWJx
A1N5W7f+UYJsQ1elVQIeuHDqtbs7RZnlbev9ajKV9Zt3Z/WSjOprvHNPsZgKUtaI8RvScZB/fcq1
oXqq1F7MyeI4y80ngnI=


`pragma protect key_keyowner = "Aldec", key_keyname= "ALDEC08_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
W9ppzRUYPhAWiZbvV6lVSv7DCAhtgisXW0N4BwCumnHvuoB5HOtawlTREf8gdVeyetpMVVyautFU
zrKAQZN0HUwBMy4hmHFt9BxCWeiaePF4YxGslc2uxKsVjTCjrSPjd1ftP+z2FG37n3xJqaJCrDQC
5Fyz1CwqyuLnsCcUfiXGobQLQEAwWPpJ5OMiWCh0pRv5U7ZildaDd/W1yQAfdQ4qgDUPes7HV/yr
bOse6nbEPbWW/7zlGjNWrNnVDHAgljR3ggdQlQMXqjkaYS66ItrqNf5UZjFaEdWHlmxH3j3f9J2Z
6DYkLL8cKeUmFtTLEhGydAnLHmEpCwTNXRGFnA==


`pragma protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-PREC-RSA", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
Vwd6BX/4v1jt6ZREb8lqevhBzxhdwfPllvTeU7vPtxf4/aXFZWhfZ4w9DgjJlDOS1iFdk+WS7/JT
s34PqXVSDZ/dUN5pU44UVF+u65hhI8hxM8SSxrj/NvHfqDLHJ40Do+rMXGE+ELfy2lEz0wbKc+1i
nsFsjL5qbHDGfYuhXot+Jqkd0uth8+fGK+0E8vX5KwC3yCzWGOETMemCKy3GQn2Cp2QqR8L3H2Wh
VA1D9cSSm5PiqRI3fllepGz0rHkW8MjzGhM7+Npwk70IhY314YBuS3b967EoGOtxb8nbCFrWA5+k
4ckMdr6BfjjXRcsFTqkB0ZcPRxucei6ukiXfRQ==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
iFgpp0gz+0ay27bTAfslIBq8DrSQalwnOWBUrAsyXJYs2xRT+gA3Sm3iCGIkoFvXhm6Gy5ThmDuz
4W3zwyztO5QK7ilsuBPJwuxiaFTgBRf4lMFbLxaD7fjqkFHTOy/7jpIoDWGDFrEYXlqH+dYly4lK
0mls5of1QQFTbV6+mwaCHB+P09sjB0wckml/gh9ArlH+jwtEwfSoGoQdKATocVXqv721Zxj1EKla
RUtOw9+RJX75XqIq34xEKuMhfceuAExtUlU7Epzm0MNlONdzMRSFo4NbPkBEgDwkvy2cZcDmIUeY
ph3zNp+ZKtR/uXUW01NzP9DCxbQ+gCnj/Xw15Q==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 768)
`pragma protect data_block
jT2PH+1CsdvQTzwjlYibRVzRI+JS2C4n6NNhQvQFvuiREs6Aq+B2e8nHpOV9CvonEJkrL2Ycmu+K
xls3LItxd9Z78edqtbbdLGHPbBei58HGIx2HwKUGRZqWNjoyqCl1s3MkU2ZW0XpFuFdd4yDrFGeX
m9aFgT6kKiLE9Yjzt4FCjrAVnjTypRu3hGLSR2qDFHJBMKkgJPnntxKmPIinDyKsV8uczyz9tm/Y
vRBtpIIYMKiYEa5X7uIVCVYzhoGmUubybkovwD3aZTXVL941CKXIoISToJOC8NLNLBnK66Zae1ye
rInI0f+xrWjfql48R961COorN7gV8ucWed93SXOhH8jHloyZA9t8S16yUk/pG0KcY1xzu0V5Asq/
ycr7GfOFP3vKe5ZZNviu4SxPQMV9fkBRhgZu34Llx9F8KxV82vx/ebrOuSiwdPxYMr0ckpaqxgfO
bCTlP9LkzRJd1C6vjqqbbsePfDj6V7GHze+3cN2nDbIThsZlrgFCDwkrwEg+WBqKhzXs6W4aZR5L
rEYreEQtPYMR388/NdaqHt8pKdZW3dR7VroQJNXvytyxdS3Y/RuqyGezMOby4Mzx9FWD0AZocgfA
528V14BrzVhSobKSrsf8Wc5E+j9mDYmdLGU2tUX3gK2wUxA7dHhET2GcYOvX8k/oHaoKQchjzFCD
dtN/7XpE28Z4Mtyt8ESA9idO6SXBts//chRCDUsXQRbhf3pYXUlaeoDp2OagWN4ZhfBfbPiJcK5j
JlJ2U4CfgGr4gVHWY7gPplEJtKI/8rfo4x7QW2tiGjVvV4z7ttEiPxb3WDZ0heNOH9yQCyJT73iY
rd4jeJmNSq7wxixzRv/peD/j1r/M17X/vlqGf8XQ3mNKFb1vctu8WPRqZXGQ3I1K24Dovbqw+D5R
FAoPgE02g44NZAPyHC2enXv0Ga7moPae2cTlVb7b3FiQImtANKjy1NBkT3q3jt0ziMzid2w5M6Df
Bfqqef+hkAPCKqwjMFLXpAUf8Pko2F67xVNK
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2014"
`pragma protect key_keyowner = "Cadence Design Systems.", key_keyname= "cds_rsa_key", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 64)
`pragma protect key_block
EqeSQPTUNoqpnK4nVrjuhvpLxxZNDJh+LNRK2Fq61au3XOscZMNjSdFnJGIReM9px3jwUK8mWPLM
l2UaT6RoRA==


`pragma protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-VERIF-SIM-RSA-1", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`pragma protect key_block
R/e+Ejlqih+TSvlnIKg+dwq51h4kWd54YlCFFQy9zsheFzRESBkYAJVBQ7ILZxlIabXB9j1aVu6K
8Z9+zFqLmyMQsSIYA+K5QWIYU2Bb4Y+4ItYi3jvYDfr5JSmpj9QxtO4XgJ2RtY9KcYuWgf5gOHOo
CGJBYbRGF6KlMQNiZY0=


`pragma protect key_keyowner = "Xilinx", key_keyname= "xilinx_2014_03", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
FGR8zuciZ/8sVVU6xCRWgmdIMjc8uYI3UHET2BNcz8IsAUWDmcL0tHzNeDqJZtYR/mBKgtwk0FS0
brG7VZIqCDc60xU944GI813RKjn7gNR95WmCXI3nLE6zFyuG7nEwz+kAG0QnJAUKcptSnEuOtyAp
G00TZRjEgSp1ngjItSeOkXIl9iSRoxIf+ulU26wM4Qi1rpPrWbvRFwbKQXF2hKnapTa5m+QuyFQl
8oXI091D6DZJd3LchJrs+hfSyVU4LRCEhxLK35ziohIVbp02lMS2TU4VaCvVQ5W+PV//KDSpOXb5
rBSZZfGWP10mmogiFuBlCAiom0an10D3fyeyPg==


`pragma protect key_keyowner = "Synopsys", key_keyname= "SNPS-VCS-RSA-1", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`pragma protect key_block
ZlqiLdBEo9HlWl8m539vAKUx5Fn/ByKjL7kE2TM/hrLGdwE3ZteynKlE3PVhPzI/rAjvwS7dUWJx
A1N5W7f+UYJsQ1elVQIeuHDqtbs7RZnlbev9ajKV9Zt3Z/WSjOprvHNPsZgKUtaI8RvScZB/fcq1
oXqq1F7MyeI4y80ngnI=


`pragma protect key_keyowner = "Aldec", key_keyname= "ALDEC08_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
W9ppzRUYPhAWiZbvV6lVSv7DCAhtgisXW0N4BwCumnHvuoB5HOtawlTREf8gdVeyetpMVVyautFU
zrKAQZN0HUwBMy4hmHFt9BxCWeiaePF4YxGslc2uxKsVjTCjrSPjd1ftP+z2FG37n3xJqaJCrDQC
5Fyz1CwqyuLnsCcUfiXGobQLQEAwWPpJ5OMiWCh0pRv5U7ZildaDd/W1yQAfdQ4qgDUPes7HV/yr
bOse6nbEPbWW/7zlGjNWrNnVDHAgljR3ggdQlQMXqjkaYS66ItrqNf5UZjFaEdWHlmxH3j3f9J2Z
6DYkLL8cKeUmFtTLEhGydAnLHmEpCwTNXRGFnA==


`pragma protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-PREC-RSA", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
Vwd6BX/4v1jt6ZREb8lqevhBzxhdwfPllvTeU7vPtxf4/aXFZWhfZ4w9DgjJlDOS1iFdk+WS7/JT
s34PqXVSDZ/dUN5pU44UVF+u65hhI8hxM8SSxrj/NvHfqDLHJ40Do+rMXGE+ELfy2lEz0wbKc+1i
nsFsjL5qbHDGfYuhXot+Jqkd0uth8+fGK+0E8vX5KwC3yCzWGOETMemCKy3GQn2Cp2QqR8L3H2Wh
VA1D9cSSm5PiqRI3fllepGz0rHkW8MjzGhM7+Npwk70IhY314YBuS3b967EoGOtxb8nbCFrWA5+k
4ckMdr6BfjjXRcsFTqkB0ZcPRxucei6ukiXfRQ==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
iFgpp0gz+0ay27bTAfslIBq8DrSQalwnOWBUrAsyXJYs2xRT+gA3Sm3iCGIkoFvXhm6Gy5ThmDuz
4W3zwyztO5QK7ilsuBPJwuxiaFTgBRf4lMFbLxaD7fjqkFHTOy/7jpIoDWGDFrEYXlqH+dYly4lK
0mls5of1QQFTbV6+mwaCHB+P09sjB0wckml/gh9ArlH+jwtEwfSoGoQdKATocVXqv721Zxj1EKla
RUtOw9+RJX75XqIq34xEKuMhfceuAExtUlU7Epzm0MNlONdzMRSFo4NbPkBEgDwkvy2cZcDmIUeY
ph3zNp+ZKtR/uXUW01NzP9DCxbQ+gCnj/Xw15Q==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8544)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
