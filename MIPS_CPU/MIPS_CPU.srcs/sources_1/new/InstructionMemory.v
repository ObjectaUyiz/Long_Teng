`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2022 11:44:29 AM
// Design Name: 
// Module Name: InstructionMemory
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


module InstructionMemory(
    input [11:2] InstAddr,
    output [31:0] Instruction
    );

    reg [31:0] InstMem[1023:0];
    initial begin
        InstMem[0] = 32'h34011100;
    end
    
    assign Instruction = InstMem[InstAddr];
    
endmodule
