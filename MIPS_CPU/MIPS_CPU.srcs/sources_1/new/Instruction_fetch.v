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
    input [2:0] I_sel,
    input [31:0] target_offset,
    input [31:0] instr_index,
    input [31:0] REGrs,
    input [31:0] EI_event_entry,
    input [31:0] return_pc,
    output [31:0] PC,
    output [31:0] PC_next
    );
    reg [31:0] PC_inter,PC_inter_next,temp_reg;
    reg [31:0] empty;

    reg [31:0] PC_temp,PC_inter_present;

    

    always@(*)begin
        PC_temp = areset?0:ena?PC_inter_present:PC_inter_next + 4;
        PC_inter_present = areset?0:ena?PC_inter_present:PC_inter_next;
        case(I_sel)
        3'b000: PC_inter = PC_temp;
        3'b001: PC_inter = target_offset + PC_next;
        3'b010: PC_inter = {PC_temp[31:28],instr_index[27:0]};
        3'b011: PC_inter = REGrs;
        3'b100: PC_inter = EI_event_entry;
        3'b101: PC_inter = 32'h00400020;
        default: PC_inter = 0;
        endcase
    end

    always@(posedge clk or posedge areset)begin
        if(areset) PC_inter_next <= 0;
        else begin
        PC_inter_next <= PC_inter;
        end
    end

    assign PC = emptyena?empty:PC_inter_next;
    assign PC_next = emptyena?empty:PC_temp;

endmodule
