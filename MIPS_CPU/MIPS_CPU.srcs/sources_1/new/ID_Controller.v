`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/07/2022 10:31:29 AM
// Design Name: 
// Module Name: ID_Controller
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


module ID_Controller(
    input clk,
    input reset,
    input areset,
    input [31:0] Instruction,
    input [7:0] Aluflag_wb,
    output [1:0] Sel_PC_out,
    output [1:0] Sel_REG_w_out,
    output [1:0] Sel_Imm_out,
    output Sel_REG_w_ena_out,
    output Sel_extend_out,
    output [1:0] IF_Pipeline_ID,
    output [1:0] ID_Pipeline_EXE,
    output [1:0] EXE_Pipeline_MEM,
    output [1:0] MEM_Pipeline_WB,
    output [2:0] Sel_alua_out,
    output [2:0] Sel_alub_out,
    output [2:0] Jump_condition_out,
    output SignalException_out,
    output Ifena,
    output Data_WR_out,
    output Data_WR_Byte_out,
    output [1:0] Sel_WB_data_out
    );
    parameter   ERROR=0,ADD=1,ADDI=2,ADDU=3,ADDIU=4,SUB=5,SLT=6,MUL=7,AND=8,ANDI=9,LUI=10,
                OR=11,ORI=12,XOR=13,XORI=14,SLLV=15,SLL=16,SRAV=17,SRA=18,SRLV=19,
                SRL=20,BEQ=21,BNE=22,BGEZ=23,BGTZ=24,BLEZ=25,BLTZ=26,J=27,JAL=28,JR=29,
                JALR=30,LB=31,LW=32,SB=33,SW=34;
    parameter   IntegerOverflow=0,Zero=1,ALess=2,BLess=3,Error=7;
    reg [5:0] state_EXE,state_ID,state_MEM,state_WB;

    reg [1:0] IF_Pipeline_ID_inter,ID_Pipeline_EXE_inter,EXE_Pipeline_MEM_inter,MEM_Pipeline_WB_inter;

    //IF stage selecter
    reg [1:0] Sel_PC;
    reg Ifena_inter;
    //ID stage selecter
    reg [1:0] Sel_REG_w,Sel_Imm;
    reg Sel_REG_w_ena,Sel_extend;
    reg [4:0] Sel_pipeline;
    //EXE stage selecter
    reg [2:0] Sel_alua,Sel_alub,Jump_condition;
    reg SignalException;
    reg [1:0] Jump_control;
    reg [3:0] sel_alu_op;
    //MEM stage selecter
    reg Data_WR,Data_WR_Byte;
    //WB stage selecter
    reg [1:0] Sel_WB_data;
    
    wire [4:0] rs,rt,rd,sa;
    wire [5:0] opcode,fun;

    assign {opcode,rs,rt,rd,sa,fun} = Instruction;
    always@(*)begin
        case(opcode)
            6'b000000: state_ID = (fun==6'b100000)?ADD:(fun==6'b100001)?ADDU:(fun==6'b100010)?SUB:
                                (fun==6'b101010)?SLT:(fun==6'b100100)?AND:(fun==6'b100101)?OR:
                                (fun==6'b100110)?XOR:(fun==6'b000100)?SLLV:(fun==6'b000000)?SLL:
                                (fun==6'b000111)?SRAV:(fun==6'b000011)?SRA:(fun==6'b000110)?SRLV:
                                (fun==6'b000010)?SRL:(fun==6'b001000)?JR:(fun==6'b001001)?JALR:ERROR;
            6'b001000: state_ID = ADDI;
            6'b001001: state_ID = ADDIU;
            6'b011100: state_ID = MUL;
            6'b001100: state_ID = ANDI;
            6'b001111: state_ID = LUI;
            6'b001101: state_ID = ORI;
            6'b001110: state_ID = XORI;
            6'b000100: state_ID = BEQ;
            6'b000101: state_ID = BNE;
            6'b000001: state_ID = rt[0]?BGEZ:BLTZ;
            6'b000111: state_ID = BGTZ;
            6'b000110: state_ID = BLEZ;
            6'b000010: state_ID = J;
            6'b000011: state_ID = JAL;
            6'b100000: state_ID = LB;
            6'b100011: state_ID = LW;
            6'b101000: state_ID = SB;
            6'b101011: state_ID = SW;
        endcase
    end

    always@(*)begin
        if(areset) {IF_Pipeline_ID_inter,ID_Pipeline_EXE_inter,EXE_Pipeline_MEM_inter,MEM_Pipeline_WB_inter} = 0;
        else begin
            
        end
    end

    always@(*)begin
        if(areset) Ifena_inter = 0;
        else begin
            
        end
    end
    
    always@(*)begin
        case(state_ID)
            ADDI:begin Sel_REG_w = 2'b01;end  
            ADDIU:begin Sel_REG_w = 2'b01;end
            ANDI:begin Sel_REG_w = 2'b01;end 
            LUI:begin Sel_REG_w = 2'b01;end//逻辑左移16位
            ORI:begin Sel_REG_w = 2'b01;end
            XOR:begin Sel_REG_w = 2'b00; end
            XORI:begin Sel_REG_w = 2'b01;end
            JAL:begin Sel_REG_w = 2'b10; end
            LB:begin Sel_REG_w = 2'b01; end
            LW:begin Sel_REG_w = 2'b01;end
            default:Sel_REG_w = 2'b00;
        endcase
    end

    always@(*)begin
        case(state_ID)
            ADD,ADDU,SUB,SLT,MUL,AND,OR,XOR,SLLV,SRAV,BEQ,BNE:begin Sel_alua=3'b000;Sel_alub=3'b000;end
            ADDI,ADDIU,LB,LW,SB,SW:begin Sel_alua=3'b000;Sel_alub=3'b001;end
            ANDI,ORI,XORI:begin Sel_alua=3'b000;Sel_alub=3'b010;end
            LUI:begin Sel_alua=3'b010;Sel_alub=3'b010;end
            BGEZ,BGTZ,BLEZ,BLTZ:begin Sel_alua=3'b010;Sel_alub=3'b010;end
            default:;
        endcase
    end

    always@(*)begin
        case(state_ID)
            ADD,ADDU,SUB,LW,SW:SignalException=1;
            default:SignalException=0;
        endcase
    end

    always@(*)begin
        case(state_ID)
            ADD,ADDI,ADDU,ADDIU,LB,LW,SB,SW:sel_alu_op = 4'b0000;
            SUB,SLT,BEQ,BNE,BGEZ,BGTZ,BLEZ,BLTZ:sel_alu_op=4'b0001;
            MUL:sel_alu_op=4'b0010;
            AND,ANDI:sel_alu_op=4'b0011;
            LUI,SLLV,SLL:sel_alu_op=4'b0100;
            OR,ORI,XOR,XORI:sel_alu_op=4'b0101;
            SRAV,SRA:sel_alu_op=4'b0110;
            SRLV,SRL:sel_alu_op=4'b0111;
            default:;
        endcase
    end

    always@(*)begin
        case(state_MEM)
            LB:begin Data_WR=0;Data_WR_Byte=1;end
            LW:begin Data_WR=0;Data_WR_Byte=0;end
            SB:begin Data_WR=1;Data_WR_Byte=1;end
            SW:begin Data_WR=1;Data_WR_Byte=0;end
            default:Data_WR=0;
        endcase
    end

    always@(*)begin
        case(state_ID)
            JAL,JALR:Sel_WB_data=2'b10;
            SB,SW:Sel_WB_data=2'b11;
            default:Sel_WB_data=2'b00;
        endcase
    end

    always@(*)begin
        case(state_ID)
            BEQ: Jump_condition = 3'b000;
            BNE: Jump_condition = 3'b010;
            BGEZ: Jump_condition = 3'b011;
            BGTZ: Jump_condition = 3'b100;
            BLEZ: Jump_condition = 3'b101;
            BLTZ: Jump_condition = 3'b110;
            default:Jump_condition = 3'b110;
        endcase
    end

    //pipeline control: 1.计时器 2.首尾监测法 3.
    always@(*)begin
        case(state_ID)
            BEQ,BNE,BGEZ,BGTZ,BLEZ,BLTZ,J,JAL: Sel_pipeline = 5'b00001;
            default: ;
        endcase
        case(state_WB)
            BEQ,BNE,BGEZ,BGTZ,BLEZ,BLTZ,J,JAL: Sel_pipeline = 5'b00000;
            default: ;
        endcase
    end

    always@(*)begin
        case(state_ID)
            ADDI:begin Sel_Imm=2'b00;Sel_extend=1; end 
            ADDIU:begin Sel_Imm=2'b00;Sel_extend=1; end
            ANDI:begin Sel_Imm=2'b00;Sel_extend=0; end 
            LUI:begin Sel_Imm=2'b00;Sel_extend=0; end//逻辑左移16位
            ORI:begin Sel_Imm=2'b00;Sel_extend=0; end
            XORI:begin Sel_Imm=2'b00;Sel_extend=0; end
            BEQ:begin Sel_Imm=2'b10;Sel_extend=1; end
            BNE:begin Sel_Imm=2'b10;Sel_extend=1; end
            BGEZ:begin Sel_Imm=2'b10;Sel_extend=1; end
            BGTZ:begin Sel_Imm=2'b10;Sel_extend=1; end
            BLEZ:begin Sel_Imm=2'b10;Sel_extend=1; end
            BLTZ:begin Sel_Imm=2'b10;Sel_extend=1; end
            J:begin Sel_Imm=2'b11;Sel_extend=0; end
            JAL:begin Sel_Imm=2'b11;Sel_extend=0; end
            LB:begin Sel_Imm=2'b01;Sel_extend=1; end
            LW:begin ;Sel_Imm=2'b01;Sel_extend=1; end
            SB:begin Sel_Imm=2'b01;Sel_extend=1; end
            SW:begin Sel_Imm=2'b01;Sel_extend=1; end
            default:;
        endcase
    end

    always@(*) begin
        case(state_WB)
            BEQ:begin Sel_PC = Aluflag_wb[Zero]?2'b01:2'b00;Sel_REG_w_ena=0; end
            BNE:begin Sel_PC = Aluflag_wb[Zero]?2'b00:2'b01;Sel_REG_w_ena=0; end
            BGEZ:begin Sel_PC = Aluflag_wb[BLess]|Aluflag_wb[Zero]?2'b01:2'b00;Sel_REG_w_ena=0; end
            BGTZ:begin Sel_PC = Aluflag_wb[BLess]?2'b01:2'b00;Sel_REG_w_ena=0;end
            BLEZ:begin Sel_PC = Aluflag_wb[ALess]|Aluflag_wb[Zero]?2'b01:2'b00;end
            BLTZ:begin Sel_PC = Aluflag_wb[ALess]?2'b01:2'b00;end
            JAL,J:begin Sel_PC = 2'b10;Sel_REG_w_ena=0; end
            JR:begin Sel_PC = 2'b11;Sel_REG_w_ena=0; end
            JALR: begin Sel_PC = 2'b11;Sel_REG_w_ena=1; end
            LB:begin Sel_PC = 2'b00;Sel_REG_w_ena=1; end
            LW:begin Sel_PC = 2'b00;Sel_REG_w_ena=1; end
            default: begin Sel_PC = 2'b00;Sel_REG_w_ena=0;end
        endcase
    end

    always@(posedge clk)begin
        state_EXE <= state_ID;
        state_MEM <= state_EXE;
        state_WB <= state_MEM;
    end

    assign Sel_PC_out = Sel_PC;
    assign Sel_REG_w_out = Sel_REG_w;
    assign Sel_Imm_out = Sel_Imm;
    assign Sel_REG_w_ena_out = Sel_REG_w_ena;//下降沿写入
    assign Sel_extend_out = Sel_extend;
    assign Sel_pipeline_out = Sel_pipeline;
    assign Sel_alua_out = Sel_alua;
    assign Sel_alub_out = Sel_alub;
    assign SignalException_out = SignalException;
    assign Data_WR_out = Data_WR;
    assign Data_WR_Byte_out = Data_WR_Byte;
    assign Sel_WB_data_out = Sel_WB_data;
    assign Jump_condition_out = Jump_condition;
    assign IF_Pipeline_ID = IF_Pipeline_ID_inter;
    assign ID_Pipeline_EXE = ID_Pipeline_EXE_inter;
    assign EXE_Pipeline_MEM = EXE_Pipeline_MEM_inter;
    assign MEM_Pipeline_WB = MEM_Pipeline_WB_inter;

endmodule
