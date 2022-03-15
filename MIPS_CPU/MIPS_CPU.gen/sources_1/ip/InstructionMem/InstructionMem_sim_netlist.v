// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Thu Mar 10 19:08:52 2022
// Host        : LAPTOP-GRCVOBS5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Long_Teng/Long_Teng/MIPS_CPU/MIPS_CPU.gen/sources_1/ip/InstructionMem/InstructionMem_sim_netlist.v
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
  InstructionMem_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 33296)
`pragma protect data_block
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
4A+8IH0y4+c=
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
