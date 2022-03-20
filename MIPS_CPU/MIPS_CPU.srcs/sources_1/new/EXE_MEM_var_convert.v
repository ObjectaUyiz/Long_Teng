`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/16/2022 04:20:02 PM
// Design Name: 
// Module Name: EXE_MEM_var_convert
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


module EXE_MEM_var_convert(
    input [5:0] EXE_opcode,
    input [5:0] EXE_fun,
    input [4:0] EXE_rs,
    input [4:0] EXE_rt,
    input [4:0] EXE_rd,
    input [31:0] EXE_immediate,
    input [31:0] EXE_ALU_Result,
    input [31:0] EXE_REGrs,
    input [31:0] EXE_REGrt,
    input [7:0] EXE_alu_flag,
    input EXE_Exception_event_control,
    input [3:0] EXE_data_rw_ena,
    input [31:0] EXE_PC_next_4,
    output [5:0] EXE_opcode_MEM,
    output [5:0] EXE_fun_MEM,
    output [4:0] EXE_rs_MEM,
    output [4:0] EXE_rt_MEM,
    output [4:0] EXE_rd_MEM,
    output [31:0] EXE_immediate_MEM,
    output [31:0] EXE_ALU_Result_MEM,
    output [31:0] EXE_REGrs_MEM,
    output [31:0] EXE_REGrt_MEM,
    output [7:0] EXE_alu_flag_MEM,
    output EXE_Exception_event_control_MEM,
    output [3:0] EXE_data_rw_ena_MEM,
    output [31:0] EXE_PC_next_4_MEM
    );

    assign EXE_opcode_MEM = EXE_opcode;
    assign EXE_fun_MEM = EXE_fun;
    assign EXE_rs_MEM = EXE_rs;
    assign EXE_rt_MEM = EXE_rt;
    assign EXE_rd_MEM = EXE_rd;
    assign EXE_immediate_MEM = EXE_immediate;
    assign EXE_ALU_Result_MEM = EXE_ALU_Result;
    assign EXE_REGrs_MEM = EXE_REGrs;
    assign EXE_REGrt_MEM = EXE_REGrt;
    assign EXE_alu_flag_MEM = EXE_alu_flag;
    assign EXE_Exception_event_control_MEM = EXE_Exception_event_control;
    assign EXE_data_rw_ena_MEM = EXE_data_rw_ena;
    assign EXE_PC_next_4_MEM = EXE_PC_next_4;

endmodule
