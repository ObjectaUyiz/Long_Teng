`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2022 05:59:45 PM
// Design Name: 
// Module Name: Instruction_fetch
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


module Instruction_fetch(
    input clk,
    input areset,
    input ena,
    input [1:0] I_sel,
    input [31:0] target_offset,
    input [25:0] instr_index,
    input [31:0] rs,
    output [31:0] PC,
    output [31:0] Instruction
    );
    reg [31:0] PC_inter,PC_next,PC_temp;

    always@(*)begin
        PC_temp = PC + 4;
        case(I_sel)
        2'b00: PC_inter = PC_temp;
        2'b01: PC_inter = target_offset + PC_next;
        2'b10: PC_inter = {PC_temp[31:28],instr_index<<2};
        2'b11: PC_inter = rs;
        endcase
    end


    InstructionMem IS(.clka(clk),.wea(1'b0),.addra(PC[11:2]),.douta(Instruction));

    always@(posedge clk or posedge areset)begin
        if(areset) PC_inter <= 0;
        case(ena)
        1'b1: PC_next <= PC_inter;
        1'b0: PC_next <= PC_next;
        endcase
    end

    assign PC = PC_next;

endmodule
