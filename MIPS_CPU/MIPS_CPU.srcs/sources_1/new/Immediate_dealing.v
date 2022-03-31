`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/15/2022 05:24:32 PM
// Design Name: 
// Module Name: Immediate_dealing
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


module Immediate_dealing(
    input areset,
    input [1:0] Sel_imm,
    input Sel_extend,
    input [15:0] Immediate_in,
    input [25:0] instr_index,
    output [31:0] Immediate
    );
    
    reg [31:0] Immediate_inter;

    always@(*)begin
        case(Sel_imm)
        2'b01,2'b00: Immediate_inter = (Sel_extend)?{{16{Immediate_in[15]}},Immediate_in}:Immediate_in;
        2'b10: Immediate_inter = (Sel_extend)?{{14{Immediate_in[15]}},Immediate_in<<2}:Immediate_in<<2;
        2'b11: Immediate_inter = {4'b0,instr_index<<2};
        default:;
        endcase
    end

    assign Immediate = areset?0:Immediate_inter;
endmodule
