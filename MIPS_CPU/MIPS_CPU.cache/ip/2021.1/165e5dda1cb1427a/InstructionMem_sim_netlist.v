// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Mon Mar 14 15:01:58 2022
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
