`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/17/2022 12:02:16 PM
// Design Name: 
// Module Name: Datamemory_addr_translater
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


module Datamemory_addr_translater(
    input [5:0] opcode,
    input [31:0] V_address,
    output [31:0] P_address,
    output AddrException
    );
    reg [31:0] P_address_inter;
    reg AddrException_inter;

    always@(*)begin
        case(opcode)
        6'b100011,6'b101011: AddrException_inter <= (V_address[0]|V_address[1])?1'b1:0;
        default: AddrException_inter <= 0;
        endcase
    end

    always@(*)begin
        case(V_address[31])
        1'b1:P_address_inter <= {V_address[31],16'b0,V_address[15:0]};
        1'b0:P_address_inter <= {V_address[31],16'b0,V_address[15:0]};
        endcase
    end

    assign P_address = P_address_inter;
    assign AddrException = AddrException_inter;
endmodule
