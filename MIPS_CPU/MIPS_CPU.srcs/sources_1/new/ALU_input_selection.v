`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/16/2022 12:57:40 PM
// Design Name: 
// Module Name: ALU_input_selection
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


module ALU_input_selection(
    input [2:0] Sel_alua,
    input [2:0] Sel_alub,
    input [31:0] REGrs,
    input [31:0] REGrt,
    input [31:0] Immediate,
    input [4:0] sa,
    input [31:0] REGrs_ALU_output_mem,
    input [31:0] REGrs_Memroy_data,
    input [31:0] REGrs_WB_data,
    input [31:0] REGrt_ALU_output_mem,
    input [31:0] REGrt_Memroy_data,
    input [31:0] REGrt_WB_data,
    output [31:0] ALU_inputA,
    output [31:0] ALU_inputB
    );

    reg [31:0] ALU_inputA_inter,ALU_inputB_inter;

    always @(*) begin
        case(Sel_alua)
        3'b000: ALU_inputA_inter = REGrs;
        3'b001: ALU_inputA_inter = sa;
        3'b010: ALU_inputA_inter = 16;
        3'b100: ALU_inputA_inter = REGrs_Memroy_data;
        3'b101: ALU_inputA_inter = REGrs_WB_data;
        3'b110: ALU_inputA_inter = REGrs_ALU_output_mem;
        default: ALU_inputA_inter = 0;
        endcase
    end

    always @(*) begin
        case(Sel_alub)
        3'b000: ALU_inputB_inter = REGrt;
        3'b001: ALU_inputB_inter = Immediate;
        3'b010: ALU_inputB_inter = 0;
        3'b100: ALU_inputB_inter = REGrt_Memroy_data;
        3'b101: ALU_inputB_inter = REGrt_WB_data;
        3'b110: ALU_inputB_inter = REGrt_ALU_output_mem;
        default:ALU_inputB_inter = 0;
        endcase
    end

    assign ALU_inputA = ALU_inputA_inter;
    assign ALU_inputB = ALU_inputB_inter;

endmodule
