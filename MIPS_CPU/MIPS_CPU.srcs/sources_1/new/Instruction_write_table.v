`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/22/2022 01:28:39 PM
// Design Name: 
// Module Name: Instruction_write_table
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


module Instruction_write_table(
    input areset,
    input [7:0] Instruction_num_A,
    input [7:0] Instruction_num_B,
    input [7:0] Instruction_num_C,
    output [2:0] Instruction_write_reg_index_out_A,
    output [2:0] Instruction_write_reg_index_out_B,
    output [2:0] Instruction_write_reg_index_out_C,
    output [2:0] Instruction_write_reg_type_out_A,
    output [2:0] Instruction_write_reg_type_out_B,
    output [2:0] Instruction_write_reg_type_out_C
    );
    reg [2:0] instruction_write_reg_index [0:35];
    reg [2:0] instruction_write_reg_type [0:35];
    always @(posedge areset) begin
        //写寄存器一共3个 ////////////////rd,rt,31
        instruction_write_reg_index[0] = {3'b000};//ERROR
        instruction_write_reg_index[1] = {3'b100};//ADD
        instruction_write_reg_index[2] = {3'b010};//ADDI
        instruction_write_reg_index[3] = {3'b100};//ADDU
        instruction_write_reg_index[4] = {3'b010};//ADDIU
        instruction_write_reg_index[5] = {3'b100};//SUB
        instruction_write_reg_index[6] = {3'b100};//SLT
        instruction_write_reg_index[7] = {3'b100};//MUL
        instruction_write_reg_index[8] = {3'b100};//AND
        instruction_write_reg_index[9] = {3'b010};//ANDI
        instruction_write_reg_index[10] = {3'b010};//LUI
        instruction_write_reg_index[11] = {3'b100};//OR
        instruction_write_reg_index[12] = {3'b010};//ORI
        instruction_write_reg_index[13] = {3'b100};//XOR
        instruction_write_reg_index[14] = {3'b010};//XORI
        instruction_write_reg_index[15] = {3'b100};//SLLV
        instruction_write_reg_index[16] = {3'b100};//SLL
        instruction_write_reg_index[17] = {3'b100};//SRAV
        instruction_write_reg_index[18] = {3'b100};//SRA
        instruction_write_reg_index[19] = {3'b100};//SRLV
        instruction_write_reg_index[20] = {3'b100};//SRL
        instruction_write_reg_index[21] = {3'b000};//BEQ
        instruction_write_reg_index[22] = {3'b000};//BNE
        instruction_write_reg_index[23] = {3'b000};//BGEZ
        instruction_write_reg_index[24] = {3'b000};//BGTZ
        instruction_write_reg_index[25] = {3'b000};//BLEZ
        instruction_write_reg_index[26] = {3'b000};//BLTZ
        instruction_write_reg_index[27] = {3'b000};//J
        instruction_write_reg_index[28] = {3'b001};//JAL
        instruction_write_reg_index[29] = {3'b000};//JR
        instruction_write_reg_index[30] = {3'b001};//JALR
        instruction_write_reg_index[31] = {3'b010};//LB
        instruction_write_reg_index[32] = {3'b010};//LW
        instruction_write_reg_index[33] = {3'b000};//SB
        instruction_write_reg_index[34] = {3'b000};//SW
        instruction_write_reg_index[35] = {3'b000};//EMPTY_INSTRUCTION
    end

    always @(posedge areset) begin
        //写寄存器一共3个 ////////////////0,mem,alu
        instruction_write_reg_type[0] = {3'b000};//ERROR
        instruction_write_reg_type[1] = {3'b001};//ADD
        instruction_write_reg_type[2] = {3'b001};//ADDI
        instruction_write_reg_type[3] = {3'b001};//ADDU
        instruction_write_reg_type[4] = {3'b001};//ADDIU
        instruction_write_reg_type[5] = {3'b001};//SUB
        instruction_write_reg_type[6] = {3'b001};//SLT
        instruction_write_reg_type[7] = {3'b001};//MUL
        instruction_write_reg_type[8] = {3'b001};//AND
        instruction_write_reg_type[9] = {3'b001};//ANDI
        instruction_write_reg_type[10] = {3'b001};//LUI
        instruction_write_reg_type[11] = {3'b001};//OR
        instruction_write_reg_type[12] = {3'b001};//ORI
        instruction_write_reg_type[13] = {3'b001};//XOR
        instruction_write_reg_type[14] = {3'b001};//XORI
        instruction_write_reg_type[15] = {3'b001};//SLLV
        instruction_write_reg_type[16] = {3'b001};//SLL
        instruction_write_reg_type[17] = {3'b001};//SRAV
        instruction_write_reg_type[18] = {3'b001};//SRA
        instruction_write_reg_type[19] = {3'b001};//SRLV
        instruction_write_reg_type[20] = {3'b001};//SRL
        instruction_write_reg_type[21] = {3'b000};//BEQ
        instruction_write_reg_type[22] = {3'b000};//BNE
        instruction_write_reg_type[23] = {3'b000};//BGEZ
        instruction_write_reg_type[24] = {3'b000};//BGTZ
        instruction_write_reg_type[25] = {3'b000};//BLEZ
        instruction_write_reg_type[26] = {3'b000};//BLTZ
        instruction_write_reg_type[27] = {3'b000};//J
        instruction_write_reg_type[28] = {3'b001};//JAL
        instruction_write_reg_type[29] = {3'b000};//JR
        instruction_write_reg_type[30] = {3'b001};//JALR
        instruction_write_reg_type[31] = {3'b010};//LB
        instruction_write_reg_type[32] = {3'b010};//LW
        instruction_write_reg_type[33] = {3'b000};//SB
        instruction_write_reg_type[34] = {3'b000};//SW
        instruction_write_reg_type[35] = {3'b000};//EMPTY_INSTRUCTION
    end

    assign Instruction_write_reg_index_out_A = instruction_write_reg_index[Instruction_num_A];
    assign Instruction_write_reg_index_out_B = instruction_write_reg_index[Instruction_num_B];
    assign Instruction_write_reg_index_out_C = instruction_write_reg_index[Instruction_num_C];
    assign Instruction_write_reg_type_out_A = instruction_write_reg_type[Instruction_num_A];
    assign Instruction_write_reg_type_out_B = instruction_write_reg_type[Instruction_num_B];
    assign Instruction_write_reg_type_out_C = instruction_write_reg_type[Instruction_num_C];

endmodule
