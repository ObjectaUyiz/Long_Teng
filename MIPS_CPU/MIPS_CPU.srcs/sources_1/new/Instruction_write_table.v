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
// 目前所有需要使用寄存器堆中的某个寄存器储存的数据的指令均需要使用本表，
// 使用寄存器堆时取出的数据有可能是之前某条指令需要写的寄存器，此时需要进行两种判断，
// 第一，最近的碰撞寄存器是哪一条指令的写寄存器，是alu的a输入还是b输入（rs or rt），
// 第二，需要判断碰撞的指令写数据的来源是ALU还是MEM，需要保存3个阶段的ALU的数据和3个阶段的MEM数据,
// 但是由于指令冲突判断在ID阶段，WB阶段的指令若存在写寄存器堆的行为可以直接翻译到当前取出的寄存器值，
// 从而不会导致数据的冲突，也就是仅剩MEM以及EXE阶段的数据会导致数据冲突，每个阶段的指令均存在两种可能，
// 第一，ALU数据；第二，MEM读出来的数据。当ID阶段的指令进行到EXE时，原EXE阶段的指令进行到MEM阶段，
// 此时可能会有2个数据，MEM_ALU_Result和MEM_Memory_data; 而对于之前MEM的指令目前进行到WB阶段，
// 回传的数据是WBsel，所以对于ALU的选择器仅需保留5个数据，当前的REG的数据，下一个阶段的MEM和ALUResult以及WBsel
// 而WBsel会保持一个周期，所以不需要担心脏数据的问题。从而可以解决读取数据的问题。
// instruction_write_reg_index 用于表明写寄存器堆的指令需要写的目标寄存器，
// instruction_write_reg_type 用于表明写寄存器堆的指令的数据来源是ALU运算还是MEM取回的数据，
// 若一条指令所需的原数据是从MEM取回的数据则在碰撞判断时需要特殊判断，转而为那个阶段的MEM数据
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
    reg [2:0] instruction_write_reg_index [0:38];
    reg [2:0] instruction_write_reg_type [0:38];
    always @(posedge areset) begin
        //写的目的寄存器一共3个 ////////////////rd,rt,31
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
        instruction_write_reg_index[35] = {3'b000};//SYSCALL
        instruction_write_reg_index[36] = {3'b000};//NOP
        instruction_write_reg_index[37] = {3'b000};//ERET
        instruction_write_reg_index[38] = {3'b000};//EMPTY_INSTRUCTION
    end

    always @(posedge areset) begin
        //写的来源寄存器一共2个 ////////////////0,mem,alu
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
        instruction_write_reg_type[35] = {3'b000};//SYSCALL
        instruction_write_reg_type[36] = {3'b000};//NOP
        instruction_write_reg_type[37] = {3'b000};//ERET
        instruction_write_reg_type[38] = {3'b000};//EMPTY_INSTRUCTION
    end

    assign Instruction_write_reg_index_out_A = instruction_write_reg_index[Instruction_num_A];
    assign Instruction_write_reg_index_out_B = instruction_write_reg_index[Instruction_num_B];
    assign Instruction_write_reg_index_out_C = instruction_write_reg_index[Instruction_num_C];
    assign Instruction_write_reg_type_out_A = instruction_write_reg_type[Instruction_num_A];
    assign Instruction_write_reg_type_out_B = instruction_write_reg_type[Instruction_num_B];
    assign Instruction_write_reg_type_out_C = instruction_write_reg_type[Instruction_num_C];

endmodule
