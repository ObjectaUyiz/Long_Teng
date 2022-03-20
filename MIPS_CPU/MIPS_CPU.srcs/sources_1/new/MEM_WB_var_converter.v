`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/17/2022 12:02:16 PM
// Design Name: 
// Module Name: MEM_WB_var_converter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MEM_WB_var_converter(
    input [5:0] MEM_opcode,
    input [5:0] MEM_fun,
    input [4:0] MEM_rs,
    input [4:0] MEM_rt,
    input [4:0] MEM_rd,
    input [31:0] MEM_REGrs,
    input [31:0] MEM_REGrt,
    input [31:0] MEM_Memory_data_out,
    input [31:0] MEM_ALU_Result,
    input [7:0] MEM_alu_flag,
    input [31:0] MEM_PC_next_4,
    output [5:0] MEM_opcode_WB,
    output [5:0] MEM_fun_WB,
    output [4:0] MEM_rs_WB,
    output [4:0] MEM_rt_WB,
    output [4:0] MEM_rd_WB,
    output [31:0] MEM_REGrs_WB,
    output [31:0] MEM_REGrt_WB,
    output [31:0] MEM_Memory_data_out_WB,
    output [31:0] MEM_ALU_Result_WB,
    output [7:0] MEM_alu_flag_WB,
    output [31:0] MEM_PC_next_4_WB
    );

    assign MEM_opcode_WB = MEM_opcode;
    assign MEM_fun_WB = MEM_fun;
    assign MEM_REGrs_WB = MEM_REGrs;
    assign MEM_REGrt_WB = MEM_REGrt;
    assign MEM_Memory_data_out_WB = MEM_Memory_data_out_WB;
    assign {MEM_rs_WB,MEM_rt_WB,MEM_rd_WB} = {MEM_rs,MEM_rt,MEM_rd};
    assign MEM_ALU_Result_WB = MEM_ALU_Result;
    assign MEM_alu_flag_WB = MEM_alu_flag;
    assign MEM_PC_next_4_WB = MEM_PC_next_4;

endmodule
