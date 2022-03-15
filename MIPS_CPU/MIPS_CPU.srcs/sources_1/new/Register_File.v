`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2022 07:10:49 PM
// Design Name: 
// Module Name: Register_File
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


module Register_File(
    input clk,
    input wirte_ena,
    input [4:0] RAddr_A,
    input [4:0] RAddr_B,
    input [4:0] WAddr_C,
    input [31:0] WData_C,
    output reg [31:0] RData_A,
    output reg [31:0] RData_B
    );
    reg [31:0] Register_Pile[0:31];

    always@(*) begin
        RData_A <= Register_Pile[RAddr_A];
        RData_B <= Register_Pile[RAddr_B];
    end

    always@(negedge clk) begin
        if(wirte_ena)begin
        case(WAddr_C)
            0: Register_Pile[0] <= 0;
            default: Register_Pile[WAddr_C] <= WData_C;
        endcase
        end
        else begin end
    end


endmodule
