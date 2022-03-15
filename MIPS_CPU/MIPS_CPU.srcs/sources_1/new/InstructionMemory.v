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
        InstMem[0] = 1;
        InstMem[1] = 2;
        InstMem[2] = 3;
        InstMem[3] = 4;
        InstMem[4] = 5;
        InstMem[5] = 6;
        InstMem[6] = 7;
        InstMem[7] = 8;
        InstMem[8] = 9;
        InstMem[9] = 10;
        InstMem[10] = 11;
        InstMem[11] = 12;
        InstMem[12] = 13;
        InstMem[13] = 14;
    end
    
    assign Instruction = InstMem[InstAddr];
endmodule
