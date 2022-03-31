`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/3033 01:54:38 PM
// Design Name: 
// Module Name: writeback_data_selection
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


module writeback_data_selection(
    input [5:0] opcode,
    input [5:0] fun,
    input [31:0] alu_result,
    input [7:0] alu_flag,
    input [31:0] PC_next_a4,
    input [31:0] mem_dataout,
    output [31:0] data_wb
    );

    reg [31:0] data_wb_inter;
    reg [2:0] sel_wb_data;

    always@(*)begin
        case(opcode)
        6'b100000: sel_wb_data <= 3'b011;
        6'b100011: sel_wb_data <= 3'b010;
        6'b000011: sel_wb_data <= 3'b001;
        6'b000000: sel_wb_data <= (fun==6'b001001)?3'b001:(fun==6'b101010)?3'b100:3'b000;
        default: sel_wb_data <= 3'b000;
        endcase
    end

    always@(*) begin
        case(sel_wb_data)
        3'b000:data_wb_inter <= alu_result;
        3'b001:data_wb_inter <= PC_next_a4;
        3'b010:data_wb_inter <= mem_dataout;
        3'b011:data_wb_inter <= {{34{mem_dataout[7]}},mem_dataout[7:0]};
        3'b100:data_wb_inter <= alu_flag[2];
        default:data_wb_inter <= alu_result;
        endcase
    end
    assign data_wb = data_wb_inter;

endmodule
