`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2022 06:56:41 PM
// Design Name: 
// Module Name: IF_ID_SIM
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


module IF_ID_SIM(

    );
    reg clk;
    reg areset;
    reg [1:0] pipeline_control;
    reg [31:0] Instruction_in;
    reg [31:0] PC_next_in;
    wire [31:0] IF_Instruction_ID;
    wire [31:0] IF_PC_next_ID;

    always #5 clk = ~clk;
    always #7 begin
        Instruction_in = Instruction_in+1;
        PC_next_in = PC_next_in+4;
    end
    IF_ID_registers ifid(clk,areset,pipeline_control,Instruction_in,PC_next_in,IF_Instruction_ID,IF_PC_next_ID);
    initial begin
    areset = 1; 
        pipeline_control = 0;
        Instruction_in = 0;
        PC_next_in = 0;
        clk = 0;#1 areset = 0;
    end
endmodule
