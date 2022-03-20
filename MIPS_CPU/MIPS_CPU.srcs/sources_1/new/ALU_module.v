`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2022 09:49:18 AM
// Design Name: 
// Module Name: ALU_module
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


module ALU_module(
    input [5:0] opcode,
    input [5:0] fun,
    input [5:0] rt,
    input [31:0] inputA,//rs
    input [31:0] inputB,//rt,imm
    output reg [31:0] outputR,
    output [7:0] flag
    );
    parameter ERROR=0,ADD=1,ADDI=2,ADDU=3,ADDIU=4,SUB=5,SLT=6,MUL=7,AND=8,ANDI=9,LUI=10,
              OR=11,ORI=12,XOR=13,XORI=14,SLLV=15,SLL=16,SRAV=17,SRA=18,SRLV=19,
              SRL=20,BEQ=21,BNE=22,BGEZ=23,BGTZ=24,BLEZ=25,BLTZ=26,J=27,JAL=28,JR=29,JALR=30;
              //sign[0]/////////////////sign[1]//////////////sign[2]/////////sign[3]///////////sign[7]
    parameter IntegerOverflow=8'b00000001,Zero=8'b00000010,ALess=8'b00000100,BLess=8'b00001000,Error=8'b10000000;
    
    reg [7:0] sign;
    reg [4:0] state; 
    always @(*) begin
        case(opcode)
            6'b000000: state = (fun==6'b100000)?ADD:(fun==6'b100001)?ADDU:(fun==6'b100010)?SUB:
                                (fun==6'b101010)?SLT:(fun==6'b100100)?AND:(fun==6'b100101)?OR:
                                (fun==6'b100110)?XOR:(fun==6'b000100)?SLLV:(fun==6'b000000)?SLL:
                                (fun==6'b000111)?SRAV:(fun==6'b000011)?SRA:(fun==6'b000110)?SRLV:
                                (fun==6'b000010)?SRL:(fun==6'b001000)?JR:(fun==6'b001001)?JALR:ERROR;
            6'b001000: state = ADDI;
            6'b001001: state = ADDIU;
            6'b011100: state = MUL;
            6'b001100: state = ANDI;
            6'b001111: state = LUI;
            6'b001101: state = ORI;
            6'b001110: state = XORI;
            6'b000100: state = BEQ;
            6'b000101: state = BNE;
            6'b000001: state = rt[0]?BGEZ:BLTZ;
            6'b000111: state = BGTZ;
            6'b000110: state = BLEZ;
            6'b000010: state = J;
            6'b000011: state = JAL;
            default: state = ERROR;
        endcase
    end

    always@(*)begin
        case(state)
            ERROR: outputR = 32'hffff_ffff;
            ADDI,ADD: {sign[0],outputR} = {inputA[31],inputA} + {inputB[31],inputB};
            ADDIU,ADDU: outputR = inputA + inputB;
            SUB: {sign[0],outputR} = {inputA[31],inputA} - {inputB[31],inputB};
            SLT: {sign[0],outputR} = {inputA[31],inputA} - {inputB[31],inputB}; //A+~A = 1, A-B/ A == B, A+~B>0==>A>B 
            MUL: outputR = inputA*inputB;
            ANDI,AND: outputR = inputA&inputB;
            LUI: outputR = {inputB[15:0],16'h0000};
            ORI,OR: outputR = inputA|inputB;
            XORI,XOR: outputR = inputA^inputB;
            SLL,SLLV: outputR = inputB<<inputA[4:0];
            SRA,SRAV: outputR = inputB>>>inputA[4:0];
            SRL,SRLV: outputR = inputB>>inputA[4:0];
            BNE,BEQ: outputR = inputA - inputB;
            BLTZ,BLEZ: {sign[0],outputR} = {inputA[31],inputA} - {inputB[31],inputB};
            BGTZ,BGEZ: {sign[0],outputR} = {inputA[31],inputA} - {inputB[31],inputB};
            JALR,JR,JAL,J:;
            default:outputR = 32'hffff_ffff;
        endcase
    end

    assign flag[0] = ~(sign[0]==outputR[31]);
    assign flag[1] = ~|outputR;
    assign flag[2] = (sign[0]==outputR[31])&&outputR[31];
    assign flag[3] = (sign[0]==outputR[31])&&outputR[31];
    assign flag[7] = {8{(state==ERROR)}}&Error;

endmodule
