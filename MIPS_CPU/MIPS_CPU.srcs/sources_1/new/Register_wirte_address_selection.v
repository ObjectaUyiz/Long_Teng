`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/15/2022 05:24:32 PM
// Design Name: 
// Module Name: Register_wirte_address_selection
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


module Register_wirte_address_selection(
    input [1:0] sel_REG_w,
    input [4:0] RT,
    input [4:0] RD,
    input [4:0] Constant,
    output [4:0] REG_write_addr
    );

    reg REG_write_addr_inter;

    always@(*)begin
        case(sel_REG_w)
        2'b00: REG_write_addr_inter = RD;
        2'b01: REG_write_addr_inter = RT;
        2'b10: REG_write_addr_inter = Constant;
        default:REG_write_addr_inter = 0;
        endcase
    end

    assign REG_write_addr = REG_write_addr_inter;

endmodule
