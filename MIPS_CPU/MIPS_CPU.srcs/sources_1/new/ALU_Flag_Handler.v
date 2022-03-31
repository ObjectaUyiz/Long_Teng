`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/16/2022 12:57:40 PM
// Design Name: 
// Module Name: ALU_Flag_Handler
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


module ALU_Flag_Handler(
    input areset,
    input ena,
    input [7:0] ALU_Flag,
    input Exception_ena,
    output IntegerOverflow,
    output AluaLessAlub,
    output AlubLessAlua,
    output Aluaeb,
    output Zeroflag,
    output Aluaneb,
    output Exception_control
    );

    assign Exception_control = areset?0:Exception_ena&ALU_Flag[0];
    assign IntegerOverflow = areset?0:Exception_ena&ALU_Flag[0];
    assign AluaLessAlub = areset?0:ALU_Flag[2];
    assign AlubLessAlua = areset?0:ALU_Flag[3];
    assign Aluaeb = areset?0:ALU_Flag[1];
    assign Zeroflag = areset?0:ALU_Flag[1];
    assign Aluaneb = areset?0:~ALU_Flag[1];



endmodule
