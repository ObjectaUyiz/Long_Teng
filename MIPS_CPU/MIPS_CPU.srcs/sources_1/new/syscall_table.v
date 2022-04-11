`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/01/2022 01:20:22 PM
// Design Name: 
// Module Name: syscall_table
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
// fun == 0 output is the decimal of the REG[rs]
//////////////////////////////////////////////////////////////////////////////////


module syscall_table(
    input areset,
    input ena,
    input [5:0] syscall_fun,
    input [4:0] syscall_sa,
    output [5:0] syscall_type,
    output [4:0] syscall_addr
    );

    reg [5:0] syscall_type_inter;
    reg [4:0] syscall_addr_inter;

    always @(*) begin
        if(areset) begin
            syscall_type_inter = 0;
        end
        else begin
            if(ena) begin
            case(syscall_fun)
            0: syscall_type_inter = 1;
            default: syscall_type_inter = 0;
            endcase
            end
            else begin
                syscall_type_inter = 0;
            end
        end
    end

    always @(*) begin
        if(areset) begin
            syscall_addr_inter = 0;
        end
        else begin
        end
    end

    assign syscall_type = syscall_type_inter;
    assign syscall_addr = syscall_addr;

endmodule
