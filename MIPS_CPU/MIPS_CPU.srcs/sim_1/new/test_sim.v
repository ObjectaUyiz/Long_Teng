`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2022 10:53:49 AM
// Design Name: 
// Module Name: test_sim
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


module test_sim();

    reg clk;
    reg [7:0] A;
    wire [7:0] B;
    wire [7:0] C;

    
    always #8 clk = ~clk;
    designtest dt(clk,A,B,C);

    always@(posedge clk) A <= (A+1'b1)%256;
    initial begin
        clk = 1;
        A = 0;
    end


endmodule
