`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2022 05:24:19 PM
// Design Name: 
// Module Name: ALU_test
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


module ALU_test(
    );
    reg clk;
    reg [5:0] opcode;
    reg [5:0] fun;
    reg [5:0] rt;
    reg [31:0] inputA;
    reg [31:0] inputB;
    wire [31:0] outputR;
    wire [7:0] flag;
    always #8 clk = ~clk;
    ALU_module a(opcode,fun,rt,inputA,inputB,outputR,flag);
    initial begin
        clk=1;
        opcode = 0;
        fun = 6'b100000;
        rt = 0;
        inputA = 32'h0fff_ffff;
        inputB = 32'h0000_ffff;
    end
    always@(posedge clk) begin
        inputA <=  inputA+1'b1;
    end
endmodule
