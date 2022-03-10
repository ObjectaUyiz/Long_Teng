`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/07/2022 03:33:17 PM
// Design Name: 
// Module Name: HaultDesignTest
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


module HaultDesignTest();
    reg clk;
    //reg clk2;
    reg reset;
    reg wena;
    reg [31:0] data;
    wire [31:0] data_IF_out;
    wire [31:0] data_ID_out;
    wire [31:0] data_EXE_out;
    wire [31:0] data_MEM_out;
    wire [31:0] data_WB_out;
    always #8 clk = ~clk;
    always #16 data = data+1'b1;
    
    HaultDesign hd(clk,reset,wena,data,data_IF_out,data_ID_out,data_EXE_out,data_MEM_out,data_WB_out);
    initial begin
        wena = 0;
        clk = 1;
        reset = 0;
        data = 32'h0000_000f;
        #16 wena=1;
        #1 wena=0;

        
    end

endmodule
