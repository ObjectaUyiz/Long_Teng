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
    input emptyena,
    input [1:0] I_sel,
    input [31:0] target_offset,
    input [25:0] instr_index,
    input [31:0] rs,
    output [31:0] PC,
    output [31:0] PC_next
    );
    reg [31:0] PC_inter,PC_inter_next,PC_temp;
    reg [31:0] PC_control,PC_next_control;
    reg [31:0] empty;
    reg [1:0] counter;
    initial begin
        PC_inter_next = 0;
    end

    always@(*)begin
        PC_temp = PC_inter_next + 4;
        case(I_sel)
        2'b00: PC_inter = PC_temp;
        2'b01: PC_inter = target_offset + PC_next;
        2'b10: PC_inter = {PC_temp[31:28],instr_index<<2};
        2'b11: PC_inter = rs;
        endcase
    end

    always@(posedge clk or posedge areset)begin
        if(areset) PC_inter_next <= 0;
        else begin
        case(ena)
        1'b0: PC_inter_next <= PC_inter;
        1'b1: PC_inter_next <= PC_inter_next;
        endcase
        end
    end

    always@(posedge clk)begin
        counter <= (counter==0)?1:counter-1;
    end

    assign PC = emptyena?empty:PC_inter_next;
    assign PC_next = emptyena?empty:PC_temp;

endmodule
