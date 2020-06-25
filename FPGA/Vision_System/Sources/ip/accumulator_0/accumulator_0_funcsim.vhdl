-- Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
-- Date        : Tue Jun 23 21:29:51 2020
-- Host        : LAPTOP-J9ADUE2F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/klukj/Desktop/agh/Sprawozdania/SystemyRekonfigurowalne/Lab5/hdmi_vga_zybo/hdmi_vga_zybo.srcs/sources_1/ip/accumulator_0/accumulator_0_funcsim.vhdl
-- Design      : accumulator_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity accumulator_0_register is
  port (
    Y : out STD_LOGIC_VECTOR ( 30 downto 0 );
    rst : in STD_LOGIC;
    ce : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 30 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of accumulator_0_register : entity is "register";
end accumulator_0_register;

architecture STRUCTURE of accumulator_0_register is
begin
\rego_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => D(0),
      Q => Y(0),
      R => rst
    );
\rego_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => D(10),
      Q => Y(10),
      R => rst
    );
\rego_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => D(11),
      Q => Y(11),
      R => rst
    );
\rego_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => D(12),
      Q => Y(12),
      R => rst
    );
\rego_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => D(13),
      Q => Y(13),
      R => rst
    );
\rego_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => D(14),
      Q => Y(14),
      R => rst
    );
\rego_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => D(15),
      Q => Y(15),
      R => rst
    );
\rego_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => D(16),
      Q => Y(16),
      R => rst
    );
\rego_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => D(17),
      Q => Y(17),
      R => rst
    );
\rego_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => D(18),
      Q => Y(18),
      R => rst
    );
\rego_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => D(19),
      Q => Y(19),
      R => rst
    );
\rego_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => D(1),
      Q => Y(1),
      R => rst
    );
\rego_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => D(20),
      Q => Y(20),
      R => rst
    );
\rego_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => D(21),
      Q => Y(21),
      R => rst
    );
\rego_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => D(22),
      Q => Y(22),
      R => rst
    );
\rego_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => D(23),
      Q => Y(23),
      R => rst
    );
\rego_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => D(24),
      Q => Y(24),
      R => rst
    );
\rego_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => D(25),
      Q => Y(25),
      R => rst
    );
\rego_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => D(26),
      Q => Y(26),
      R => rst
    );
\rego_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => D(27),
      Q => Y(27),
      R => rst
    );
\rego_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => D(28),
      Q => Y(28),
      R => rst
    );
\rego_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => D(29),
      Q => Y(29),
      R => rst
    );
\rego_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => D(2),
      Q => Y(2),
      R => rst
    );
\rego_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => D(30),
      Q => Y(30),
      R => rst
    );
\rego_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => D(3),
      Q => Y(3),
      R => rst
    );
\rego_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => D(4),
      Q => Y(4),
      R => rst
    );
\rego_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => D(5),
      Q => Y(5),
      R => rst
    );
\rego_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => D(6),
      Q => Y(6),
      R => rst
    );
\rego_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => D(7),
      Q => Y(7),
      R => rst
    );
\rego_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => D(8),
      Q => Y(8),
      R => rst
    );
\rego_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => D(9),
      Q => Y(9),
      R => rst
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2014"
`protect key_keyowner = "Cadence Design Systems.", key_keyname= "cds_rsa_key", key_method = "rsa"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 64)
`protect key_block
SryxhSRgjqGFrNTNFmcCBfiElI/G3wWxwD7UAvGx5Owb1NCF+H/rpvG/pTCga+PVkNvr+bY6h3fq
Ti9x4IJVGA==


`protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-VERIF-SIM-RSA-1", key_method = "rsa"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`protect key_block
WuACL5ELbHgRqBIcigXYEb64EzywaMflZGnChqPXulsTvF32o2rW0KGFlXZX+s1GArbXhzcqdRBy
qQE2VxKdRyYEHc7tQcYfLrNE7ogaVs+PNqGJ0uS2tNruh18l7thaI1HC1W0rTtozug7HLuEJJxns
vuJ92AyS0MJFs4ISOY8=


`protect key_keyowner = "Xilinx", key_keyname= "xilinx_2014_03", key_method = "rsa"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`protect key_block
pgQ27ApczDDIJN6Y57IFwXcYBuDxUZKQkHBp/5CdSbr6hJqBwo7NO9fIxP5QmkPXiKnsOTsTlsRZ
flXoEox8h2u/Y9yvVhMkfZnlJFBWD/p5/0X6CcQwHuMJMVqJEEARSZOfvqqHI2SGYqGoVBY9t+KU
Vs8C6XuT7xu/DTr9F2g2aVs4oK8Do088rCOpxE22ROFntyfIF3afe6o+lVAU420aBpb+w8400oDg
FzafEKlYrkvfgw93X7d1B9cINtUD8EKiiDwJ9m2jQ8oz6hbvcUZKueEbzdGn4GWCV1MBH3lFCx29
uffVv+lONdTQCTgCuvmCdrPgH5QK9TA92cQNXA==


`protect key_keyowner = "Synopsys", key_keyname= "SNPS-VCS-RSA-1", key_method = "rsa"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`protect key_block
zLBXI1oNMC4ks/1TgFGrDGhfzsO4RHAm2YSfqEr/2zNapNMFkpTiQnPlzjQqCQjvSW+9q5WAiIN1
O3711X2vZcNj/7zwYtw2KuRfIV6aLWh+Big8oJJ/Vm+nTcEXzF91mpogTh0CJ4y5ajaiR9s7vwSl
S02maT4qa3gJcwEFZa8=


`protect key_keyowner = "Aldec", key_keyname= "ALDEC08_001", key_method = "rsa"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`protect key_block
FIcAxPc3FfhI5728CUStSLfOGKXTFAztVhgeagBhRVYBWzIxO9yja01kfi+xUqGmlG8q0/3wlowJ
gKjKsuC9Z+e67bafVTH63BUvqOwUcIL+SupvKDBXlMMWTxQWEylYGe0nUSQ7TiYE7+7EawNZsAgh
bGvU/u1SbMN+saus9tUBSSsXPFmAnzYRfUFNgGaRMyLZfL3j6ZgCGs1rQO/bpVempm3yeW6FGRkt
itrSAS2KhUC2LiLBrzzE42wWzwb4TpTGWLJTZ4m4rvyvO/R4Bkme/OYuRH4hvoLfKibffxJQqirQ
bXlbFT/I9N9rnnY5w5LHhyKvucYBSmql+pKCVQ==


`protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-PREC-RSA", key_method = "rsa"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`protect key_block
TB1pOlpaNANfKwIdOFbJaN5/wbMWRnmg8+wiLtbrUlbx9tANODj5Na37qc0x8V7YaySpYVWRrQxh
yNOmc6VEDWSrgPqbVddM3QSCQPpoEoQkegASuNt7GNS5XbuSHvaxR/pxFzejsBfzxYlXwmHhTBT+
5Q1sxOq1pwdsbTMSsRQrBsa7KwosPdUKIGYMqduuXUEWCcwlxePxKLwS3xD+KRzNPeSD9D/1rwsH
sn9Q6QQtiJ5kMTMbxnQUV55GfEO3SjJgXDW/CJZeSj4ltWTP7XQxMdoyj3n2tSHgEr56EtKBks/M
d6X0katVu8bbBwMx7vlq65fRnNyTfN7HDEizIA==


`protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`protect key_block
rlcwspfBdwWlQ03aVHw8AGR06fRxAvGYrsMGP3bk5uSUokPzLQH9/MTfQxwFkSIOuR+c22A6SfhX
/AD2ffx/5xvqwNXfDS/BhuSknm0hLuuEliXHfdVjJjaVdg4oPCEfMglYUxSgvi1wLNq9Gal7oX1H
9qjFkDmcJI572+76C/7WSPPhAnowo7/AImLg0LXZL19qFSJvXjyZZLrOIv55xwJQEWSMtI0GW5YL
KsgdJxGcTBRYX7HXmSoIXKp+4/x4L+Dc9ymQeMbvbKL79kredzQC5vA2g/a0J24HN1doi+/uNhBG
pZZDQ9d9OJZq67Crh7V0PPfVbpfC8/6G4gTyDQ==


`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 16240)
`protect data_block
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
`protect end_protected
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2014"
`protect key_keyowner = "Cadence Design Systems.", key_keyname= "cds_rsa_key", key_method = "rsa"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 64)
`protect key_block
SryxhSRgjqGFrNTNFmcCBfiElI/G3wWxwD7UAvGx5Owb1NCF+H/rpvG/pTCga+PVkNvr+bY6h3fq
Ti9x4IJVGA==


`protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-VERIF-SIM-RSA-1", key_method = "rsa"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`protect key_block
WuACL5ELbHgRqBIcigXYEb64EzywaMflZGnChqPXulsTvF32o2rW0KGFlXZX+s1GArbXhzcqdRBy
qQE2VxKdRyYEHc7tQcYfLrNE7ogaVs+PNqGJ0uS2tNruh18l7thaI1HC1W0rTtozug7HLuEJJxns
vuJ92AyS0MJFs4ISOY8=


`protect key_keyowner = "Xilinx", key_keyname= "xilinx_2014_03", key_method = "rsa"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`protect key_block
pgQ27ApczDDIJN6Y57IFwXcYBuDxUZKQkHBp/5CdSbr6hJqBwo7NO9fIxP5QmkPXiKnsOTsTlsRZ
flXoEox8h2u/Y9yvVhMkfZnlJFBWD/p5/0X6CcQwHuMJMVqJEEARSZOfvqqHI2SGYqGoVBY9t+KU
Vs8C6XuT7xu/DTr9F2g2aVs4oK8Do088rCOpxE22ROFntyfIF3afe6o+lVAU420aBpb+w8400oDg
FzafEKlYrkvfgw93X7d1B9cINtUD8EKiiDwJ9m2jQ8oz6hbvcUZKueEbzdGn4GWCV1MBH3lFCx29
uffVv+lONdTQCTgCuvmCdrPgH5QK9TA92cQNXA==


`protect key_keyowner = "Synopsys", key_keyname= "SNPS-VCS-RSA-1", key_method = "rsa"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`protect key_block
zLBXI1oNMC4ks/1TgFGrDGhfzsO4RHAm2YSfqEr/2zNapNMFkpTiQnPlzjQqCQjvSW+9q5WAiIN1
O3711X2vZcNj/7zwYtw2KuRfIV6aLWh+Big8oJJ/Vm+nTcEXzF91mpogTh0CJ4y5ajaiR9s7vwSl
S02maT4qa3gJcwEFZa8=


`protect key_keyowner = "Aldec", key_keyname= "ALDEC08_001", key_method = "rsa"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`protect key_block
FIcAxPc3FfhI5728CUStSLfOGKXTFAztVhgeagBhRVYBWzIxO9yja01kfi+xUqGmlG8q0/3wlowJ
gKjKsuC9Z+e67bafVTH63BUvqOwUcIL+SupvKDBXlMMWTxQWEylYGe0nUSQ7TiYE7+7EawNZsAgh
bGvU/u1SbMN+saus9tUBSSsXPFmAnzYRfUFNgGaRMyLZfL3j6ZgCGs1rQO/bpVempm3yeW6FGRkt
itrSAS2KhUC2LiLBrzzE42wWzwb4TpTGWLJTZ4m4rvyvO/R4Bkme/OYuRH4hvoLfKibffxJQqirQ
bXlbFT/I9N9rnnY5w5LHhyKvucYBSmql+pKCVQ==


`protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-PREC-RSA", key_method = "rsa"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`protect key_block
TB1pOlpaNANfKwIdOFbJaN5/wbMWRnmg8+wiLtbrUlbx9tANODj5Na37qc0x8V7YaySpYVWRrQxh
yNOmc6VEDWSrgPqbVddM3QSCQPpoEoQkegASuNt7GNS5XbuSHvaxR/pxFzejsBfzxYlXwmHhTBT+
5Q1sxOq1pwdsbTMSsRQrBsa7KwosPdUKIGYMqduuXUEWCcwlxePxKLwS3xD+KRzNPeSD9D/1rwsH
sn9Q6QQtiJ5kMTMbxnQUV55GfEO3SjJgXDW/CJZeSj4ltWTP7XQxMdoyj3n2tSHgEr56EtKBks/M
d6X0katVu8bbBwMx7vlq65fRnNyTfN7HDEizIA==


`protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`protect key_block
rlcwspfBdwWlQ03aVHw8AGR06fRxAvGYrsMGP3bk5uSUokPzLQH9/MTfQxwFkSIOuR+c22A6SfhX
/AD2ffx/5xvqwNXfDS/BhuSknm0hLuuEliXHfdVjJjaVdg4oPCEfMglYUxSgvi1wLNq9Gal7oX1H
9qjFkDmcJI572+76C/7WSPPhAnowo7/AImLg0LXZL19qFSJvXjyZZLrOIv55xwJQEWSMtI0GW5YL
KsgdJxGcTBRYX7HXmSoIXKp+4/x4L+Dc9ymQeMbvbKL79kredzQC5vA2g/a0J24HN1doi+/uNhBG
pZZDQ9d9OJZq67Crh7V0PPfVbpfC8/6G4gTyDQ==


`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 1760)
`protect data_block
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
`protect end_protected
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2014"
`protect key_keyowner = "Cadence Design Systems.", key_keyname= "cds_rsa_key", key_method = "rsa"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 64)
`protect key_block
SryxhSRgjqGFrNTNFmcCBfiElI/G3wWxwD7UAvGx5Owb1NCF+H/rpvG/pTCga+PVkNvr+bY6h3fq
Ti9x4IJVGA==


`protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-VERIF-SIM-RSA-1", key_method = "rsa"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`protect key_block
WuACL5ELbHgRqBIcigXYEb64EzywaMflZGnChqPXulsTvF32o2rW0KGFlXZX+s1GArbXhzcqdRBy
qQE2VxKdRyYEHc7tQcYfLrNE7ogaVs+PNqGJ0uS2tNruh18l7thaI1HC1W0rTtozug7HLuEJJxns
vuJ92AyS0MJFs4ISOY8=


`protect key_keyowner = "Xilinx", key_keyname= "xilinx_2014_03", key_method = "rsa"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`protect key_block
pgQ27ApczDDIJN6Y57IFwXcYBuDxUZKQkHBp/5CdSbr6hJqBwo7NO9fIxP5QmkPXiKnsOTsTlsRZ
flXoEox8h2u/Y9yvVhMkfZnlJFBWD/p5/0X6CcQwHuMJMVqJEEARSZOfvqqHI2SGYqGoVBY9t+KU
Vs8C6XuT7xu/DTr9F2g2aVs4oK8Do088rCOpxE22ROFntyfIF3afe6o+lVAU420aBpb+w8400oDg
FzafEKlYrkvfgw93X7d1B9cINtUD8EKiiDwJ9m2jQ8oz6hbvcUZKueEbzdGn4GWCV1MBH3lFCx29
uffVv+lONdTQCTgCuvmCdrPgH5QK9TA92cQNXA==


`protect key_keyowner = "Synopsys", key_keyname= "SNPS-VCS-RSA-1", key_method = "rsa"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`protect key_block
zLBXI1oNMC4ks/1TgFGrDGhfzsO4RHAm2YSfqEr/2zNapNMFkpTiQnPlzjQqCQjvSW+9q5WAiIN1
O3711X2vZcNj/7zwYtw2KuRfIV6aLWh+Big8oJJ/Vm+nTcEXzF91mpogTh0CJ4y5ajaiR9s7vwSl
S02maT4qa3gJcwEFZa8=


`protect key_keyowner = "Aldec", key_keyname= "ALDEC08_001", key_method = "rsa"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`protect key_block
FIcAxPc3FfhI5728CUStSLfOGKXTFAztVhgeagBhRVYBWzIxO9yja01kfi+xUqGmlG8q0/3wlowJ
gKjKsuC9Z+e67bafVTH63BUvqOwUcIL+SupvKDBXlMMWTxQWEylYGe0nUSQ7TiYE7+7EawNZsAgh
bGvU/u1SbMN+saus9tUBSSsXPFmAnzYRfUFNgGaRMyLZfL3j6ZgCGs1rQO/bpVempm3yeW6FGRkt
itrSAS2KhUC2LiLBrzzE42wWzwb4TpTGWLJTZ4m4rvyvO/R4Bkme/OYuRH4hvoLfKibffxJQqirQ
bXlbFT/I9N9rnnY5w5LHhyKvucYBSmql+pKCVQ==


`protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-PREC-RSA", key_method = "rsa"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`protect key_block
TB1pOlpaNANfKwIdOFbJaN5/wbMWRnmg8+wiLtbrUlbx9tANODj5Na37qc0x8V7YaySpYVWRrQxh
yNOmc6VEDWSrgPqbVddM3QSCQPpoEoQkegASuNt7GNS5XbuSHvaxR/pxFzejsBfzxYlXwmHhTBT+
5Q1sxOq1pwdsbTMSsRQrBsa7KwosPdUKIGYMqduuXUEWCcwlxePxKLwS3xD+KRzNPeSD9D/1rwsH
sn9Q6QQtiJ5kMTMbxnQUV55GfEO3SjJgXDW/CJZeSj4ltWTP7XQxMdoyj3n2tSHgEr56EtKBks/M
d6X0katVu8bbBwMx7vlq65fRnNyTfN7HDEizIA==


`protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`protect key_block
rlcwspfBdwWlQ03aVHw8AGR06fRxAvGYrsMGP3bk5uSUokPzLQH9/MTfQxwFkSIOuR+c22A6SfhX
/AD2ffx/5xvqwNXfDS/BhuSknm0hLuuEliXHfdVjJjaVdg4oPCEfMglYUxSgvi1wLNq9Gal7oX1H
9qjFkDmcJI572+76C/7WSPPhAnowo7/AImLg0LXZL19qFSJvXjyZZLrOIv55xwJQEWSMtI0GW5YL
KsgdJxGcTBRYX7HXmSoIXKp+4/x4L+Dc9ymQeMbvbKL79kredzQC5vA2g/a0J24HN1doi+/uNhBG
pZZDQ9d9OJZq67Crh7V0PPfVbpfC8/6G4gTyDQ==


`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 880)
`protect data_block
RMmdhzZN2Yb83zZJIT1inVbKEbhyUKrurRnuC9OrqAbHoEyA2453nRtk1tAe+lOl+QD1ft0D8DE7
MSHOIpTBZfuZZXZqOgi/NO+OjFXidDR313ed9UjnbGGJwrbq4pGP08b0UxUS3W2Xp78jpXm1/UMp
VqY1PxsgBGudVzj+4fzE41WmtArmEby/UTcGDGEbSW3ctk73v6iaLk19W97glvfvY/gIbfgemnU+
YZR7qrk+q+68ewkaIbA+FIZXW0lpoY+41me8X8GUSmWVfwDaanTJXffCGR/uVGe4uFYDrAtR5XN0
z33ccWbB5CjgO6437xB7byHRBRtQOokdc6ckhhFbg1dQvlS02+LOiHVwPjM5PIHsPzObrF1qYJ1v
Z84XkyR8mqLjWQJfVUIsYbTCH3HoR6uEAJeVe7h4md5AQI2UEhuq4S5Rzm8eQ1eQNfr2W4EZHtZl
bYldTgyDzxfxxObAJbov6fwxyOd+tK7CubPrBIKDfaQidPgQJlIEJmO6RfmaB0xGHw9COfmFmOdc
n0U/orhzc86/EYswxq2XkqaH7QPiR+2yPDbSaMYZZl2nBC/yFr4i5C82Gl/hETcSqHfc/UelNLEv
V+er90ecZYa3xPcwTOQsYWY4iB2XvoNHbbbqTxs8jmfmUM2jeyPZsVuQByCS7SWQ8fYFtEZNKTyX
kpo90cDEDXahyVKDaWIV2CBTWLaraY2kZsKoA8pjLTG/sjx44qYzFfHPSY5AhSRuw12iDIBfc0gI
OStbW4XbaiRhJWhIEFxEkmkjoS/jVQVs9cYz6ySWKFQ8kVYleFPp+YJcY1GzVpvPwq6YqaQEyHx2
c2fIkqlWG4kzZH9Y3vFinLK7yQCgjIhuF05PSB9ZhGmHHtnd6sCU/FlQGWUCiXLhCYaHCnHdm/s8
gWnxEtGg471JndRc0DAPFlE8whHXr/C69VZOEf1ua6ZkB9U762hsofOZipOxWVn7Xug4vQ+KacjH
HBUh8yn/N+tjD+4CDHT/oDjp3CdMm1YrDM4Rdm16it97N56frVkKpRSZXx7SP5ibslEMMOuRrasy
9nqnKv5U7IQczWRHzwPHovImX3inSsro5CwzBK6ien/UKG1DV4kP3q/W/Kp1FrDiUQIJoUCZv6Wu
hPLs/ShRJ5YTrspiZZKMzjQGEgblTxWkTg==
`protect end_protected
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2014"
`protect key_keyowner = "Cadence Design Systems.", key_keyname= "cds_rsa_key", key_method = "rsa"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 64)
`protect key_block
SryxhSRgjqGFrNTNFmcCBfiElI/G3wWxwD7UAvGx5Owb1NCF+H/rpvG/pTCga+PVkNvr+bY6h3fq
Ti9x4IJVGA==


`protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-VERIF-SIM-RSA-1", key_method = "rsa"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`protect key_block
WuACL5ELbHgRqBIcigXYEb64EzywaMflZGnChqPXulsTvF32o2rW0KGFlXZX+s1GArbXhzcqdRBy
qQE2VxKdRyYEHc7tQcYfLrNE7ogaVs+PNqGJ0uS2tNruh18l7thaI1HC1W0rTtozug7HLuEJJxns
vuJ92AyS0MJFs4ISOY8=


`protect key_keyowner = "Xilinx", key_keyname= "xilinx_2014_03", key_method = "rsa"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`protect key_block
pgQ27ApczDDIJN6Y57IFwXcYBuDxUZKQkHBp/5CdSbr6hJqBwo7NO9fIxP5QmkPXiKnsOTsTlsRZ
flXoEox8h2u/Y9yvVhMkfZnlJFBWD/p5/0X6CcQwHuMJMVqJEEARSZOfvqqHI2SGYqGoVBY9t+KU
Vs8C6XuT7xu/DTr9F2g2aVs4oK8Do088rCOpxE22ROFntyfIF3afe6o+lVAU420aBpb+w8400oDg
FzafEKlYrkvfgw93X7d1B9cINtUD8EKiiDwJ9m2jQ8oz6hbvcUZKueEbzdGn4GWCV1MBH3lFCx29
uffVv+lONdTQCTgCuvmCdrPgH5QK9TA92cQNXA==


`protect key_keyowner = "Synopsys", key_keyname= "SNPS-VCS-RSA-1", key_method = "rsa"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`protect key_block
zLBXI1oNMC4ks/1TgFGrDGhfzsO4RHAm2YSfqEr/2zNapNMFkpTiQnPlzjQqCQjvSW+9q5WAiIN1
O3711X2vZcNj/7zwYtw2KuRfIV6aLWh+Big8oJJ/Vm+nTcEXzF91mpogTh0CJ4y5ajaiR9s7vwSl
S02maT4qa3gJcwEFZa8=


`protect key_keyowner = "Aldec", key_keyname= "ALDEC08_001", key_method = "rsa"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`protect key_block
FIcAxPc3FfhI5728CUStSLfOGKXTFAztVhgeagBhRVYBWzIxO9yja01kfi+xUqGmlG8q0/3wlowJ
gKjKsuC9Z+e67bafVTH63BUvqOwUcIL+SupvKDBXlMMWTxQWEylYGe0nUSQ7TiYE7+7EawNZsAgh
bGvU/u1SbMN+saus9tUBSSsXPFmAnzYRfUFNgGaRMyLZfL3j6ZgCGs1rQO/bpVempm3yeW6FGRkt
itrSAS2KhUC2LiLBrzzE42wWzwb4TpTGWLJTZ4m4rvyvO/R4Bkme/OYuRH4hvoLfKibffxJQqirQ
bXlbFT/I9N9rnnY5w5LHhyKvucYBSmql+pKCVQ==


`protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-PREC-RSA", key_method = "rsa"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`protect key_block
TB1pOlpaNANfKwIdOFbJaN5/wbMWRnmg8+wiLtbrUlbx9tANODj5Na37qc0x8V7YaySpYVWRrQxh
yNOmc6VEDWSrgPqbVddM3QSCQPpoEoQkegASuNt7GNS5XbuSHvaxR/pxFzejsBfzxYlXwmHhTBT+
5Q1sxOq1pwdsbTMSsRQrBsa7KwosPdUKIGYMqduuXUEWCcwlxePxKLwS3xD+KRzNPeSD9D/1rwsH
sn9Q6QQtiJ5kMTMbxnQUV55GfEO3SjJgXDW/CJZeSj4ltWTP7XQxMdoyj3n2tSHgEr56EtKBks/M
d6X0katVu8bbBwMx7vlq65fRnNyTfN7HDEizIA==


`protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`protect key_block
rlcwspfBdwWlQ03aVHw8AGR06fRxAvGYrsMGP3bk5uSUokPzLQH9/MTfQxwFkSIOuR+c22A6SfhX
/AD2ffx/5xvqwNXfDS/BhuSknm0hLuuEliXHfdVjJjaVdg4oPCEfMglYUxSgvi1wLNq9Gal7oX1H
9qjFkDmcJI572+76C/7WSPPhAnowo7/AImLg0LXZL19qFSJvXjyZZLrOIv55xwJQEWSMtI0GW5YL
KsgdJxGcTBRYX7HXmSoIXKp+4/x4L+Dc9ymQeMbvbKL79kredzQC5vA2g/a0J24HN1doi+/uNhBG
pZZDQ9d9OJZq67Crh7V0PPfVbpfC8/6G4gTyDQ==


`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5088)
`protect data_block
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
wbbxZ/1fPYVgCmCFXFov
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \accumulator_0_c_addsub_v12_0__parameterized0\ is
  port (
    A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    B : in STD_LOGIC_VECTOR ( 30 downto 0 );
    CLK : in STD_LOGIC;
    ADD : in STD_LOGIC;
    C_IN : in STD_LOGIC;
    CE : in STD_LOGIC;
    BYPASS : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    SSET : in STD_LOGIC;
    SINIT : in STD_LOGIC;
    C_OUT : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 30 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \accumulator_0_c_addsub_v12_0__parameterized0\ : entity is "c_addsub_v12_0";
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of \accumulator_0_c_addsub_v12_0__parameterized0\ : entity is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of \accumulator_0_c_addsub_v12_0__parameterized0\ : entity is "zynq";
  attribute C_IMPLEMENTATION : integer;
  attribute C_IMPLEMENTATION of \accumulator_0_c_addsub_v12_0__parameterized0\ : entity is 1;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of \accumulator_0_c_addsub_v12_0__parameterized0\ : entity is 8;
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of \accumulator_0_c_addsub_v12_0__parameterized0\ : entity is 31;
  attribute C_OUT_WIDTH : integer;
  attribute C_OUT_WIDTH of \accumulator_0_c_addsub_v12_0__parameterized0\ : entity is 31;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of \accumulator_0_c_addsub_v12_0__parameterized0\ : entity is 0;
  attribute C_A_TYPE : integer;
  attribute C_A_TYPE of \accumulator_0_c_addsub_v12_0__parameterized0\ : entity is 0;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of \accumulator_0_c_addsub_v12_0__parameterized0\ : entity is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of \accumulator_0_c_addsub_v12_0__parameterized0\ : entity is 0;
  attribute C_ADD_MODE : integer;
  attribute C_ADD_MODE of \accumulator_0_c_addsub_v12_0__parameterized0\ : entity is 0;
  attribute C_B_CONSTANT : integer;
  attribute C_B_CONSTANT of \accumulator_0_c_addsub_v12_0__parameterized0\ : entity is 0;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of \accumulator_0_c_addsub_v12_0__parameterized0\ : entity is "0000000000000000000000000000000";
  attribute C_AINIT_VAL : string;
  attribute C_AINIT_VAL of \accumulator_0_c_addsub_v12_0__parameterized0\ : entity is "0";
  attribute C_SINIT_VAL : string;
  attribute C_SINIT_VAL of \accumulator_0_c_addsub_v12_0__parameterized0\ : entity is "0";
  attribute C_CE_OVERRIDES_BYPASS : integer;
  attribute C_CE_OVERRIDES_BYPASS of \accumulator_0_c_addsub_v12_0__parameterized0\ : entity is 1;
  attribute C_BYPASS_LOW : integer;
  attribute C_BYPASS_LOW of \accumulator_0_c_addsub_v12_0__parameterized0\ : entity is 0;
  attribute C_SCLR_OVERRIDES_SSET : integer;
  attribute C_SCLR_OVERRIDES_SSET of \accumulator_0_c_addsub_v12_0__parameterized0\ : entity is 1;
  attribute C_HAS_C_IN : integer;
  attribute C_HAS_C_IN of \accumulator_0_c_addsub_v12_0__parameterized0\ : entity is 0;
  attribute C_HAS_C_OUT : integer;
  attribute C_HAS_C_OUT of \accumulator_0_c_addsub_v12_0__parameterized0\ : entity is 0;
  attribute C_BORROW_LOW : integer;
  attribute C_BORROW_LOW of \accumulator_0_c_addsub_v12_0__parameterized0\ : entity is 1;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of \accumulator_0_c_addsub_v12_0__parameterized0\ : entity is 0;
  attribute C_HAS_BYPASS : integer;
  attribute C_HAS_BYPASS of \accumulator_0_c_addsub_v12_0__parameterized0\ : entity is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of \accumulator_0_c_addsub_v12_0__parameterized0\ : entity is 0;
  attribute C_HAS_SSET : integer;
  attribute C_HAS_SSET of \accumulator_0_c_addsub_v12_0__parameterized0\ : entity is 0;
  attribute C_HAS_SINIT : integer;
  attribute C_HAS_SINIT of \accumulator_0_c_addsub_v12_0__parameterized0\ : entity is 0;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \accumulator_0_c_addsub_v12_0__parameterized0\ : entity is "yes";
end \accumulator_0_c_addsub_v12_0__parameterized0\;

architecture STRUCTURE of \accumulator_0_c_addsub_v12_0__parameterized0\ is
  attribute C_ADD_MODE of xst_addsub : label is 0;
  attribute C_AINIT_VAL of xst_addsub : label is "0";
  attribute C_A_TYPE of xst_addsub : label is 0;
  attribute C_A_WIDTH of xst_addsub : label is 8;
  attribute C_BORROW_LOW of xst_addsub : label is 1;
  attribute C_BYPASS_LOW of xst_addsub : label is 0;
  attribute C_B_CONSTANT of xst_addsub : label is 0;
  attribute C_B_TYPE of xst_addsub : label is 0;
  attribute C_B_VALUE of xst_addsub : label is "0000000000000000000000000000000";
  attribute C_B_WIDTH of xst_addsub : label is 31;
  attribute C_CE_OVERRIDES_BYPASS of xst_addsub : label is 1;
  attribute C_CE_OVERRIDES_SCLR of xst_addsub : label is 0;
  attribute C_HAS_BYPASS of xst_addsub : label is 0;
  attribute C_HAS_CE of xst_addsub : label is 0;
  attribute C_HAS_C_IN of xst_addsub : label is 0;
  attribute C_HAS_C_OUT of xst_addsub : label is 0;
  attribute C_HAS_SCLR of xst_addsub : label is 0;
  attribute C_HAS_SINIT of xst_addsub : label is 0;
  attribute C_HAS_SSET of xst_addsub : label is 0;
  attribute C_IMPLEMENTATION of xst_addsub : label is 1;
  attribute C_LATENCY of xst_addsub : label is 0;
  attribute C_OUT_WIDTH of xst_addsub : label is 31;
  attribute C_SCLR_OVERRIDES_SSET of xst_addsub : label is 1;
  attribute C_SINIT_VAL of xst_addsub : label is "0";
  attribute C_VERBOSITY of xst_addsub : label is 0;
  attribute C_XDEVICEFAMILY of xst_addsub : label is "zynq";
  attribute downgradeipidentifiedwarnings of xst_addsub : label is "yes";
begin
xst_addsub: entity work.\accumulator_0_c_addsub_v12_0_viv__parameterized0\
    port map (
      A(7 downto 0) => A(7 downto 0),
      ADD => ADD,
      B(30 downto 0) => B(30 downto 0),
      BYPASS => BYPASS,
      CE => CE,
      CLK => CLK,
      C_IN => C_IN,
      C_OUT => C_OUT,
      S(30 downto 0) => S(30 downto 0),
      SCLR => SCLR,
      SINIT => SINIT,
      SSET => SSET
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity accumulator_0_accu_sum is
  port (
    D : out STD_LOGIC_VECTOR ( 30 downto 0 );
    data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Y : in STD_LOGIC_VECTOR ( 30 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of accumulator_0_accu_sum : entity is "accu_sum";
end accumulator_0_accu_sum;

architecture STRUCTURE of accumulator_0_accu_sum is
  signal NLW_U0_C_OUT_UNCONNECTED : STD_LOGIC;
  attribute C_ADD_MODE : integer;
  attribute C_ADD_MODE of U0 : label is 0;
  attribute C_AINIT_VAL : string;
  attribute C_AINIT_VAL of U0 : label is "0";
  attribute C_A_TYPE : integer;
  attribute C_A_TYPE of U0 : label is 0;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of U0 : label is 8;
  attribute C_BORROW_LOW : integer;
  attribute C_BORROW_LOW of U0 : label is 1;
  attribute C_BYPASS_LOW : integer;
  attribute C_BYPASS_LOW of U0 : label is 0;
  attribute C_B_CONSTANT : integer;
  attribute C_B_CONSTANT of U0 : label is 0;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of U0 : label is 0;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of U0 : label is "0000000000000000000000000000000";
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of U0 : label is 31;
  attribute C_CE_OVERRIDES_BYPASS : integer;
  attribute C_CE_OVERRIDES_BYPASS of U0 : label is 1;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of U0 : label is 0;
  attribute C_HAS_BYPASS : integer;
  attribute C_HAS_BYPASS of U0 : label is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of U0 : label is 0;
  attribute C_HAS_C_IN : integer;
  attribute C_HAS_C_IN of U0 : label is 0;
  attribute C_HAS_C_OUT : integer;
  attribute C_HAS_C_OUT of U0 : label is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of U0 : label is 0;
  attribute C_HAS_SINIT : integer;
  attribute C_HAS_SINIT of U0 : label is 0;
  attribute C_HAS_SSET : integer;
  attribute C_HAS_SSET of U0 : label is 0;
  attribute C_IMPLEMENTATION : integer;
  attribute C_IMPLEMENTATION of U0 : label is 1;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of U0 : label is 0;
  attribute C_OUT_WIDTH : integer;
  attribute C_OUT_WIDTH of U0 : label is 31;
  attribute C_SCLR_OVERRIDES_SSET : integer;
  attribute C_SCLR_OVERRIDES_SSET of U0 : label is 1;
  attribute C_SINIT_VAL : string;
  attribute C_SINIT_VAL of U0 : label is "0";
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of U0 : label is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "zynq";
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of U0 : label is std.standard.true;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
begin
U0: entity work.\accumulator_0_c_addsub_v12_0__parameterized0\
    port map (
      A(7 downto 0) => data(7 downto 0),
      ADD => '1',
      B(30 downto 0) => Y(30 downto 0),
      BYPASS => '0',
      CE => '1',
      CLK => '0',
      C_IN => '0',
      C_OUT => NLW_U0_C_OUT_UNCONNECTED,
      S(30 downto 0) => D(30 downto 0),
      SCLR => '0',
      SINIT => '0',
      SSET => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity accumulator_0_accumulator is
  port (
    Y : out STD_LOGIC_VECTOR ( 30 downto 0 );
    data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rst : in STD_LOGIC;
    ce : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of accumulator_0_accumulator : entity is "accumulator";
end accumulator_0_accumulator;

architecture STRUCTURE of accumulator_0_accumulator is
  signal \^y\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \^y_1\ : STD_LOGIC_VECTOR ( 30 downto 0 );
begin
  Y(30 downto 0) <= \^y\(30 downto 0);
adding: entity work.accumulator_0_accu_sum
    port map (
      D(30 downto 0) => \^y_1\(30 downto 0),
      Y(30 downto 0) => \^y\(30 downto 0),
      data(7 downto 0) => data(7 downto 0)
    );
regg: entity work.accumulator_0_register
    port map (
      D(30 downto 0) => \^y_1\(30 downto 0),
      Y(30 downto 0) => \^y\(30 downto 0),
      ce => ce,
      clk => clk,
      rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity accumulator_0 is
  port (
    clk : in STD_LOGIC;
    ce : in STD_LOGIC;
    rst : in STD_LOGIC;
    data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Y : out STD_LOGIC_VECTOR ( 30 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of accumulator_0 : entity is true;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of accumulator_0 : entity is "accumulator,Vivado 2014.4";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of accumulator_0 : entity is "accumulator_0,accumulator,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of accumulator_0 : entity is "accumulator_0,accumulator,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=accumulator,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of accumulator_0 : entity is "yes";
end accumulator_0;

architecture STRUCTURE of accumulator_0 is
begin
inst: entity work.accumulator_0_accumulator
    port map (
      Y(30 downto 0) => Y(30 downto 0),
      ce => ce,
      clk => clk,
      data(7 downto 0) => data(7 downto 0),
      rst => rst
    );
end STRUCTURE;
