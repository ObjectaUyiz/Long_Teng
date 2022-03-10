`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2022 10:45:42 AM
// Design Name: 
// Module Name: designtest
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


module designtest(
    input clk,
    input [7:0] A,
    output reg [7:0] B,
    output [7:0] C
    );

    reg [7:0] temp;

    always@(posedge clk) begin
        temp <= A;
    end

    always@(posedge clk)begin
        B <= temp;
    end

    assign C = temp;

endmodule
