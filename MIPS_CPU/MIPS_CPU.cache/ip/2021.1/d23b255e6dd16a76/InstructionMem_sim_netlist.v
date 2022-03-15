// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Mon Mar 14 11:31:44 2022
// Host        : LAPTOP-GRCVOBS5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ InstructionMem_sim_netlist.v
// Design      : InstructionMem
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "InstructionMem,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.1309 mW" *) 
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
