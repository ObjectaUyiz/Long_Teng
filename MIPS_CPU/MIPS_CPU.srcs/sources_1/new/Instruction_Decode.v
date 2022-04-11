`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2022 11:02:23 PM
// Design Name: 
// Module Name: InstructionDecoder
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

//SYSCALL
//opcode indicate this is a SYSCALL 
//rs indecate which register this instruction want to output
//fun indicate the function number

module InstructionDecoder(
    input [31:0] Instruction,
    output [5:0] opcode,
    output [4:0] rs,
    output [4:0] rt,
    output [4:0] rd,
    output [4:0] sa,
    output [5:0] fun,
    output [15:0] imm,
    output [25:0] instr_index
    );

    assign opcode = Instruction[31:26];
    assign rs = Instruction[25:21];
    assign rt = Instruction[20:16];
    assign rd = Instruction[15:11];
    assign sa = Instruction[10:6];
    assign fun = Instruction[5:0];
    assign imm = Instruction[15:0];
    assign instr_index = Instruction[25:0];

endmodule
