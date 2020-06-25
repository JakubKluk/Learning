// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
// Date        : Tue Jun 23 21:30:24 2020
// Host        : LAPTOP-J9ADUE2F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/klukj/Desktop/agh/Sprawozdania/SystemyRekonfigurowalne/Lab5/hdmi_vga_zybo/hdmi_vga_zybo.srcs/sources_1/ip/subtract_0/subtract_0_funcsim.v
// Design      : subtract_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0,Vivado 2014.4" *) (* CHECK_LICENSE_TYPE = "subtract_0,c_addsub_v12_0,{}" *) 
(* core_generation_info = "subtract_0,c_addsub_v12_0,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=c_addsub,x_ipVersion=12.0,x_ipCoreRevision=5,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_VERBOSITY=0,C_XDEVICEFAMILY=zynq,C_IMPLEMENTATION=1,C_A_WIDTH=11,C_B_WIDTH=11,C_OUT_WIDTH=11,C_CE_OVERRIDES_SCLR=0,C_A_TYPE=1,C_B_TYPE=1,C_LATENCY=1,C_ADD_MODE=1,C_B_CONSTANT=0,C_B_VALUE=00000000000,C_AINIT_VAL=0,C_SINIT_VAL=0,C_CE_OVERRIDES_BYPASS=1,C_BYPASS_LOW=0,C_SCLR_OVERRIDES_SSET=1,C_HAS_C_IN=0,C_HAS_C_OUT=0,C_BORROW_LOW=1,C_HAS_CE=0,C_HAS_BYPASS=0,C_HAS_SCLR=0,C_HAS_SSET=0,C_HAS_SINIT=0}" *) 
(* NotValidForBitStream *)
module subtract_0
   (A,
    B,
    CLK,
    S);
  input [10:0]A;
  input [10:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  output [10:0]S;

  wire [10:0]A;
  wire [10:0]B;
  wire CLK;
  wire [10:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

(* C_ADD_MODE = "1" *) 
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
   (* C_OUT_WIDTH = "11" *) 
   (* C_SCLR_OVERRIDES_SSET = "1" *) 
   (* C_SINIT_VAL = "0" *) 
   (* C_VERBOSITY = "0" *) 
   (* C_XDEVICEFAMILY = "zynq" *) 
   (* DONT_TOUCH *) 
   (* downgradeipidentifiedwarnings = "yes" *) 
   subtract_0_c_addsub_v12_0__parameterized0 U0
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
(* C_OUT_WIDTH = "11" *) (* C_CE_OVERRIDES_SCLR = "0" *) (* C_A_TYPE = "1" *) 
(* C_B_TYPE = "1" *) (* C_LATENCY = "1" *) (* C_ADD_MODE = "1" *) 
(* C_B_CONSTANT = "0" *) (* C_B_VALUE = "00000000000" *) (* C_AINIT_VAL = "0" *) 
(* C_SINIT_VAL = "0" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_SCLR_OVERRIDES_SSET = "1" *) (* C_HAS_C_IN = "0" *) (* C_HAS_C_OUT = "0" *) 
(* C_BORROW_LOW = "1" *) (* C_HAS_CE = "0" *) (* C_HAS_BYPASS = "0" *) 
(* C_HAS_SCLR = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_SINIT = "0" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module subtract_0_c_addsub_v12_0__parameterized0
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
  output [10:0]S;

  wire [10:0]A;
  wire ADD;
  wire [10:0]B;
  wire BYPASS;
  wire CE;
  wire CLK;
  wire C_IN;
  wire C_OUT;
  wire [10:0]S;
  wire SCLR;
  wire SINIT;
  wire SSET;

(* C_ADD_MODE = "1" *) 
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
   (* C_OUT_WIDTH = "11" *) 
   (* C_SCLR_OVERRIDES_SSET = "1" *) 
   (* C_SINIT_VAL = "0" *) 
   (* C_VERBOSITY = "0" *) 
   (* C_XDEVICEFAMILY = "zynq" *) 
   (* downgradeipidentifiedwarnings = "yes" *) 
   subtract_0_c_addsub_v12_0_viv__parameterized0 xst_addsub
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
gt5jyTC2TV96Qs0OcnDrVtNIuT+FadH7QpRi5Pl8PyleMfzSGBX9iO3CnJVBxdElnFbK3/UgB2vy
1ZgSGa40ZctdNponDwyzEm3gvCRi+pihfzfEP3Y/kDEYwWX1BkM8khdufEDkx5HwSIfngxvk4Hbg
Pz/i03qIplEhmH16UT37cJDDnrKB6K2O0nlDwbDarh2VP3w5SLdJXX9hzUPBrVQgNItEN8regRI4
qSaWQBEeI2DBcEy6NyshYPSCdaHoiiJVMbjdyureAX7wSp6CJFUFzZQBKlmcPWFZx6T2B+qDGZE9
hpLYhn0fyQBEQa3sUZOvVOxWGZkN7uisALXmAg==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
A24hGuOTPJqylNC6olmCkVzXOeyAsd7TtOdYjqm30ZQIKgSFbfeu6o2JTxAQFLMvsJaWkjIGjWld
pk8D3OtPHDAz7bFdjjid0aEGUB864qfgdiKnIPQ2W2xL6YffxCI4nPZzIjO6IOOiNlqQOCFoBRpu
rXSLvDoodonlxixOJrGkCWqGj3boPrMIHeRUo7LkeKtN1XO9qbuI5HRS4rKdVvz/f/kysfdUEAv4
GszzjM/dDkzut5ah4tHYdKed/tZdGqL36DgeYJtlcqrMM2GJ2r3D60Eqh5NNBo39F2xUGrHlt72d
liZsBaU7w3N2O2Sd415GoV8hYO2yjDOie9v+eg==


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
gt5jyTC2TV96Qs0OcnDrVtNIuT+FadH7QpRi5Pl8PyleMfzSGBX9iO3CnJVBxdElnFbK3/UgB2vy
1ZgSGa40ZctdNponDwyzEm3gvCRi+pihfzfEP3Y/kDEYwWX1BkM8khdufEDkx5HwSIfngxvk4Hbg
Pz/i03qIplEhmH16UT37cJDDnrKB6K2O0nlDwbDarh2VP3w5SLdJXX9hzUPBrVQgNItEN8regRI4
qSaWQBEeI2DBcEy6NyshYPSCdaHoiiJVMbjdyureAX7wSp6CJFUFzZQBKlmcPWFZx6T2B+qDGZE9
hpLYhn0fyQBEQa3sUZOvVOxWGZkN7uisALXmAg==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
A24hGuOTPJqylNC6olmCkVzXOeyAsd7TtOdYjqm30ZQIKgSFbfeu6o2JTxAQFLMvsJaWkjIGjWld
pk8D3OtPHDAz7bFdjjid0aEGUB864qfgdiKnIPQ2W2xL6YffxCI4nPZzIjO6IOOiNlqQOCFoBRpu
rXSLvDoodonlxixOJrGkCWqGj3boPrMIHeRUo7LkeKtN1XO9qbuI5HRS4rKdVvz/f/kysfdUEAv4
GszzjM/dDkzut5ah4tHYdKed/tZdGqL36DgeYJtlcqrMM2GJ2r3D60Eqh5NNBo39F2xUGrHlt72d
liZsBaU7w3N2O2Sd415GoV8hYO2yjDOie9v+eg==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 432)
`pragma protect data_block
IbtITHbqJTmGzKpDZqppX9R/WFouuya2fk4TI5Itd0q3VnBTFg63TXAH6ch9E3Z8TRHsOmMwZ2UZ
ySoEoCGXYEBGFJvdoB0EgalkXfC2WeooqQxU80/eoyUpoYuk+4lo6JefM6uhVO5TzWISSJHw1AVi
tDGg1fOaUwLiK2Nwb+Lk06UcEtvmsSrbaZeIYHohsSIvR6GS1kjy9Q0+OLqUYG2KF7HxqUxN4Une
3lmIqFVoLeTAFQv08/HtXu8hm/CjNZnY2IJXm5UsvMz4l1YzHz0/HuBSjOCUZC0EUme/U6t4ytJn
CkNU8GMGyz8apG5zrxbI5Xxul6wO1j4SxC5SEQYgS/ED6kSNK4fIpop/teYULths55l3ojr8InLB
tMciFHIVzpay4cVHDGBwYIE5hOQ45xcDGVljMKT33cjUXtnsWrVre9Cf/J9hd8hLt9RmsRSHBkji
qtF2J8RLMTzPPPisiL4VwtXqJGy3d9MV1ITM1g4FLNL3v0ooqTJKmJUK5KdcS+jIeqjOvhmn6AoI
oXTVqCBWCQ524u4mrsIR/4sIpSy0ltva7Fl1U2YTDCca
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
gt5jyTC2TV96Qs0OcnDrVtNIuT+FadH7QpRi5Pl8PyleMfzSGBX9iO3CnJVBxdElnFbK3/UgB2vy
1ZgSGa40ZctdNponDwyzEm3gvCRi+pihfzfEP3Y/kDEYwWX1BkM8khdufEDkx5HwSIfngxvk4Hbg
Pz/i03qIplEhmH16UT37cJDDnrKB6K2O0nlDwbDarh2VP3w5SLdJXX9hzUPBrVQgNItEN8regRI4
qSaWQBEeI2DBcEy6NyshYPSCdaHoiiJVMbjdyureAX7wSp6CJFUFzZQBKlmcPWFZx6T2B+qDGZE9
hpLYhn0fyQBEQa3sUZOvVOxWGZkN7uisALXmAg==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
A24hGuOTPJqylNC6olmCkVzXOeyAsd7TtOdYjqm30ZQIKgSFbfeu6o2JTxAQFLMvsJaWkjIGjWld
pk8D3OtPHDAz7bFdjjid0aEGUB864qfgdiKnIPQ2W2xL6YffxCI4nPZzIjO6IOOiNlqQOCFoBRpu
rXSLvDoodonlxixOJrGkCWqGj3boPrMIHeRUo7LkeKtN1XO9qbuI5HRS4rKdVvz/f/kysfdUEAv4
GszzjM/dDkzut5ah4tHYdKed/tZdGqL36DgeYJtlcqrMM2GJ2r3D60Eqh5NNBo39F2xUGrHlt72d
liZsBaU7w3N2O2Sd415GoV8hYO2yjDOie9v+eg==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 864)
`pragma protect data_block
IbtITHbqJTmGzKpDZqppX9R/WFouuya2fk4TI5Itd0r15Mr5wqH9d/oBhref8l23LffsVR0q/Ubo
rFZoeRuPkHswmfhDyBcE789ic5StqCq4ls693JG8SindWzzI7SmegA3dML8M2DCqyFdaNJ00ljTX
htVhPrkD3BDJK6PU2Mf+/gYm1dJsqVx8Z+r7rel7AQfCaG2TSf+FKW2csxmrRPWiWJaQrm5ri2Mv
qUqbnTJ6SI6C0KaC+CAkgNZhT3+KRpKsDJXbVr3S+J5P+xOcx7owHagQnioHYbD8EN7WIEACpB00
OVd7TcZK0yccaNp/+jrajQsVmQfdI0kguDxdD9Zn917JXXqJgv3HRsQ2NAssZYAJ0YLuruLQvLZS
o4ONQ496gzy1cQ3pVE31ja9A7vNOYhdecArELHJuyAGJ/ICfzK8n713F+E9Fbcq2Wmlyodrv5Dfi
ZqG1rUO+M5f5SDky3H4/xzqlhmHRmphvhgCs5dQr6scjOd2hn6EutbES84Mfsiof31hsct/iu9AP
It+64jw2b8G6WduEKjtF6p+NqqgLXudYn4wh/2dI4HOV9cOsvc31woSc7A99yoRa7aMfewhoQO6n
F3QKrX8dSSf3X1/Z5S5u1AjIfkmZ3RggK7TZ3l1chs/eo3JOjHpACUWgYBARe6/oJ/Z012I/IK5m
wzK1yqYlo1268hzYaLorzEJmZqLz1ZtuC+Rk3EiEWxxKbanNvQX/66uwgMb8GvWtzA0+hSNv0BCR
HHIYrFxkasyL5NgOPTtP6r4f9JxEojbxA3wq8HcN1kDNHt4HIZ3KvhacxDySGmRBZbgWGCLmemqL
owv9fL/WVgiRzY6mHnutppjsQ5Rz8OhduDY1pW47u/Zfo+G+itvVl6kzj43GWwTWH+8GV4Peaqq6
ShkhwLfZmQ4EhrBz6DAkcyqcVuifaqgTNFHNUqvP4arUzkLe5UgIoZwBzidS8rySDLaSY0GAGSED
AGyHnc+BD8MgYPw7cUJig4zmKTPSlBYYxEdDU5ig5xv4uXLcTa9LT5dX+RX2+kloR6TnhA4XFWdA
nTpk3vPwedqL++W6fUFCRDU5bNAaFCE4cn+MlenItw6GVfOpeIXuQ9WgrAreW/1YnWSNNgN9koGJ
Xyxh/ZPRsc70
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
gt5jyTC2TV96Qs0OcnDrVtNIuT+FadH7QpRi5Pl8PyleMfzSGBX9iO3CnJVBxdElnFbK3/UgB2vy
1ZgSGa40ZctdNponDwyzEm3gvCRi+pihfzfEP3Y/kDEYwWX1BkM8khdufEDkx5HwSIfngxvk4Hbg
Pz/i03qIplEhmH16UT37cJDDnrKB6K2O0nlDwbDarh2VP3w5SLdJXX9hzUPBrVQgNItEN8regRI4
qSaWQBEeI2DBcEy6NyshYPSCdaHoiiJVMbjdyureAX7wSp6CJFUFzZQBKlmcPWFZx6T2B+qDGZE9
hpLYhn0fyQBEQa3sUZOvVOxWGZkN7uisALXmAg==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
A24hGuOTPJqylNC6olmCkVzXOeyAsd7TtOdYjqm30ZQIKgSFbfeu6o2JTxAQFLMvsJaWkjIGjWld
pk8D3OtPHDAz7bFdjjid0aEGUB864qfgdiKnIPQ2W2xL6YffxCI4nPZzIjO6IOOiNlqQOCFoBRpu
rXSLvDoodonlxixOJrGkCWqGj3boPrMIHeRUo7LkeKtN1XO9qbuI5HRS4rKdVvz/f/kysfdUEAv4
GszzjM/dDkzut5ah4tHYdKed/tZdGqL36DgeYJtlcqrMM2GJ2r3D60Eqh5NNBo39F2xUGrHlt72d
liZsBaU7w3N2O2Sd415GoV8hYO2yjDOie9v+eg==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9472)
`pragma protect data_block
IbtITHbqJTmGzKpDZqppX9R/WFouuya2fk4TI5Itd0o8JXa0pQmQ1kslhoFIdlvphi546oDvPw7e
NO6dmhNInSkYCH/kgshFHJL6nokUkuL82VFaNQfo8LC3VAeOWxMUb4bc9EixOb83I50UhZuMomTS
kvjdi5XWC1bnkAfYZpSzDZ8Rw8WTtjTHSDhD1AH+A8U8Ji+Zg/vrf1PjIxrFyVpHrALrgMuC5eJN
JAFc77srdLk9JR3yBtkz9PjXUsxpKbluodMc800Zqrxe10ZXcJeri5ZixldNVzUyRFtgpZvsJhbx
5GdXMhnV4DAzsG4owliMOooF8ju3xl7OGVzuyEIJ4ltACZEIHIxAy1uyni7zcC1dSXaxwWQDjOWv
H3AweyaG3uaWVe0VbFTOLQC/mOAptWK9GBrOTiCQmfFVwGL3hIFVgefmmAqqiKzcUNx/+0xYH0Ov
02xt3Y7THAZZouCvY0sfLwLJKCgnLPKzFHB1s0m94dkT54eI4Z17iAGm1X6dh/QKct/1Ti6T5Puv
51zSr/lEw4WDwyLmflOSavtqnCLt4YybDTnsnFZdTVuVxzL0UOuzaCu+GwpGLj1mXIIhn5VQvifg
KeSbq2XyObVTCQZDZHF7tGQd/pNHE3Knn0zb0Es4PaHPSvhuAy3zfDhC7EQLkkSypkekti0MN2Mc
mv/Aye2isV1LAJzEc+QVBV5H3qvNonyxjIpoZqxFOiGzdk+OpEu6R9QO86ObNOhehylzGjtHm06c
o8JmC7W8yZnPnNj/G5Hkvq0iJaiY4zvqugMiYtKY9iA4I7x4JSd7ke2DISsrB+4MVYmaDhREL6PJ
qm6mqyPWp5akNdzRt1rll55UGsABiZtWl8lR6z1V2IrUsPWFPszsLG0gNntTjgmp7/wl81sAxk5k
gWMnqzOeD6cRfikeMoZugrmKU4FBt3BCOEIYOnqC9y6krlKaV99Ag/4a6gDdAv1LRtuIIREM/Afg
r7ZyHG2MgyHlluAbXzyylfFuTtm83RpzriNtqMHVHMQJdu9CNMpWqBbNUD57bSimWndAflbAR+Ct
00+xTQSlRY3ZY2cA8b0k0yUjvmtIVx4FHBlGwY6oT0Rh89J8qC9B/jCGn953TLKWGhLPLoKWL75r
ZDiPHxOBhLduKLCQlF4mQGqTkMeDFi+uCE7Je7gqgPhzui9OIOXjFe9raojj+4Ww0yQiNAkzLrVe
J02O9eg27L3YF3ml05akF7wo0MC3eqGOD2oZH9pyOj50oV2/6aRrJPrf7N6sKxWfBohJclnFIy3R
43VoQ4esYUBENW6Zepg8WCwoSzfWI4/8OkFPJVnukwIh4lMzcIBVdQIJfDjNVg6GqY0fUVCg5DCE
H4vBdN1ia98WGpD08wdx3y/Tx7J9/pA1WWTINOtNdqK11/bHpldDHtMg+yK7PfUP7AlQuROFd967
bJJfNUrzKys6G7RO3mbv1FxZHPrJIEXw+9f3x/P5Jg6/yu7LikQ9XMZ7YiatrbNvO1pFLixb9R54
WEGt6sh1QggrxB4G3I9bx4cJKqCFoMlNbWhW0xWHLyXwFZL2N5mp4B5fEQpTPzxuSKbQZMg0mwA7
QKRU37EgIo1ePDzIVbsEVL9SC+kMMxVZtzAZYvUA9zBP63qiGFZF/FIV4jsDEBWxQEaJdmXvM3A5
ucS1OQ72MfvOb2/w1LIr2CsYjElA+n2ViaFcppDjVFfhrFxQkQCqPx29q5QBjJPuPU0QnB8w4xdq
3SukbasKlWUGu5Hfu8+CIU1EHAAdmVpxMD3/ZgnPd1yoFvFBVDnD9mCoV/42knmW00iFPd4K4Uil
gJAXH8o+Pub9aQ7TKp9/XY3gkc6a42eCLCE57NWpiLkG6IG7kTQTMo2bwzdz6LeY1ir0OyzqdoqC
AfH/t7jiaSFrjDywhpKkn/KCN3McQYvXo6E1G/ZlaOOn8dR0lZmOk4boi7OxVJ3M3QxEANU9NvBh
qu+w/9WH5KUVsucLiU8p3N35/ARYxiMk3Q+GIZzr712S8zfHpVsha0cMoNdvO+/zOeNOcstf30Ph
OWjTBEGPlZUh+ZWu+UPmEMBOTy+4d3pdaxsaj9PrnA/m6l1JFN06a8QqWhO61k4Mo337Np7dU4Bs
2vm+F09nsEc7JvVOz2N9o5OswrwjSINy9v6I/e5jEkNZWWgDCu9B6wPH6CKbIyAWjU1Cf+e8OWI5
QfHzmmepwNGYPhToi3ReYZ96K+olVfNtipvs3nkx7FwNdbn5cxXdV6faE7JYwo1LUARKLaH1J/5H
Wrt5u6BHFcgQ3/Yl6NFtTXPgtAo/VSuxHdZ+vqrBI5FCwERE6mrwxjBH500dv3u1RWc9pzOlxGNR
TGMVcANG8CcYaUh6hvP9U/FIfBcYAEvX63UhVawcHOEU2TG+Y8Fqehb7nvVDbARMm4PuV86mWFSz
zGjn62w/Khf+EOeWJe/QLP1eGcq/7CFJU4wbQWGnBcdTconRBiAnNHM7U+/JohV/82ObNsF0GNvt
Xc/zzPdzG+fGCcxRld04WgkzzFHixx/ml6gxcqInl1GMFCb5z6DGXKIsRuRqXlx+ssMEHu3gIEKd
pZ51cEjCnj2uZOtpQXTykx8vzQq3sI6KwoM43HlHk8gDt3I5gsHoXz0ZCAUZ6m7gScLaxJ9c0qj2
1xyINJjEgvDpPrmDHMMjpjg6lVjfuqF6S69Y8/i74JgWXaatmUB8RLf4/lkGRtoY/owu6Lejsbbg
0vqwrBEvVmyytve9ABFdF422L4l9hE6OubRttMuZ1I69F4Nb5L4Tdt7+O/HQ7brwFodOGL+b2svY
5FIr54rGLus1reOmA8LSRFmlerwXvTmj2SAJ4NsWAqv9c8cK9C7D5huneLGbqnO3HoGQHjn5fLzA
DLQKRePzC2vmGYG3kTdQcIHl8y6CWhBnb8IC6OzxjsY4QKHL647/Pr4+CXV887URWDoeEChpnyDV
kjsWXscGSL0aSEY8E2Ffv2St9yb1vdUri0x+HdHtORvYr/N3RNxStIha6zDFouYHd0T+535WlaZU
kCCvjSPjrjwHjpMdu3NLHmJjxTw2JixXrVx2ju3O9miRsWs8bhYeFOFYWe3/zaBQvMg/T7v+bTMw
oTeZbu4G3Q2P1zEAgi5M5TtXhcM0wFc5Q6SskBhd5PjSV/wUe4DKaZ6NotFjTZSRMem3jciMpltc
5ZQSy+3qSg2b0fuZ2/N/NQeoqA233SCv4RW7sN7C//AOii9SA2HsvNL3fznWxLtonxMXzUJeEsnI
GYT/4Lfb3gNzHHHnJ5L62zYHrOhizDWvOK+cNBwB5AybWNDwAsvreml7SqsLibLPmlgsQ2itDqQD
iKRV/ChPBjmidQoubsUybv8zlLoxgM7N5rKkPQ9qOIgV6GtoWVuCR5LNeLzr4bpfiB2Cr6MGhpvt
/qsGKzOiK6UrtZohU5N743MIIl79E7rhFBWER4jgIwtKNpBcDIUzLqN18lpCmPjHGCQfNzxtUu5x
afPnpOzNt19ZphYDfUtNG1vzgl2P2VxYZGoa4ouV4neaBTsiyGhdZ5nQIPs42Qm2GVddb/5gxtKQ
96rKICxHfaS/Zo99IidjxxPiFp+DsjDWzzjnNQECTUzYOzUUS4mbGjhTb0leX30g/SNm57ykZCIV
q/TSSfwJy6Azwg4F+z9iYBxn/m5PLkp9gTfCq5FELd8bM5Yaq+KERM9X9ZzFspmI2pNCWfmYETP2
1AcAXWnnEpqAIhjUwZJHciSSp2m2bN3ciofQLX0GvPnXgOgPAwqVCvxO4baFyqpBc2OGQp9Sipqw
h9caQh6NcoMHdlRji9qZUWVB6+3SVnt1QD1CVHFYBls62S8QK1YStVaVH8sXS8Y5wp1LduHsiVLN
A5fhEsOYJURv7gTwDa258YO0x20bpOfxBRyg5UlExNNkmX2UtBg8l7QaT/KcYMk0CiTsMTxQt5KG
Bcg2u1tpLuJD2dkXruuFPxWBVeVZITkZeCdpFTPslSzWUGg26yQ3i6x3/Xyf8QN2DUfOMmFqjxKK
ciaXVy+gTp9luCtNXZll0psQ+dPfZ+Ts1gwSJo4I6F7o/dXTIgbk7O8V2yePL3SDh6GvH/q+NTha
UVUvwMXBRHd1Fcqy98nvUSlJxrRG4Wqoou7p6n5l415FZaZ+y/bKeOExHUS26cTzERmAm2MThlOo
tZQO4x7dc+CdgFZ6vUKucWr9QSSx6BSvHtS/uUjJTVBPpt1zkvUvpoE+tHqMMRzGlZhZSxn6sHhz
6wsrDAZcnWWUVzPFjPXmvGcful/TOEfGIGzLEMozYONfSE6tomioyT4vIe4hGsS89V8MHf9//hdm
2v2gAFi+2wJpEcBIOl/gFUMlsDD7HS7UTIxqWhamf6UR1qHvhbDDLEp0N0dhT2jKuSZINBEEknEu
fnIisC/x++LIY/c1dg4Srt3QxvOEAP4sqTGcubiy7k/TlHl+0ok/YLePZ6uvvBCq+PaIySM32KP/
SQ+zggrJ0bjawB/LqrwhPmJorN4fsOidR3LTn7eS8ruBekJaTvlJS+IBGhLG3xnajDLgynNg/hRe
EdAe2L4ifuihx7Dwt4awZPugaHZBqWj5irk0VqtEPOAWtIf4zLu1nlUVPfVnmhUyvFypTk5zedPW
hg4YuyZcSm4LtIjPT1enwECmzc89yLjOpePDMZW8OlBipANwuoSIREsTsNwCfWObwSRfFO3ZoF0N
hUfOKQbF0h9IXW97n94hJ/QPQtpRwmVvvflzKSEdvPBakrHbGIMMTWAxLbIhMjLYgANM3+VoPk6A
ij2E76gUZFP1oow/WlRjxQIQ+LB1EtmSOEgOSAV2k/42249JduonCPNavl1Moel6xNmlvYMYpFma
2ZEOOZM9m+dVhXb3MmBzqrVQb1F8oRpyPpnfFEz+Vw4mQSqAFUvlaAWFLhcuwHtwPcrGcDnpgNov
nrs7GXA4brdjUoN+/iwjJqJzt2g2qSjWS2njisLnKSppzP+Q7QFUoV1uTM8Gj0m59+FGbcQ85AyI
oW14i/jx2uySN0Pm7zBMSNYZU/eDqwucUwYw3scRErGl5mrBEngvlg97Ve3sVWERw3eG/vVsY7PU
ilOleU1ARxZRi8f8l+bZpcyDfYvZq/zO5XBBXFwUKQwzKz1YXhRU+pJsnVUkxs58XoPMcvEIMR//
/KLCV7RFh6365lAb12pIUTZRgPHW4jyXEyyGMA80R4WF5pgiF7AGByijuSND6KwMQmJy5yaJ6z/Q
e0Eif4ssgpVafuk17DTM4ac0ezz/I5NcoQMY1WhW6ZaEb0upYWBcOGNv0WCyX+MUYqxvHMTZJKmp
G/2fnytrQ+WROVbFl0gwdZrHb2dtmnumzKwdIwBuNfg14DZ/NWNvHFDnsZoDRd9dd5c4+F2pcJqS
BewVrW0/YHomtEEFpsaHnFJxyCvqShAmb5Q2Qcd4PMXwUIFX4VcNsJf4zwZQ45UtfXdvRNfuSRv2
6roVOb7x3qRNzYt0m9azw7wmAJa544LD7T1kHRrht3Z6+4x9RHUwuYoJ56bYfBiQ5XI2qX2hi9Oi
0TjPfe3huJE6YRivRDNO7kV/iMG+a6RB6Ev2w8HbkjY6gtobkc7orwzh5C2BPSUdtPF2dnZqpEc3
uz/VMLOQI68S7s6NwhYAlHocjgjWvMV+1gW8pcaSeYgkfkbvAWtmGaKUxEFH/8hOUQxcbDcs0PaX
7BEdz908I0ipJ+5/BGkCAN3oj6TU3hia0i6rIU9/p+C3xQXd9tYmQU1hxdeXPCY6w0DRB2zsrj4X
fqHUUOLf4ivssTBGyAkGXK8xylZkU32tT0/1FBsyKdZNlly76H5JEM2jnrxSJk1Kel/mbxbacQFm
eYwf6p2niPnNZXdd0zcddl+ePZYbWhE1sANWAnji9kcB9Jy0AHyeO6rAfvzpHD67fNa2OMIocF6C
FlJP1P8O594qvClUuAPYx1TMXRWItZ1mWz//dU10G9xSeQouBxUwGT/Ijmot5rp67JbZJpJ71mn8
Qfbl2DueA5aegCWqOutOSJIEJmaroXjq79cxflOHix+DCyzxuLKAjgDK7/BVuwnuq8ubJY3DG4wh
TITfTULS8UGisDzhiriy5Do15fw1onxUPgoW6wUUeGM3qL7N34dcSXFzHC9Dst5yJ6dhsbv+xSPh
wsXqGj/1/r981LYDNTicY3GGaL5fAgWfxdH09j2UwbX5HZpyY9dEp7UxTLkDq1xKk9km2CgkORhs
F3KDw/SPty7JZsr+MbZ9Yh2hWHdgzEQ1Cfymo9uA9qoZcT41xcnbm5iZGRvENDs10OZy67e29fv6
vmJkHCo2hfjGGG1xP5GRDHsOX/X1vQofX8R7j1n7uPJ/6LhIubvBsK/kM+VyzL/9Wx1EjOrHpPIH
Jvws+AUNoKSk44a+jWpyG6x20aww1qwZgGYC/8CA1giSCLJDfaPD/wYSql40Cl/smbqcYdR4cEgz
d2/qWUIp+p36iTlqeEzBf6Ya27WSFrR05iR9E2qjUwFWrInjpoL+sqDx08PkvGqE35NtchOqyUOJ
QS1gRYjHB8hyHG7HSN/aUaVvBHqYwsfxpduZ0cxA1R/XiMRwOWT6nP+G+m94j0dJtsyKbUry1wg9
O64Md+vQAxvTYiqnwClkPJWw/ZRHMjF8PGbi865OVL22iA0q093/hGAdsM7fNR26MC85dva93y5Q
i82fcY0ZVhsQKwSIXyveD4Hitv7ucrOXWDYPwV9WZ4llneSPKaZaljZw6EF0GbQgnOoxJCO2Sj7O
YuC8LboA1jeXdtrcvk+2LbPBh5g2MEJkfdYaGQmN1+EytZdjkqnZgde1Nx+9sqJ0lqRdvGTq+b09
cmukaNORPDt933HvD5cEd4w0JYRc/8ICJ6YRNBZ78leu/wuyEcyTkIUy+A3Q3YfMdPpnIlOCC1pi
VZh9E9+jYFX7Xcovu0+JTpIM4UQAeXGcrjkXxU6GhoQP0QtpuaaCAy+tiSfzgrPEkJ0veeLBTPcR
qaWjPcCU8We4O7mDlxG5CgasLKy7XIZj1k5eRHBZroLpXBRDo+wYsMBQP7TeGcTF73gFq9IUPSCJ
NR3dOiuWaQWo6/HpiD/9NDhRy9SJCDIVkA5dzXy6q8UYVNFjOOx1vSqGPHjaq4WF61s4QHcWmilO
R53jqdvTo07ntH1NB+qL4dV2V4Bc/SaL2zB9gDZvo3GywQrNgEvzmRu+wKJguI3GA37ZMVnemgSH
gldBmmilILGJzH1M+subaGvJ7pS3o6F6mqP+qBx0Vs/WvuW0eprVfmgLO2/6QfkOSaVkIeHwGtr9
xfss1IBO7st3T3uBsTFCmXaPpFsgjiu3oJqzlHAxfAiqC6laPxtYEpnA0ql0EhyLYE1tCVi65CB0
sheg2WOoF9oT1EgwwRWLL6onCvPiXpBi9GUB8en7vQ7GnQJp1yW5xwFJV9w5GzrLWiGYg76Ob6gO
4/lli+3qizhioTVLRK0l7SfxcEdUn0d5IDOi/3NLVPq0GgdSVOmGo1pp++jK12JbYuL8jEYrHobE
Uqe64fLOXFSJbNZaSdjb0ac7Zj+bkAKH+aKUcEwx96Yfm/nRwaSBcZYuCvzZVkAE97NkEfCUWwgG
wgXeSm5kutqrBn0DJ9REGWedLS273Nf/Emzi9TxIcxX2aoOY7n7t3ecKm+lnZBfztLDuRVu7HAYy
xqgFLljwywBAdnU6l7kfip/EmlmBHRrks9MULmA5ZZJWn22o2Xkp0aFDNA/AcUP792kWvV+XgGH+
zr/PGDsdJiH16o25Tg0yx+rdu50PjrxqS8/y9axtPE4KxZMGFw/71NxRwNZtmqwZojKa2+xLzC1S
NvgdxYcpx+Ay7QbI+AsmUoIqM7CrpRq7jD1FGAc7yfedyxEFZTZNzQ+JfCMS8k1TEfibW0D1WKYZ
wfh7TKsyyfUU3VrDgb8aZwCjhQYO7SFaTbdhZx2gEQOv2pQwScVzrAfSbCMPwGQQxbi5Gdu3k09V
tpfxRkSARk+JSteK3U7VFcaO4LGbppfsFcPspc9/DufizK7XD/yqxtzUlY2k75JXiqiJ/HGcvhEK
xezBYJU0X+k6BKB7qdMf/KI8M8THE/dHGmBzSnv/HZxogByslTXXtn19mVfTA9sP/JSoU/zUhorz
eodzK0IkEOKKBD1f1Y4q1cBk8uWDtqdJuCfDjsSyHWcswAVoqf6zTEJhmhnRl8mjgWX4nfv6AQs/
s/hN1gK2K81CFaCkSrRgqQXj9CQkgc8MYdqTyomkLrqpkD2AyrLqTWVWPeWyeoEDSeJWXFsV69mB
BMi+8A6C4QZFSB+SdOuYfsNZL/j7C5Mhjq863H9FyFevMSpyZUipzK7/5OxsTFYZiCA005h8qcFv
BcM36Wpu/Uz+EVHv6/eSJtgJvxk2B+eWV6b1F91u52I1i3vy0OxfN3CVgLUrWKnVAvWpB6eIHBVG
4THLS7WgLs9ZqJHWtyrWWUbroqlo3ERA4N3IuGLgf5x4Zd3MtGRMYLirRRwWvwByrJbY2U/GA1wq
Q+KPp3JqYHgCagm8g42R6qaVJhzUje1PO+i+WVdqMR83k57REPfOpCE6X+e106re01NOX7mJ+fxl
kdSEovnIRZSsol2RD0hCMut16bAYFq2FYvk20MMMDmuFoTstFXsyCZ4+VbqmS/Avt1CA8cy1P7VW
FAcVYBZ2J5XO2Tej/mjeLQrq7ZnAGuvS6HSc/Zd+dqg7iDaGcRsbT+rizBDHFQMPmkIomRmYCbOI
76GPAC+bNROvUXIN8AHU7yEs9sGIiKmFtKyA49qI2bxUd4QVkXVc1GSQJkWBMuTITCRofsEHEYfh
8Jo4it+ZtbUA/msl0nIA2CrbB84GqXqsINLSB54L+BfKSTicvFK3/J55FtQZ91hBJW0SJdUKyU44
piRshoaIdACpM1I4i/fDA5CciiWh2TUx79NRIOIqL/Ofpjh19B0PU27SElO3DTs/Q2o9RKe4x9aU
w5pmWEc61TS7sf7daogF1P2rjHKXJYATkRWXRFilr+pVfNff+s4C+yV6S/D57JdECh5JI7tutJiR
2X69SsCe88jz/RxokzPFkJ0EE8ExYbuL6G5IEvk5DgGLtaRzRDCWB+ssxVGaHjY8lYM1G0HDg8Tc
ZAg7gn9ueUDT/xfrtrlHQamNa4nMcMLBbOTVGMNvOXVhkOHmqAITUWWbgCZU6C6MWI2/MDQAWh2h
uA3gGdJLTNnxpOH8U5z4W/9KcMSoE2b78Dfqm2p6tgmonaEucDqb0RJCJWOT/IcPtj93I3eVvyv9
bKixmuhl+gQm+WffH4h2TS9eJP0lT1HtVWFsNBnps/plZdcePhagVZlL/LAFRXiySoWJSmfS8HUQ
dKji9a4ihLCutdv9TX1kmC7weC8we6UFdaTuDbHwKmA1CCmluNOxs0iUnfvhJE0tmJlHeHrkZTKt
+UMH8Kr/X7b2Y6tZ4DDwz3aS9iRvWN5ddxDEn8C9tNvMyeQ1NkhdPrKTA99bm8pzCrGLj2mTjqdE
+rwIxIR6uog/I1s1F3ZpAGoovcY4K6IBpANzVvr+sgU26gMP7UZgMxn3+V9nH48r8NArc6Jwg5xY
Hh/Yb4WEwqMoY9+478hvK44JDRyGNSRJ0uutQv+XSEimo7boIss5DwPU+hleVM/MJ6ObMPE4z/X1
ErIkOobpS6vS2i8Ei0AxVMz5p4/u6tcU6Q+shJ8lbotKrnl5+SJwZdk/wdw2CjdpwgbxHzB7Hleb
BHquqLfY3RVuIWx+yeEZW3rsN4a+fxi98MgfAdY4Evj3O2QS+cjxLi5ep1HMIbl7orAnP6FX/VBI
ME1cYf1BlPryPtC+33B8FQxqltxbI5wG4W+WgAVpdK5XDvvNgziihjVkae2gHcqQM1P5jUZS/RWk
9JeL6ReexFiVLYIkTWZu04qWpIBJH+qiuFpWOaVGRzOxQW6uoSssmxG492aE5sLwcRToqmyAFCWw
j/EexJMY/gbJgr71burbdPPXt+3W4xKHJ9fJBQzQaAtx/mUWAxFkvVfN7GoAcZqu14BgYr58q6tM
LXPnB8e/mAJjzTRejATMs6WUTF56leOJjVVDGYzsRXrUSmIGvaV1ASSjIZvPxHnLwW/bdtotJ1aN
BVdpgf1Otdkcbvo/4FQahF1wQgFKp+/QMozQX9ROW9CpZeUQ9uJqWhCFJZgtiAB6279sYWEeLGUw
Aj+oDQ2a/f6AjRIrjTrdbjPo6ZUWnoeggP9EBbhZ3+O7hqtYhrJtzSwamMGmxFqiLwKrcTyXxr3t
6atD2YHc/Wpz1rXxIHm2P3RzeZdp5nVC90K9IxItKDVNEezB/doFNK/s0EoqjLhiCrgN+hLTjhiQ
VL/1SOKRZy2y/YNpBKGFFT5ZHLbM2t3EdQVQp8KkVtaL3JStPoB8rHLNPpVjvs+u1Hm18ShfTTJd
PjnV1kimC+hNU0UEDKBdzxn5yNl/cTl307SYkoZAO7ZCVOEbZv5ZTgerxJYgvOseTYyoUssqoJSa
UmXesj/PZpFfg0dmm7DjnG/Z1hIwamMk4E5Ho8pCDPJthL+GpR6ZYoWEmaHoQXv9goYidH9wQhGM
cRp1Gos7wPSDydv8d1hd3zp46Ka5NhUSs9VSi2zk4gV5Kx5uHEzZHIaYUeD4/ahh1RusjVq2Lax1
NDQZgAOpdkaEhvlmBCFT2tQ6VwFn4jbgviDuRFQ+kS8CpfnDP0DAfgXCbTIgxTsTxntLAwd6BG1R
IgHw+IEQLk78lCUWprZjQ7x7TG8/N8LuJcZuAVoi+yMjRY83o1TCEQwCQgpQ/UK2AR99K25CTWOU
qOQjHVTqt+86U4KeW2I+nnkzCGNY0YPhH5ltVLETLkY+RjG5fAWAPUwMp5U0w1KgFw34RwE+D9cr
TpFqbq67EG8YcLI4UiR1HI8DQTWp0obNG6bkC3xa/Cn1tL0ak93ln2aij2hPsLAiViRT2vXihGlS
n+7d1j+gu9v3BI7GZ/fdZP65qHd5wM/vdCFK+wRtAlhF4lai4AGCX0JUHhp5p90P5hFoBMyXHK6z
1aCcwsalwp551247rjqILBXhBT2V8b33eJ2bhoeLd4wEvh2V1zBbt2WlI5eACHtfRFKEOPW61Wge
fAR4p2Dl1RjSplf7V5bQliMqIqzP6zv0USnPvPXzXwSPxNaQY+cA14NPWc9vB2tWtIQc674vz96K
o9RAjXCV58kz/S9Xv/eDzTNPSvdDb6jdE4G9xa8lIqynQVtW6pNSpytNXwe2gMZ6wOUFCN6s/nFa
vM+tsBIOU4Z2C7zNh6F6daBoubFJrVZl1dIhrQfJGSfHU/qN3MErW56TT+ztbomM6TSJW8K/qbIc
F8FarW/Zezgpj3qiBihQqxYKZ+4MUIQclOwBdITjZcyc6cFHvd10Kzy0I92wMBoWw1U9YpGFKbUq
YtYIXSeWt3SD97ITwigpCv234p+LzMT+bt+3An1UbnLXON4a4YAAw4sCIRNO9TogaTEkezGXMwyw
HsQXqLI6+qab1zxvQbRDQaMf/UeNgghLABqOjQXWUJvBL07uXdzaExPUnwD/vMvOKcbSCcJ9rinz
q3X9n4f7jT9ugt2wOu/fVLtg7U/zORHGuQj+hX7wXqYQExpljEuuJUoS7g768pkPDczAqtZfkrz2
7GvcE81i++ojzL2AoV2N7NWmhQIwEMLGsMyouU6mAxumcWlfNbbVL5aL4cygQlP/i3vdSg8AJplm
XeX4oZrNAPYd/lFBzJLKixmtDCvm+Cd7Pq2MgEF/KgDeQ/nY6rnaNufivmyLCX5m8osVsa8S6QQg
b31glREdyYaoVcYLtEV5T86mM4h+zMcp5q/ZQgyaMZH+VkqSLiwExmhAYkEqJKgBE/pnfeNk4gYU
yqgnpB1KzcCt1MtXsk1qN4eKNRL/pF1LACO5hUR/vZtfLJv3XZicxYllEAIuR9/Wu8rf3b5rqlNB
nWomIkOkq62IiRNL3KnXvzQ5HFhsdC9DWf+QZFWkW2LVuUEOfKusRKyAn+EPTzIkEck+r2fEjQLu
RAs92ktLGL94Jc7qRqoRVDJvCbvLQK3xQetbq72t1KmUY+wfM6sos0ERBEBchGCmzcLExTjc9DaD
gzpC5o0z56Oa9UC52nmhK2e/Nx/mEtfVXfGA+CKxkfsyR89PpKf0b5AQtNverwBw4tbQ5H9uK4vM
jbFTTNufDbW4Q7jM3I1kBnATZNQWlNLaUmxDIIku2ThDB5yQP3ItuDidMz1UnxlLy0PVhmuCy/ia
aKu9SL7ucTGi+xZOa2aJjxsw6TVo75m5xtRnxslui/CfECanUOfXKwlPSy4fLW5X5EancuUf6moP
B6Vpcjx+PiAH8S+VZga6nL1HvlAyKuYaA+dvoG3oX/8yRu+fb1PR2GKoo2t4ybq7CzmNR6D3+Auq
r4cSvjuFgnRnoiMDtwwtkpV4WLoM1pWEUT5h/mEe+5/0OxJaxOS2etKovKWDbV69wCHTvaPMcQ4H
GQxVTA7f3HGmpJne71v512zXoLv4Sqg6DJzwxfH73CM5+vSlaaETyQPaPjMoSszJe+hUn0xmG2Np
b39gZPlAO5fzJfQNGaFtyTs/6QRG4K5k9LYFtaTA5JMQNlmzYK1s+B/rZLc3c9mOe7i/jDUlbWb+
wrsWTOsuvT92fg==
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
gt5jyTC2TV96Qs0OcnDrVtNIuT+FadH7QpRi5Pl8PyleMfzSGBX9iO3CnJVBxdElnFbK3/UgB2vy
1ZgSGa40ZctdNponDwyzEm3gvCRi+pihfzfEP3Y/kDEYwWX1BkM8khdufEDkx5HwSIfngxvk4Hbg
Pz/i03qIplEhmH16UT37cJDDnrKB6K2O0nlDwbDarh2VP3w5SLdJXX9hzUPBrVQgNItEN8regRI4
qSaWQBEeI2DBcEy6NyshYPSCdaHoiiJVMbjdyureAX7wSp6CJFUFzZQBKlmcPWFZx6T2B+qDGZE9
hpLYhn0fyQBEQa3sUZOvVOxWGZkN7uisALXmAg==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
A24hGuOTPJqylNC6olmCkVzXOeyAsd7TtOdYjqm30ZQIKgSFbfeu6o2JTxAQFLMvsJaWkjIGjWld
pk8D3OtPHDAz7bFdjjid0aEGUB864qfgdiKnIPQ2W2xL6YffxCI4nPZzIjO6IOOiNlqQOCFoBRpu
rXSLvDoodonlxixOJrGkCWqGj3boPrMIHeRUo7LkeKtN1XO9qbuI5HRS4rKdVvz/f/kysfdUEAv4
GszzjM/dDkzut5ah4tHYdKed/tZdGqL36DgeYJtlcqrMM2GJ2r3D60Eqh5NNBo39F2xUGrHlt72d
liZsBaU7w3N2O2Sd415GoV8hYO2yjDOie9v+eg==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 416)
`pragma protect data_block
IbtITHbqJTmGzKpDZqppX9R/WFouuya2fk4TI5Itd0qN7EPoFK+SGCf67x9tm+Q5K6CsXG+uiZtW
NfXg3a1vVXEBsvsbliMly8GFLAbdDm6IOFp5kn1op1THaV2i0ovGU89xXLt7AHgj5/aFJ1uNEDLw
4/QHTZnc4Bc3Gueg+tfuAGgmy2ha/wNnenZrO+iNCNRtegFdCDCHvxkdZrmATaCPjHgPLr3nbvb4
aOmDCLd/CK1DdfT5cSvj8s37IN54XsOCodevNveu2FfzYLnYoEj2HuXceLaSE9GImLRlzs7HAeAZ
HWVgxXeQKQnS+/UqVpHdSpqk/6LiF3RLnFOZD/2Tcsb9Xj3LbirB0PQAqrEcSOUPjBprcaf+CCnZ
WwlOB0DOoQnlLCgVOX8wQhMZLsD5x+MgGVXwJpM7mB6OvVNmeoY8aE32FVHUJXmf0YB2gPxHT0tJ
XZCbWsE6DtR/Ce+qVoFdblm9eGG8t35kaQNoTRmaLXWNMlQpoCjAK8rqTQTfLg1E+CFEkx1gGLLj
/vDaUKOUo+EkfYJp41YXEWw=
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
