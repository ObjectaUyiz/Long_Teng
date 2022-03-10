`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/07/2022 12:42:56 AM
// Design Name: 
// Module Name: MIPS_CPU_TOP
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


module MIPS_CPU_TOP(

    );
    //Define different stage resources, include wire,reg etc.
    //IF
    //ALU
    wire [31:0] Alu_input_A,Alu_input_B;

    ID_Controller IDc();

    //IF stage
    Instruction_fetch If();
    //ID stage
    InstructionDecoder ID();

    Register_File RF();
    //EX stage

    ALU_module alu();
    //MEM stage
    DataMemory dataMem(.clka(clka),.ena(ena),.wea(wea),.addra(addra),.dina(dina),.clkb(clkb),.enb(enb),.addrb(addrb),.doutb(doutb));
    //WB stage
    

endmodule
