`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2022 10:43:54 AM
// Design Name: 
// Module Name: TOP test
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


module TOPtest(
    );
    reg clk;
    reg ena;
    reg reset;
    reg areset;
    reg [1:0] jumpena;
    reg emptyena;
    reg Ifena;
    wire [31:0] Instruction_ID;
    MIPS_CPU_TOP top(.clk(clk),.reset(reset),.areset(areset),.emptyena(emptyena),.Ifena(Ifena),.Instruction_ID(Instruction_ID),.jumpena(jumpena));
    always #8 clk = ~clk;
    initial begin
        emptyena = 0;
        reset = 1;
        jumpena = 0;
        clk = 1;
        Ifena=1;
        #16 Ifena = 0;
        //#16 Ifena = 1; jumpena = 1; emptyena = 1;
        //#16 Ifena = 0; jumpena = 0; emptyena = 1;
        //#64 reset = 0; jumpena = 2'b10;
        //#32 reset = 1;jumpena = 0;
        // #16 reset =1;
        // #50 emptyena =1; jumpena =1; Ifena=1;
        // #16 reset = 0;
        // #0 emptyena =0; jumpena =0; Ifena=0;reset = 1;
        
    end
endmodule
