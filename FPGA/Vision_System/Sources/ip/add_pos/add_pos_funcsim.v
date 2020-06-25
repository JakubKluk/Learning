// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
// Date        : Tue Jun 23 21:30:59 2020
// Host        : LAPTOP-J9ADUE2F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/klukj/Desktop/agh/Sprawozdania/SystemyRekonfigurowalne/Lab5/hdmi_vga_zybo/hdmi_vga_zybo.srcs/sources_1/ip/add_pos/add_pos_funcsim.v
// Design      : add_pos
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0,Vivado 2014.4" *) (* CHECK_LICENSE_TYPE = "add_pos,c_addsub_v12_0,{}" *) 
(* core_generation_info = "add_pos,c_addsub_v12_0,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=c_addsub,x_ipVersion=12.0,x_ipCoreRevision=5,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_VERBOSITY=0,C_XDEVICEFAMILY=zynq,C_IMPLEMENTATION=1,C_A_WIDTH=11,C_B_WIDTH=11,C_OUT_WIDTH=12,C_CE_OVERRIDES_SCLR=0,C_A_TYPE=1,C_B_TYPE=1,C_LATENCY=1,C_ADD_MODE=0,C_B_CONSTANT=0,C_B_VALUE=00000000000,C_AINIT_VAL=0,C_SINIT_VAL=0,C_CE_OVERRIDES_BYPASS=1,C_BYPASS_LOW=0,C_SCLR_OVERRIDES_SSET=1,C_HAS_C_IN=0,C_HAS_C_OUT=0,C_BORROW_LOW=1,C_HAS_CE=0,C_HAS_BYPASS=0,C_HAS_SCLR=0,C_HAS_SSET=0,C_HAS_SINIT=0}" *) 
(* NotValidForBitStream *)
module add_pos
   (A,
    B,
    CLK,
    S);
  input [10:0]A;
  input [10:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  output [11:0]S;

  wire [10:0]A;
  wire [10:0]B;
  wire CLK;
  wire [11:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

(* C_ADD_MODE = "0" *) 
   (* C_AINIT_VAL = "0" *) 
   (* C_A_TYPE = "1" *) 
   (* C_A_WIDTH = "11" *) 
   (* C_BORROW_LOW = "1" *) 
   (* C_BYPASS_LOW = "0" *) 
   (* C_B_CONSTANT = "0" *) 
   (* C_B_TYPE = "1" *) 
   (* C_B_VALUE = "00000000000" *) 
   (* C_B_WIDTH = "11" *) 
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
   (* C_LATENCY = "1" *) 
   (* C_OUT_WIDTH = "12" *) 
   (* C_SCLR_OVERRIDES_SSET = "1" *) 
   (* C_SINIT_VAL = "0" *) 
   (* C_VERBOSITY = "0" *) 
   (* C_XDEVICEFAMILY = "zynq" *) 
   (* DONT_TOUCH *) 
   (* downgradeipidentifiedwarnings = "yes" *) 
   add_pos_c_addsub_v12_0__parameterized0 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* ORIG_REF_NAME = "c_addsub_v12_0" *) (* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) 
(* C_IMPLEMENTATION = "1" *) (* C_A_WIDTH = "11" *) (* C_B_WIDTH = "11" *) 
(* C_OUT_WIDTH = "12" *) (* C_CE_OVERRIDES_SCLR = "0" *) (* C_A_TYPE = "1" *) 
(* C_B_TYPE = "1" *) (* C_LATENCY = "1" *) (* C_ADD_MODE = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_VALUE = "00000000000" *) (* C_AINIT_VAL = "0" *) 
(* C_SINIT_VAL = "0" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_SCLR_OVERRIDES_SSET = "1" *) (* C_HAS_C_IN = "0" *) (* C_HAS_C_OUT = "0" *) 
(* C_BORROW_LOW = "1" *) (* C_HAS_CE = "0" *) (* C_HAS_BYPASS = "0" *) 
(* C_HAS_SCLR = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_SINIT = "0" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module add_pos_c_addsub_v12_0__parameterized0
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
  input [10:0]A;
  input [10:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [11:0]S;

  wire [10:0]A;
  wire ADD;
  wire [10:0]B;
  wire BYPASS;
  wire CE;
  wire CLK;
  wire C_IN;
  wire C_OUT;
  wire [11:0]S;
  wire SCLR;
  wire SINIT;
  wire SSET;

(* C_ADD_MODE = "0" *) 
   (* C_AINIT_VAL = "0" *) 
   (* C_A_TYPE = "1" *) 
   (* C_A_WIDTH = "11" *) 
   (* C_BORROW_LOW = "1" *) 
   (* C_BYPASS_LOW = "0" *) 
   (* C_B_CONSTANT = "0" *) 
   (* C_B_TYPE = "1" *) 
   (* C_B_VALUE = "00000000000" *) 
   (* C_B_WIDTH = "11" *) 
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
   (* C_LATENCY = "1" *) 
   (* C_OUT_WIDTH = "12" *) 
   (* C_SCLR_OVERRIDES_SSET = "1" *) 
   (* C_SINIT_VAL = "0" *) 
   (* C_VERBOSITY = "0" *) 
   (* C_XDEVICEFAMILY = "zynq" *) 
   (* downgradeipidentifiedwarnings = "yes" *) 
   add_pos_c_addsub_v12_0_viv__parameterized0 xst_addsub
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
HoIEDEJrcknLKoYGRfSAbT8vT71uuLoTPXvk5G+hbS1L4h2pWsh7NZE+dUt/l2qAmyVAL9Gkb44Q
Z+w+tOZIKvtt867jlOkaozXYkP6bdrWRRrnwKF2Fd5scJKv/zXFStZfXHo68t1gjrHM8FrTaRfb+
xabXCvQPLmOL6qRXAKImu0g92gTMlcN9+i7GXTWSnfVPeyGo3S4AFkayAr9RCQiv8tS0TtWJLH1x
fYYYsFlEJ9cHWI4MI8n1fCcuSq3fRUqn3tvZwKlLQ+i0gnkMqeYY/ISWyE+aDph559ZG0vVKPdKf
wOpg8WHAP9NKQfuRjbUOdQoJozJ00gjRLpDY3A==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
EFbTNtU76Ls/EEny4BfKYjaTYUOUYj33uSVvY6ApCiqsAafNAgsMoigukofwebm71k7Z5NnH92z3
ixWWD5Or5bpBCy6XEVJHNlVlnKslLcZ+UY0SGJU47WRIa/knNrydvZazJkwKv1GCBs2DrCFIoCDu
Ki5K261insYk+o3k+SlmfsRAEuQI8z8BEkUR2tqcCCtyH3R8t9MIawnFg7vXpJnctn1N+O6r1jZY
z1ZJ4YYMk0LVRi50ZEpKka1fO6j5ndqAKU2QEFsp0YGNVXFoHQnf10wqRgjh29oBw056tidG2u3K
f4iLSlMkE/WP2mvt+FBPuYrN/M70TlRJzqBBcA==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 1632)
`pragma protect data_block
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
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
HoIEDEJrcknLKoYGRfSAbT8vT71uuLoTPXvk5G+hbS1L4h2pWsh7NZE+dUt/l2qAmyVAL9Gkb44Q
Z+w+tOZIKvtt867jlOkaozXYkP6bdrWRRrnwKF2Fd5scJKv/zXFStZfXHo68t1gjrHM8FrTaRfb+
xabXCvQPLmOL6qRXAKImu0g92gTMlcN9+i7GXTWSnfVPeyGo3S4AFkayAr9RCQiv8tS0TtWJLH1x
fYYYsFlEJ9cHWI4MI8n1fCcuSq3fRUqn3tvZwKlLQ+i0gnkMqeYY/ISWyE+aDph559ZG0vVKPdKf
wOpg8WHAP9NKQfuRjbUOdQoJozJ00gjRLpDY3A==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
EFbTNtU76Ls/EEny4BfKYjaTYUOUYj33uSVvY6ApCiqsAafNAgsMoigukofwebm71k7Z5NnH92z3
ixWWD5Or5bpBCy6XEVJHNlVlnKslLcZ+UY0SGJU47WRIa/knNrydvZazJkwKv1GCBs2DrCFIoCDu
Ki5K261insYk+o3k+SlmfsRAEuQI8z8BEkUR2tqcCCtyH3R8t9MIawnFg7vXpJnctn1N+O6r1jZY
z1ZJ4YYMk0LVRi50ZEpKka1fO6j5ndqAKU2QEFsp0YGNVXFoHQnf10wqRgjh29oBw056tidG2u3K
f4iLSlMkE/WP2mvt+FBPuYrN/M70TlRJzqBBcA==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 432)
`pragma protect data_block
5QTACEKUdRPovPtloHAfdN2TcETPai8aAPQEFzjA1LOHJu2LA7uvaLJgZgVMcEJfYHsuKVriyQ+s
X2Pr+v/lO8W0nU/hKjWE3krtFtfODcF4Fe1RnG4dhHVlLOnmYAkKV5jIWjkYEfsGcA4dc8Ko3Fs0
E5ytpN5saAn0zxan+zm/5aAVV9eGE3u2Y2NIl72r2RR/7PG7xUm01NIB02Mp1X7Q6Lxhg4VX0c5W
AV89ZrqPm3jl8yNEHqq2JV8fKCph309rBLn+uZN58VsSL3RXHF3fH2XuLmVybBTeei8BHV3Vq2Nf
ZsgFH8ZhOJmrQVokCBnMX90oePivsNssn+4GQA1ViEqexJ42B+bxUR7Qtwj5PirfBgfoChGjZO81
WTbkRGeMpazwBn0lq5RvOCrBVJouzIGbmnJ9DttK0ItOuehpfCd1i8FEzQg+9/pz7PvD6cWfyIU7
hisQZ2vRK40kYWNk/ELReRP9K+/bX1aBaXSLE12gVM9L7r21yx8I0Lo/Q6aR3+tVXDeUaANIF0su
e6GUM+CDWNECj9Q2NuvMiHcRPyN6dqirpF2GkCDR6XF0
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
HoIEDEJrcknLKoYGRfSAbT8vT71uuLoTPXvk5G+hbS1L4h2pWsh7NZE+dUt/l2qAmyVAL9Gkb44Q
Z+w+tOZIKvtt867jlOkaozXYkP6bdrWRRrnwKF2Fd5scJKv/zXFStZfXHo68t1gjrHM8FrTaRfb+
xabXCvQPLmOL6qRXAKImu0g92gTMlcN9+i7GXTWSnfVPeyGo3S4AFkayAr9RCQiv8tS0TtWJLH1x
fYYYsFlEJ9cHWI4MI8n1fCcuSq3fRUqn3tvZwKlLQ+i0gnkMqeYY/ISWyE+aDph559ZG0vVKPdKf
wOpg8WHAP9NKQfuRjbUOdQoJozJ00gjRLpDY3A==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
EFbTNtU76Ls/EEny4BfKYjaTYUOUYj33uSVvY6ApCiqsAafNAgsMoigukofwebm71k7Z5NnH92z3
ixWWD5Or5bpBCy6XEVJHNlVlnKslLcZ+UY0SGJU47WRIa/knNrydvZazJkwKv1GCBs2DrCFIoCDu
Ki5K261insYk+o3k+SlmfsRAEuQI8z8BEkUR2tqcCCtyH3R8t9MIawnFg7vXpJnctn1N+O6r1jZY
z1ZJ4YYMk0LVRi50ZEpKka1fO6j5ndqAKU2QEFsp0YGNVXFoHQnf10wqRgjh29oBw056tidG2u3K
f4iLSlMkE/WP2mvt+FBPuYrN/M70TlRJzqBBcA==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 848)
`pragma protect data_block
5QTACEKUdRPovPtloHAfdN2TcETPai8aAPQEFzjA1LOtvuWnV5W9cRE0UKhkqfNaenh+1XepYchO
aGvGWbjOXNcen+DQEkanRkNRf3faM6azanOH8cs92yi+UQWSGP+NJ2y+yXpY5h6qVuT37j1rTDnj
1wQ1SkHigsTO6tgklOvgR4kd5V7f9VDfGfDf4ZnnPhAXGdxFe0tXpvtwrircWpmIzHy5b3O1G6Be
pys0LXqEJSj2TXy8ivhASRj1pRIOl2x88mNqP4Phgocwe90KNmrO9VzMx5ztEUbxCuuguMvvTsp4
OGR3y7tGCSQIbTuml3aioE7TtxWSMZyi8FeBXD+0eL3hTTx2pH6chGnTxUAPMFtbGiZdaPggmV17
P1+DbwAiYXFcFwlLFEB0jS+n0F0uCndCcgtD+5Iav/GgFECdWC5N1uB5UpCtUJ2+5IqWqouEOZmj
msbOYyDMzPE2fyF5apKnnjf/GO03ZkcAzTdFYuFlICKIWVK0J2SHpHF34D1UlcKr9TPTxIl+yhLz
iW4lIxxw5O7EdWHbuURQn22gbUWJDuVbYZQ+l8c1ogkusXu2o7etANC6iykqPgVCc7c1FW0pmRD9
621Dn8foxtbQ9yR6tb/F9DdDjdZNGv68X8nH94MDoHJZul7nAqXevzVAKaadmzK3JlFG3TyaOscP
8gSBdqOIwQn6Ip8dW4RSoo1aWSXWhIOhy2hfK/OQpoXYuR6FzAWWi3KXntOQ8UyKefiseREYilQC
1H7C6F1NvtgeXe6ts0/0T9ecvIY63glp756Ysqdj02MEaZ/WYkScPvrLdZh1rlVoOdqCqms6YA7u
cWVue6DanOS6GXL0ohy2RFYg0LNR35W+XpiOpSN1ufbg0bncI4VnrdiJKO2Kyo+RfxJdIxCiKlM+
+AbDUmK+rZvwSZu8IzWSvQYfA2FJvwcNd13H4mI7IwjI3FrlGluv8zrwmMQMfmsrm7xUE0OQDo9r
N79XzeTYgW3BKN6hMdm6y0cKHqT+Ml7HwHQjSWXgvhPd3OM3cb5emWlSxfMRQ9qtqwrmccqJttAG
wXmXGzxvPg+OZI9YXQG88OZX/+Zp5bs7ZkPw0EMAOGEHZl6qScaMNNSijzxfwPunuoU=
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
HoIEDEJrcknLKoYGRfSAbT8vT71uuLoTPXvk5G+hbS1L4h2pWsh7NZE+dUt/l2qAmyVAL9Gkb44Q
Z+w+tOZIKvtt867jlOkaozXYkP6bdrWRRrnwKF2Fd5scJKv/zXFStZfXHo68t1gjrHM8FrTaRfb+
xabXCvQPLmOL6qRXAKImu0g92gTMlcN9+i7GXTWSnfVPeyGo3S4AFkayAr9RCQiv8tS0TtWJLH1x
fYYYsFlEJ9cHWI4MI8n1fCcuSq3fRUqn3tvZwKlLQ+i0gnkMqeYY/ISWyE+aDph559ZG0vVKPdKf
wOpg8WHAP9NKQfuRjbUOdQoJozJ00gjRLpDY3A==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
EFbTNtU76Ls/EEny4BfKYjaTYUOUYj33uSVvY6ApCiqsAafNAgsMoigukofwebm71k7Z5NnH92z3
ixWWD5Or5bpBCy6XEVJHNlVlnKslLcZ+UY0SGJU47WRIa/knNrydvZazJkwKv1GCBs2DrCFIoCDu
Ki5K261insYk+o3k+SlmfsRAEuQI8z8BEkUR2tqcCCtyH3R8t9MIawnFg7vXpJnctn1N+O6r1jZY
z1ZJ4YYMk0LVRi50ZEpKka1fO6j5ndqAKU2QEFsp0YGNVXFoHQnf10wqRgjh29oBw056tidG2u3K
f4iLSlMkE/WP2mvt+FBPuYrN/M70TlRJzqBBcA==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9424)
`pragma protect data_block
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
6byHmwIfCGME7RMSiPUoL4pWQA==
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
HoIEDEJrcknLKoYGRfSAbT8vT71uuLoTPXvk5G+hbS1L4h2pWsh7NZE+dUt/l2qAmyVAL9Gkb44Q
Z+w+tOZIKvtt867jlOkaozXYkP6bdrWRRrnwKF2Fd5scJKv/zXFStZfXHo68t1gjrHM8FrTaRfb+
xabXCvQPLmOL6qRXAKImu0g92gTMlcN9+i7GXTWSnfVPeyGo3S4AFkayAr9RCQiv8tS0TtWJLH1x
fYYYsFlEJ9cHWI4MI8n1fCcuSq3fRUqn3tvZwKlLQ+i0gnkMqeYY/ISWyE+aDph559ZG0vVKPdKf
wOpg8WHAP9NKQfuRjbUOdQoJozJ00gjRLpDY3A==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
EFbTNtU76Ls/EEny4BfKYjaTYUOUYj33uSVvY6ApCiqsAafNAgsMoigukofwebm71k7Z5NnH92z3
ixWWD5Or5bpBCy6XEVJHNlVlnKslLcZ+UY0SGJU47WRIa/knNrydvZazJkwKv1GCBs2DrCFIoCDu
Ki5K261insYk+o3k+SlmfsRAEuQI8z8BEkUR2tqcCCtyH3R8t9MIawnFg7vXpJnctn1N+O6r1jZY
z1ZJ4YYMk0LVRi50ZEpKka1fO6j5ndqAKU2QEFsp0YGNVXFoHQnf10wqRgjh29oBw056tidG2u3K
f4iLSlMkE/WP2mvt+FBPuYrN/M70TlRJzqBBcA==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 416)
`pragma protect data_block
5QTACEKUdRPovPtloHAfdN2TcETPai8aAPQEFzjA1LNsZCH6UhOdrRpWCvDh30hZGwrbvD7WY43B
Wz3u/ud7Br3MUUcdvAUL0c4FwFLMnoJDP3MeP2WHhyEQfiqUL8uqbIR9ArCA1AIU+WyRuxEgGATq
3Z9tT/dUpJfJ/4cIIPWpB3TtK9P2yS5ANbjCjIBsqj6+J8wlizE+1RhcflgcFWcD18bAjDn7Kv/H
ofybIwL3NTbycqICzJoU4ppkfrGZJAOkjCTHnMXJhB8dLZXAultLCLqzkQJxzZKnEG0/yGZT62XJ
luLMT32sLq1TcAuVq73kxCqXKLUrQeFF4VgaL7BIL1W3LSObz0QMVBVRuLwZx6kjKP5jCTwuCAsD
yqQbMqiIBdL2EmRrlXlTQm65o5yGRFVvlTtGvaHgLQ/Lq4FHNGDNZ3dMqV5ughytOLmEAJfgs5YN
dgFl+G7/VK0h+pPqZ7a9fpBXtYim+oHWSZOomV6BRbfGTYxT+BFVsaD5kTYQg+VovGlZHMksDK7/
cGcbos3Z+OJ0q4+3n3HHoNo=
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
