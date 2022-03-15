// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Mon Mar 14 15:01:58 2022
// Host        : LAPTOP-GRCVOBS5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Long_Teng/Long_Teng/MIPS_CPU/MIPS_CPU.gen/sources_1/ip/InstructionMem_1/InstructionMem_sim_netlist.v
// Design      : InstructionMem
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "InstructionMem,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module InstructionMem
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.95215 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "InstructionMem.mem" *) 
  (* C_INIT_FILE_NAME = "InstructionMem.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  InstructionMem_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
sbNGmomEbP78s1hfxgX3P1Jo01EKJk0i0C7iGpF+Yibr9EK0s4mcIifHDN/ag4jpPwW3bPllMHvn
U8AEY3mO8hCXVVoilrcRuCaEna/98GycCzy4G7FnYMfowsJb5k9ifRdE2jnurzeTLFbupUSpDF0H
Rl3Ci3DTGeExAZZ9UQE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zZZZoIprBFYfDWmCCcduELBM7HU98/+rvP9g8+y1mYyD3r3HEDm4ZwehwZvPoYWqoGXYoFqWZh3h
utt0abIfUW9/oF2vJ9hXn7nArtcm/Eui18rPYqp3aj/AItPNVXojk9zp7uFZLPTqcyig5v3Jtenl
qPnLi1Z84ZCW7NIRw6Y0bgmw6z26E8VPbYrZHs+0YW8Sztjo6CdIrQeEL5WBDolA0aHoKHWRZyFs
l5eRDmBAolj2uF07t/3eY3J7cYJmEDaoZ0TR1qcz25VFNu0OlcrEJ19IT+QdAxTah4jqJtknGZrT
6lUMwDZ7dBQwF1EuaE6p90gGNERhGAsbHLdvaw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
KUbz0Iu2faeWqD6HFeuGLtSOAlqZmpKCCJfzym8tkcWUUNgNMn2mYvx6PTM7j4tyig8JdUG3uZYs
NfPgAsNXQtTI7b19u9CkMks9jR+oEzX1rW7QtTvSj/nHZLg2smoFwuB5Ieb7/B8IIs1NTUrIz6Rc
itLQVG+L+GMziamsrx4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
G7XYdRx9VGclyxTEtwMG+rjJHV8bfBxEGdkcN82UL3koN3Dt0M5AWkzEvHcskt1W0hTOjyYgmvYj
/p70w1nz96tlg226+e4UubpRmBH9QXBBX6UmqIwSiHj9H+XI1yNfTIdlwBKGQvfzwCAMwBwrrrGL
/804k5Ux3RhWRvwezZB4+sj9DFm4akREVXmNpfeqjI2X02LU/MxWMUbKxvjJnD9YxikAAO6ccTd6
8DKv76V76MEFVyXc7E2FeQDToW3lqkRTa6MTpIXbYSekRihQC+qPVuhPUneA4kepvQDfgFYE8/Ir
gu5gK+s/qNfuXhJUAqyLjslrUcY4+XD9ckpSvQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YXkYRXpUPv/tETnwnThdQ46UaPmI23lN9vrxHQjIOhq3WNJCuz7TYZK9hyzSdo6k0U6QE9ihQy2L
rYZg68RGbrK8bzlcnQ41r18LZb4GYlAn9PH7IrF1B+aHm3578doOZHf8wzUE2s+d1aHQIn6VIZjL
14pCTAjErJfMO13fgX6h8sgxb4GFC3eIORmkrq2J/fB9HALyh/qdGiLi7DejMfmdsssbOcPQTZUh
6Belf7fHTkIEr9B44rFZgMyrMVx4N9p0XpXD3JPe7Xeg6a3jxdqxHATaMuLdIa4s+ZiAz1TRx0EO
FFihCnLLb7weBBITQyTIncRL817BrF/ZXZD8Yw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
g7FbNw1ywd4TBNHq8OmK/4zoKI/t7vKmyT8R8SeiyUtKywhn0/7DZ/lV0Lf4IhY8X5MYsKtOQ5l6
DIl3fxtOhxpi8NHn9Nw3Nfb8NnS38Zuy6DSpwOL0f/GSmUSf2/YdB5Ben6xibQT0Oy//oBl5/1kR
pV5fWjj8WRgI6cnmfyj3g1MxepxPu1A/UHxlm1/i9yUHHi114N/hEQ0iujjrn6GxfZSiJUVF+r6c
rnxD//eOAl/YaxhdU/KhUkfsMn+MxtA5m6hTYYE0bnze8rpmEU5UGYKyY0p8KUs+MgsdTe+m/7gV
HSf6puBqQmEa1qksRfl742aL9B9y169or7Jp9Q==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kd1A2zIphLxXB0RyfHIqLkHXfWl0n38vROERuDghYrhK0ItcWGEP0XBrri6k1VZCSPYwiSu//pM6
83BfcPKbk09/A+ksvDIa3xS8Tg7DJK2AS+0pdnzBSjVWh+QD+glA3Hjk6LG9OMbjXyqD3hnMKacA
VRMwxKktV+KT5NXj5a7fMxXjo9exc0xM+woUJiSYs8onoUSwfBeH5/xhUy+iu+w0/OOydQE2LXZ0
1y+RObiz5C22dD4GGCfuvUCGAthYpUf633ZxRYN45mmAn5PxPsH4o+l2GhH/50Gu/VPVoAWDhgXQ
e93oPri++HinkK2uvDhDl4PI9HtRkq11Ky3uXQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
gDrrFgXHVyBo+Cn0bYn+SOSOCXPg7besukY6l0JmA/nu4gap105Wxbg11c7TJZ9ctHVLc5DXAxr+
EIvFpAIepoZBREtMjTlaIdNJ8k1nUpwAv2jaQeseq1TudTjugV1jtOYYk0RKd88z/6SJ8t9urDW0
yKqsfEWU3PwGcUGHOWtTn2hfAceNznmEIFWLmFmzSQJ1hQNdsIQn3jHnfMVYu8cAz5xvPVQWYyJW
pMHXhNYk6GyAjIshh991slb1g01K1ilR2tKD1EmxH5WGrX9BEUqBjHQo6uluC/d3mvcEQ5nJ1v+P
hIlj4qzUQT1wXjpk6d/BvNx7LyWmj5iq35dzNm+cdhfGwaFGG//vgmB6D/dFfs2BYSjHsa6VlpVM
7e2OgoFenuG9p1SVPI6gAs2MuFtnDKfxW7jS3RGhvsquS3tg1iFCDH/OU7E5aWfY7twF3yyN6G10
l72RZw62DfNoCdyUMG9sA8nc4qf6dEhyrr5S6XxpJhoBDJvkeq0TCUQZ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XR7vRF1m+9DS2Pv4r/O4uHwmvtXkChnKbsJCYczn1dvkZbcZSbBm/2UH78dXUaNorOh9XAuCvSjb
ER73y7e0anAfaIf1tJ9Y9pIb8EuNxGS/Pqdvg36cWarwGac9tsscdv/HWfb5Z+qWEk0/uFcLI7pH
CZO7fF2/ONQjA0NtUFBjW4idlx8WrySIuJgDs4jyGkMhbHR3U/ghF1YhMhwgwsbbcptfC1XLrIqQ
OecZnZu8E2hyc5eK/ccYdKcHnXoL55z1p5amI6Fuvz0wKTz2QQ/mwXodfGjEC1ZRWwTn7zCFM91M
qrA1Is49i6pSa7/VICjgn8ULMT1oKGfJLPm7hg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27968)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
