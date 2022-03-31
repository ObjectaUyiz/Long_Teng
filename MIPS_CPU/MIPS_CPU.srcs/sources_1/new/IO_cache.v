`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/17/2022 12:02:16 PM
// Design Name: 
// Module Name: IO_cache
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


module IO_cache(
    input clk,
    input IOena,
    input [31:0] Data_in,
    output [31:0] Data_o
    );

    assign Data_o = Data_in;
    
endmodule
