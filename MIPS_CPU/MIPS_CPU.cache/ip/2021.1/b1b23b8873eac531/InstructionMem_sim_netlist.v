// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Mon Mar 14 11:13:02 2022
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
