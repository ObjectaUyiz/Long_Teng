`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/17/2022 12:02:16 PM
// Design Name: 
// Module Name: datamemory_writecontrol
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


module datamemory_writecontrol(
    input [5:0] opcode,
    output [1:0] data_wr_type
    );

    reg [1:0] data_wr_type_inter;

    always@(*) begin
        case(opcode)
        6'b100000:data_wr_type_inter <= 2'b01;
        6'b100011:data_wr_type_inter <= 2'b00;
        6'b101000:data_wr_type_inter <= 2'b11;
        6'b101011:data_wr_type_inter <= 2'b10;
        default:;
        endcase
    end

    assign data_wr_type = data_wr_type_inter;

endmodule
