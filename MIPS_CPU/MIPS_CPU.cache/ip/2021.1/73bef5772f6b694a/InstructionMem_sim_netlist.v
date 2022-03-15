// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Thu Mar 10 19:08:52 2022
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
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    rsta_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  output rsta_busy;

  wire [31:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire rsta;
  wire rsta_busy;
  wire [3:0]wea;
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
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.1437 mW" *) 
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
  (* C_HAS_RSTA = "1" *) 
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
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
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
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[11:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
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
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0}));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 33312)
`pragma protect data_block
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
9NSM2PWBi2uePodMkA8k6Bzois684/A4
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
