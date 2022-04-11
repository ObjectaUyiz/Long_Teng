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
// SYSCALL 6'b011111, 5'b00000, 5'b00000,,5'b00000, 5'b00001, 6'b000000
//////////////////////////////////////////////////////////////////////////////////


module InstructionMemory(
    input areset,
    input [11:2] InstAddr,
    output [31:0] Instruction
    );
    reg [31:0] InstMem[0:1023];

    initial begin
        // InstMem[0] = 32'h3403eeff;
        // InstMem[1] = 32'ha0030003;
        // InstMem[2] = 32'h00031a02;
        // InstMem[3] = 32'ha0030002;
        // InstMem[4] = 32'h3403ccdd;
        // InstMem[5] = 32'ha0030001;
        // InstMem[6] = 32'h00031a02;
        // InstMem[7] = 32'ha0030000;
        // InstMem[8] = 32'h80010003;
        // InstMem[9] = 32'h34034455;
        // InstMem[10] = 32'h00031c00;
        // InstMem[11] = 32'h34636677;
        // InstMem[12] = 32'hac030008;
        // InstMem[13] = 32'h8c010008;
        // InstMem[14] = 32'h00000000;
        InstMem[0] = 32'h34018000;
        InstMem[1] = 32'h00010c00;
        InstMem[2] = 32'h34210010;
        InstMem[3] = 32'h34028000;
        InstMem[4] = 32'h00021400;
        InstMem[5] = 32'h34420001;
        InstMem[6] = 32'h34030000;
        InstMem[7] = 32'h00411821;
        InstMem[8] = 32'h34030000;
        InstMem[9] = 32'h00411820;
        InstMem[10] = 32'h00000000;
        InstMem[11] = 32'h00000000;
        InstMem[12] = 32'h00000000;
        InstMem[13] = 32'h00000000;
        InstMem[14] = 32'h00000000;
        InstMem[500] = 32'h080003e8;//j to 1000
        InstMem[1000] = 32'h7C000040;
        InstMem[1001] = 32'h42000018;
    end
    
    assign Instruction = areset?InstMem[0]:InstMem[InstAddr];
    
endmodule
