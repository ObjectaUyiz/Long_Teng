`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/15/2022 05:24:32 PM
// Design Name: 
// Module Name: PC_next_add4
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


module PC_next_add4(
    input [31:0] PC_next,
    output [31:0] PC_next_4
    );

    assign PC_next_4 = PC_next + 4;
    
endmodule
