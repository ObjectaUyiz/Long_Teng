// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Mon Mar  7 00:22:54 2022
// Host        : LAPTOP-GRCVOBS5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Long_Teng/Long_Teng/MIPS_CPU/MIPS_CPU.gen/sources_1/ip/InstructionMem/InstructionMem_sim_netlist.v
// Design      : InstructionMem
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbv676-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "InstructionMem,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module InstructionMem
   (clka,
    rsta,
    wea,
    addra,
    dina,
    douta,
    rsta_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  output rsta_busy;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire rsta;
  wire rsta_busy;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
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
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.95215 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "ffffffff" *) 
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
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30848)
`pragma protect data_block
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
eqBt6KijdXF9cg0=
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
