`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/16/2022 04:44:56 PM
// Design Name: 
// Module Name: ID_EXE_var_convert
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


module ID_EXE_var_convert(
    input [5:0] ID_opcode,
    input [5:0] ID_fun,
    input [4:0] ID_rs,
    input [4:0] ID_rd,
    input [4:0] ID_rt,
    input [4:0] ID_sa,
    input [4:0] ID_rf_write_addr,
    input [31:0] ID_immediate,
    input [3:0] ID_sel_alu_op,
    input [31:0] ID_REGrs,
    input [31:0] ID_REGrt,
    input [31:0] ID_PC_next_4,
    input ID_SignalException,
    input [3:0] ID_data_rw_ena,
    output [5:0] ID_opcode_EXE,
    output [5:0] ID_fun_EXE,
    output [4:0] ID_rs_EXE,
    output [4:0] ID_rd_EXE,
    output [4:0] ID_rt_EXE,
    output [4:0] ID_sa_EXE,
    output [4:0] ID_rf_write_addr_EXE,
    output [31:0] ID_immediate_EXE,
    output [3:0] ID_sel_alu_op_EXE,
    output [31:0] ID_REGrs_EXE,
    output [31:0] ID_REGrt_EXE,
    output [31:0] ID_PC_next_4_EXE,
    output ID_SignalException_EXE,
    output [3:0] ID_data_rw_ena_EXE
    );

    assign ID_opcode_EXE = ID_opcode;
    assign ID_fun_EXE = ID_fun;
    assign ID_rs_EXE = ID_rs;
    assign ID_rd_EXE = ID_rd;
    assign ID_rt_EXE = ID_rt;
    assign ID_sa_EXE = ID_sa;
    assign ID_rf_write_addr_EXE = ID_rf_write_addr;
    assign ID_immediate_EXE = ID_immediate;
    assign ID_sel_alu_op_EXE = ID_sel_alu_op;
    assign ID_REGrs_EXE = ID_REGrs;
    assign ID_REGrt_EXE = ID_REGrt;
    assign ID_PC_next_4_EXE = ID_PC_next_4;
    assign ID_SignalException_EXE = ID_SignalException;
    assign ID_data_rw_ena_EXE = ID_data_rw_ena;
endmodule
