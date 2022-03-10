`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2022 10:40:18 PM
// Design Name: 
// Module Name: IF_test
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


module IF_test();
    reg clk;
    reg [1:0] I_sel;
    reg ena;
    reg [31:0] target_offset;
    reg [25:0] instr_index;
    reg [31:0] rs;
    reg areset;
    wire [31:0] PC;
    wire [31:0] Instruction;
    always #8 clk = ~clk;

    Instruction_fetch If(clk,areset,ena,I_sel,target_offset,instr_index,rs,PC,Instruction);
    initial begin
        ena = 1;
        clk = 0;
        I_sel = 2'b00;
        target_offset = 0;
        instr_index = 0;
        rs = 0;
        areset = 0;
        #100 areset = 1;
        #10 areset = 0;
        #1 ena = 0;
    end

endmodule
