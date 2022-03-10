// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Mon Mar  7 00:22:53 2022
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30864)
`pragma protect data_block
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
BCqDpt8euWVevmX9bvoBDKLYDIHJHSIBemNS
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
