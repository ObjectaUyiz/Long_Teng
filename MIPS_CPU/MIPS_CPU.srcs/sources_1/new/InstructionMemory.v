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
    reg [31:0] InstMem[0:2047];

    initial begin
        InstMem[0] = 32'h34038000;
        InstMem[1] = 32'h00031c00;
        InstMem[2] = 32'h34010001;
        InstMem[3] = 32'h08100006;
        InstMem[4] = 32'h34011111;
        InstMem[5] = 32'h34011100;
        InstMem[6] = 32'h34010003;
        InstMem[7] = 32'h0c10000f;
        InstMem[8] = 32'h34011111;
        InstMem[9] = 32'h34011100;
        InstMem[10] = 32'h34011111;
        InstMem[11] = 32'h1420000e;
        InstMem[12] = 32'h00000000;
        InstMem[13] = 32'h34011100;
        InstMem[14] = 32'h34011111;
        InstMem[15] = 32'h34010004;
        InstMem[16] = 32'h10630009;
        InstMem[17] = 32'h03e00825;
        InstMem[18] = 32'h34011111;
        InstMem[19] = 32'h34011100;
        InstMem[20] = 32'h34010007;
        InstMem[21] = 32'h34010008;
        InstMem[22] = 32'h1c200007;
        InstMem[23] = 32'h34000009;
        InstMem[24] = 32'h34011111;
        InstMem[25] = 32'h34011100;
        InstMem[26] = 32'h34010005;
        InstMem[27] = 32'h0421fff8;
        InstMem[28] = 32'h34011111;
        InstMem[29] = 32'h34011100;
        InstMem[30] = 32'h3401000a;
        InstMem[31] = 32'h00000000;
        InstMem[32] = 32'h001f0825;
        InstMem[33] = 32'h3401000b;
        InstMem[34] = 32'h3401000c;
        InstMem[35] = 32'h3401000d;
        InstMem[36] = 32'h3401000e;
        InstMem[37] = 32'h04600002;
        InstMem[38] = 32'h3401000f;
        InstMem[39] = 32'h34011100;
        InstMem[40] = 32'h34010010;
        InstMem[41] = 32'h1820ffea;
        InstMem[42] = 32'h34010011;
        InstMem[43] = 32'h34010012;
        InstMem[44] = 32'h34010013;
        InstMem[45] = 32'h18600002;
        InstMem[46] = 32'h001f0825;
        InstMem[47] = 32'h34011100;
        InstMem[48] = 32'h34010014;
        InstMem[49] = 32'h00000000;
        InstMem[50] = 32'h08100032;
        InstMem[51] = 32'h00000000;
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
        // InstMem[0] = 32'h34018000;
        // InstMem[1] = 32'h00010c00;
        // InstMem[2] = 32'h34210010;
        // InstMem[3] = 32'h34028000;
        // InstMem[4] = 32'h00021400;
        // InstMem[5] = 32'h34420001;
        // InstMem[6] = 32'h34030000;
        // InstMem[7] = 32'h00411821;
        // InstMem[8] = 32'h34030000;
        // InstMem[9] = 32'h00411820;
        // InstMem[10] = 32'h00000000;
        // InstMem[11] = 32'h00000000;
        // InstMem[12] = 32'h00000000;
        // InstMem[13] = 32'h00000000;
        // InstMem[14] = 32'h00000000;
        // InstMem[500] = 32'h080003e8;//j to 1000
        // InstMem[1000] = 32'h7C000040;
        // InstMem[1001] = 32'h42000018;
        
    end
    
    assign Instruction = areset?InstMem[0]:InstMem[InstAddr];
    
endmodule
