// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Sun Mar  6 19:08:08 2022
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
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27680)
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
