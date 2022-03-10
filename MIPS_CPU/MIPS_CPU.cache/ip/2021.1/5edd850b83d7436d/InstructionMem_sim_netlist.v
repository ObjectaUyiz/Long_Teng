// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Sun Mar  6 23:18:33 2022
// Host        : LAPTOP-GRCVOBS5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ InstructionMem_sim_netlist.v
// Design      : InstructionMem
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbv676-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "InstructionMem,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.1309 mW" *) 
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
  (* C_WRITE_MODE_A = "READ_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27696)
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
