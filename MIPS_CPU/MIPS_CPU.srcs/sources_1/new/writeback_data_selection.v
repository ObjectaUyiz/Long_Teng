`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2022 01:54:28 PM
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
    reg [1:0] sel_wb_data;

    always@(*)begin
        case(opcode)
        6'b100000: sel_wb_data <= 2'b11;
        6'b100011: sel_wb_data <= 2'b10;
        6'b000011: sel_wb_data <= 2'b01;
        6'b000000: sel_wb_data <= (fun==6'b001001)?2'b01:2'b00;
        default: sel_wb_data <= 2'b00;
        endcase
    end

    always@(*) begin
        case(sel_wb_data)
        2'b00:data_wb_inter <= alu_result;
        2'b01:data_wb_inter <= PC_next_a4;
        2'b10:data_wb_inter <= mem_dataout;
        2'b11:data_wb_inter <= {{24{mem_dataout[7]}},mem_dataout[7:0]};
        default:;
        endcase
    end
    assign data_wb = data_wb_inter;

endmodule
