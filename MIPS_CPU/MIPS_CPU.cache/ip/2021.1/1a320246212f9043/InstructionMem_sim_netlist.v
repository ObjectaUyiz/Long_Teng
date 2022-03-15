// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Mon Mar 14 10:24:26 2022
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.632725 mW" *) 
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
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
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
