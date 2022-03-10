// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Mon Mar  7 00:22:54 2022
// Host        : LAPTOP-GRCVOBS5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Long_Teng/Long_Teng/MIPS_CPU/MIPS_CPU.gen/sources_1/ip/InstructionMem/InstructionMem_stub.v
// Design      : InstructionMem
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbv676-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *)
module InstructionMem(clka, rsta, wea, addra, dina, douta, rsta_busy)
/* synthesis syn_black_box black_box_pad_pin="clka,rsta,wea[0:0],addra[9:0],dina[31:0],douta[31:0],rsta_busy" */;
  input clka;
  input rsta;
  input [0:0]wea;
  input [9:0]addra;
  input [31:0]dina;
  output [31:0]douta;
  output rsta_busy;
endmodule
