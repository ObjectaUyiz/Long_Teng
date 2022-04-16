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
    input Zeroflag,
    input AluaLessAlubflag,
    input AlubLessAluaflag,
    input Aluaebflag,
    input Aluanebflag,
    input IntegerOverflowflag,
    input EXL_status,
    input [7:0] Exception_busy,
    output [2:0] Sel_PC,
    output [1:0] Sel_REG_w,
    output [1:0] Sel_Imm,
    output Sel_REG_w_ena,
    output Sel_extend,
    output [1:0] IF_Pipeline_ID,
    output [1:0] ID_Pipeline_EXE,
    output [1:0] EXE_Pipeline_MEM,
    output [1:0] MEM_Pipeline_WB,
    output [2:0] Sel_alua,
    output [2:0] Sel_alub,
    output [3:0] Sel_alu_op,
    output SignalException,
    output Ifena,
    output clear,
    output [1:0] Sel_WB_data_out,
    output [2:0] Mem_wmdata_sel,
    output [5:0] Memory_Data_rw_ena,
    output InteruptEna,
    output syscall_table_ena,
    output Err_instruction,
    output Empty_ins
    );
    //异常类型：溢出，中断，系统调用？，地址错，异常指令保留
    parameter   ERROR=0,EMPTY_INSTRUCTION=38,ADD=1,ADDI=2,ADDU=3,ADDIU=4,SUB=5,SLT=6,MUL=7,AND=8,ANDI=9,LUI=10,
                OR=11,ORI=12,XOR=13,XORI=14,SLLV=15,SLL=16,SRAV=17,SRA=18,SRLV=19,
                SRL=20,BEQ=21,BNE=22,BGEZ=23,BGTZ=24,BLEZ=25,BLTZ=26,J=27,JAL=28,JR=29,
                JALR=30,LB=31,LW=32,SB=33,SW=34,SYSCALL=35,NOP=36,ERET=37;
    parameter   IntegerOverflow=0,Zero=1,ALess=2,BLess=3,Error=7;
    parameter   conflict=1, nconflict=0;
    parameter   A=0,exe=0,B=1,mem=1,C=2,wb=2,D=3,E=4,F=5,G=6,H=7,I=8,K=9,L=10,M=11,N=12,O=13,P=14,E_I=15;
    parameter [34:0] write_map = {2'b00,3'b111,1'b0,1'b1,7'b0000000,20'b11111111111111111111,1'b0};//有哪些指令需要写寄存器
    
    reg InteruptEna_inter,syscall_table_ena_inter,Err_instruction_inter,Empty_ins_inter;
    wire [2:0] writereg_index_EXE,writereg_index_MEM,writereg_index_WB; 
    wire [2:0] writereg_type_EXE,writereg_type_MEM,writereg_type_WB;
    reg [127:0] conflict_map;//维护一张表，其中包含5个阶段中的各个指令的位置，当最后一个阶段结束后自动回0
    reg [31:0] SYSCALL_instruction;
    reg [7:0] state,state_next,sel_state,sel_state_EI;
    reg [7:0] state_IF,state_ID,state_EXE,state_MEM,state_WB,state_conflict;
    reg [1:0] IF_Pipeline_ID_inter,ID_Pipeline_EXE_inter,EXE_Pipeline_MEM_inter,MEM_Pipeline_WB_inter;
    reg [5:0] opcode,fun,fun_id,fun_exe,fun_mem,fun_wb;
    reg [4:0] rs,rt,rd,sa,sa_id,sa_exe,sa_mem,sa_wb,rs_id,rt_id,rd_id,rs_exe,rt_exe,rd_exe,rs_mem,rt_mem,rd_mem,rs_wb,rt_wb,rd_wb,conf_reg_exe,conf_reg_mem,conf_reg_wb;
    //IF stage selecter
    reg [2:0] Sel_PC_inter;
    reg Ifena_inter;
    //ID stage selecter
    reg [1:0] Sel_REG_w_inter,Sel_Imm_inter;
    reg Sel_REG_w_ena_inter,Sel_extend_inter;
    reg [4:0] Sel_pipeline;
    //EXE stage selecter
    reg [2:0] sel_alua_conflict,sel_alub_conflict;
    reg [2:0] Sel_alua_inter,Sel_alub_inter,Jump_condition;
    reg SignalException_inter;
    reg [1:0] Jump_control;
    reg [3:0] sel_alu_op_inter;
    //MEM stage selecter
    reg Data_WR,Data_WR_Byte,clear_inter;
    reg [2:0] Mem_wmdata_sel_inter;
    reg [5:0] Memory_Data_rw_ena_inter;
    //WB stage selecter
    reg [1:0] Sel_WB_data;


    Instruction_write_table iwt(areset,state_EXE,state_MEM,state_WB,
                            writereg_index_EXE,writereg_index_MEM,writereg_index_WB,
                            writereg_type_EXE,writereg_type_MEM,writereg_type_WB);

    always@(*)begin
        if(areset)begin
            state_IF = EMPTY_INSTRUCTION;
            {opcode,rs,rt,rd,sa,fun} = 0;
        end
        else begin
        if(state == A||state == N) begin
        {opcode,rs,rt,rd,sa,fun} = Instruction;
        case(opcode)
            6'b000000: state_IF = (fun==6'b100000)?ADD:(fun==6'b100001)?ADDU:(fun==6'b100010)?SUB:
                                (fun==6'b101010)?SLT:(fun==6'b100100)?AND:(fun==6'b100101)?OR:
                                (fun==6'b100110)?XOR:(fun==6'b000100)?SLLV:(fun==6'b000000)?({rs,rt,rd,sa}==0)?NOP:SLL:
                                (fun==6'b000111)?SRAV:(fun==6'b000011)?SRA:(fun==6'b000110)?SRLV:
                                (fun==6'b000010)?SRL:(fun==6'b001000)?JR:(fun==6'b001001)?JALR:ERROR;
            6'b001000: state_IF = ADDI;
            6'b001001: state_IF = ADDIU;
            6'b001100: state_IF = ANDI;
            6'b011100: state_IF = MUL;
            6'b001111: state_IF = LUI;
            6'b001101: state_IF = ORI;
            6'b001110: state_IF = XORI;
            6'b000100: state_IF = BEQ;
            6'b000101: state_IF = BNE;
            6'b000001: state_IF = rt[0]?BGEZ:BLTZ;
            6'b000111: state_IF = BGTZ;
            6'b000110: state_IF = BLEZ;
            6'b000010: state_IF = J;
            6'b000011: state_IF = JAL;
            6'b100000: state_IF = LB;
            6'b100011: state_IF = LW;
            6'b101000: state_IF = SB;
            6'b101011: state_IF = SW;
            6'b011111: state_IF = SYSCALL; 
            6'b010000: state_IF = (fun==6'b011000)?ERET:ERROR;
            default:state_IF = ERROR;
        endcase
        end
        else begin
            state_IF = EMPTY_INSTRUCTION;
            {opcode,rs,rt,rd,sa,fun} = 0;
        end
        end
    end

    always @(*) begin
            case(state)
            A: state_next = (EXL_status)?L:(sel_state==B)?B:(sel_state==C)?C:(sel_state==D)?D:A;
            B: state_next = C;
            C: state_next = D;
            D: state_next = E;
            E: state_next = (EXL_status)?N:A;
            L: state_next = M;
            M: state_next = N;
            N: state_next = (sel_state==A)?(EXL_status)?N:A:(sel_state==B)?B:N;
            default:state_next = A;
            endcase
    end

    always @(*) begin
        if(areset) InteruptEna_inter = 1;
        else begin
            case(state)
            A: InteruptEna_inter = 1;
            default: InteruptEna_inter = 0;
            endcase
        end
    end

    always@(*)begin
        case(state)
        A,N:{Ifena_inter,IF_Pipeline_ID_inter,ID_Pipeline_EXE_inter,EXE_Pipeline_MEM_inter,MEM_Pipeline_WB_inter} <= 0;
        B,C,D,E:{Ifena_inter,IF_Pipeline_ID_inter,ID_Pipeline_EXE_inter,EXE_Pipeline_MEM_inter,MEM_Pipeline_WB_inter} <= {1'b1,2'b10,2'b00,2'b00,2'b00};
        M,L: {Ifena_inter,IF_Pipeline_ID_inter,ID_Pipeline_EXE_inter,EXE_Pipeline_MEM_inter,MEM_Pipeline_WB_inter} <= {1'b1,2'b01,2'b01,2'b01,2'b01};
        default:{Ifena_inter,IF_Pipeline_ID_inter,ID_Pipeline_EXE_inter,EXE_Pipeline_MEM_inter,MEM_Pipeline_WB_inter} <= 0;
        endcase
    end

    always@(*) begin
        case(state_IF)
        JR,J,JAL,JALR,BEQ,BNE,BGEZ,BGTZ,BLEZ,BLTZ,ERET,SYSCALL: sel_state = B;

        default: sel_state = A;
        endcase
    end
///////////////////////////////ID stage//////////////////////////////////////////////////////////
    
    //冲突检测
    always @(*) begin //检测是否有冲突
        case(write_map[state_EXE])
        1'b1: begin conf_reg_exe = writereg_index_EXE[2]?rd_exe:writereg_index_EXE[1]?rt_exe:5'b11111; end
        default: conf_reg_exe = 0;
        endcase
        case(write_map[state_MEM])
        1'b1: begin conf_reg_mem = writereg_index_MEM[2]?rd_mem:writereg_index_MEM[1]?rt_mem:5'b11111; end
        default: conf_reg_mem = 0;
        endcase
        case(write_map[state_WB])
        1'b1: begin conf_reg_wb = writereg_index_WB[2]?rd_wb:writereg_index_WB[1]?rt_wb:5'b11111; end
        default: conf_reg_wb = 0;
        endcase
    end

    always@(*)begin
        if(areset) begin
            Sel_alua_inter = 0;
            Sel_alub_inter = 0;
        end
        else begin
        case(state_ID)
            ADD,ADDU,SUB,SLT,MUL,AND,OR,XOR,SLLV,SRAV,BEQ,BNE:begin 
                Sel_alua_inter=(rs_id==0)?3'b000:(rs_id==conf_reg_exe)?(writereg_type_EXE[0])?3'b110:3'b100:
                                (rs_id==conf_reg_mem)?(writereg_type_MEM[0])?3'b101:3'b100:
                                (rs_id==conf_reg_wb)?3'b000:3'b000;
                Sel_alub_inter=(rt_id==0)?3'b000:(rt_id==conf_reg_exe)?(writereg_type_EXE[0])?3'b110:3'b100:
                                (rt_id==conf_reg_mem)?(writereg_type_MEM[0])?3'b101:3'b100:
                                (rt_id==conf_reg_wb)?3'b000:3'b000;
                end
            ANDI,ORI,XORI,ADDI,ADDIU,LB,LW,SB,SW:begin 
                Sel_alua_inter=(rs_id==0)?3'b000:(rs_id==conf_reg_exe)?(writereg_type_EXE[0])?3'b110:3'b100:
                                (rs_id==conf_reg_mem)?(writereg_type_MEM[0])?3'b101:3'b100:
                                (rs_id==conf_reg_wb)?3'b000:3'b000;
                Sel_alub_inter=3'b001;end
            LUI:begin Sel_alua_inter=3'b010;Sel_alub_inter=3'b001;end
            BGEZ,BGTZ,BLEZ,BLTZ,SYSCALL:begin 
                Sel_alua_inter=(rs_id==0)?3'b000:(rs_id==conf_reg_exe)?(writereg_type_EXE[0])?3'b110:3'b100:
                                (rs_id==conf_reg_mem)?(writereg_type_MEM[0])?3'b101:3'b100:
                                (rs_id==conf_reg_wb)?3'b000:3'b000;
                Sel_alub_inter=3'b010;
                end
            JR,JALR: begin  Sel_alua_inter=(rs_id==0)?3'b000:(rs_id==conf_reg_exe)?(writereg_type_EXE[0])?3'b110:3'b100:
                                (rs_id==conf_reg_mem)?(writereg_type_MEM[0])?3'b101:3'b100:
                                (rs_id==conf_reg_wb)?3'b000:3'b000;
                            Sel_alub_inter=3'b010; end
            SLL: begin  Sel_alua_inter=3'b010;
                        Sel_alub_inter=(rt_id==0)?3'b000:(rt_id==conf_reg_exe)?(writereg_type_EXE[0])?3'b110:3'b100:
                                (rt_id==conf_reg_mem)?(writereg_type_MEM[0])?3'b101:3'b100:
                                (rt_id==conf_reg_wb)?3'b000:3'b000;
                 end  
            SRL: begin
                Sel_alua_inter = 3'b001;
                Sel_alub_inter=(rt_id==0)?3'b000:(rt_id==conf_reg_exe)?(writereg_type_EXE[0])?3'b110:3'b100:
                                (rt_id==conf_reg_mem)?(writereg_type_MEM[0])?3'b101:3'b100:
                                (rt_id==conf_reg_wb)?3'b000:3'b000;
             end              
            default:begin Sel_alua_inter=3'b000;Sel_alub_inter=3'b000;end
        endcase
        end
    end

    //写MEMORY可能的数据来源为某个寄存器的值，而寄存器的值的来源为ALU，或者来源于LB和LW取出的数据，
    //故对SBSW的数据冲突可能为目前在EXE，MEM，WB阶段的回写数据，而回写的数据总是被选择进入WBsel,
    //而当SBSW指令进行到MEM阶段时，前三者必然可以通过WB阶段的选择器获得，从而不需要判断前阶段指令
    //的写数据来源是alu还是mem的取（当前非LBLW的写指令必定经过ALU），而仅需要判断是否当前读的
    //寄存器被前三条指令中的最近的写指令冲突，从而简化流程，不再需要集中收容三个阶段的ALU数据以及三个阶段从MEM中传出的数据

    always @(*) begin
        if(areset) begin
            Mem_wmdata_sel_inter = 0;
        end
        else begin
            case(state_ID)
            SW,SB: Mem_wmdata_sel_inter = (rt_id==0)?3'b000:(rt_id==conf_reg_exe)?3'b001:(rt_id==conf_reg_mem)?3'b010:(rt_id==conf_reg_wb)?3'b011:0;
            default:Mem_wmdata_sel_inter = 0;
            endcase
        end
    end

    always @(*) begin
        case(state_ID)
        SYSCALL: syscall_table_ena_inter = 1;
        default: syscall_table_ena_inter = 0;
        endcase
    end

    always @(*) begin
        if(areset)begin
            Memory_Data_rw_ena_inter = 6'b100000;//[5]代表使能或者关闭1关闭0使能，[4:3]代表是哪一条指令，若使能关闭则无效输出0，后三位保留待用。
        end
        else begin
            case(state_ID)
            SW: Memory_Data_rw_ena_inter = 6'b000000;
            SB: Memory_Data_rw_ena_inter = 6'b001000;
            LW: Memory_Data_rw_ena_inter = 6'b010000;
            LB: Memory_Data_rw_ena_inter = 6'b011000;
            default: Memory_Data_rw_ena_inter = 6'b100000;
            endcase
        end
    end

    always@(*)begin
        if(areset) Sel_REG_w_inter = 2'b00;
        else begin
        case(state_ID) 
            ADDI:begin Sel_REG_w_inter = 2'b01;end  
            ADDIU:begin Sel_REG_w_inter = 2'b01;end
            ANDI:begin Sel_REG_w_inter = 2'b01;end 
            LUI:begin Sel_REG_w_inter = 2'b01;end//逻辑左移16位
            ORI:begin Sel_REG_w_inter = 2'b01;end
            XOR:begin Sel_REG_w_inter = 2'b00; end
            XORI:begin Sel_REG_w_inter = 2'b01;end
            JAL:begin Sel_REG_w_inter = 2'b10; end
            LB:begin Sel_REG_w_inter = 2'b01; end
            LW:begin Sel_REG_w_inter = 2'b01;end
            default:Sel_REG_w_inter = 2'b00;
        endcase
        end
    end

    always@(*)begin
        if(areset) begin
            SignalException_inter = 0;
        end
        else begin
        case(state_ID)
            ADD,ADDI,SUB,LW,SW:SignalException_inter=1;
            default:SignalException_inter=0;
        endcase
        end
    end

    always@(*)begin
        if(areset)sel_alu_op_inter = 4'b0000;
        else begin
        case(state_ID)
            ADD,ADDI,ADDU,ADDIU,LB,LW,SB,SW:sel_alu_op_inter = 4'b0000;
            SUB,SLT,BEQ,BNE,BGEZ,BGTZ,BLEZ,BLTZ:sel_alu_op_inter=4'b0001;
            MUL:sel_alu_op_inter=4'b0010;
            AND,ANDI:sel_alu_op_inter=4'b0011;
            LUI,SLLV,SLL:sel_alu_op_inter=4'b0100;
            OR,ORI,XOR,XORI:sel_alu_op_inter=4'b0101;
            SRAV,SRA:sel_alu_op_inter=4'b0110;
            SRLV,SRL:sel_alu_op_inter=4'b0111;
            default:sel_alu_op_inter = 4'b0000;
        endcase
        end
    end

    always@(*)begin
        if(areset) Sel_WB_data=2'b00;
        else begin
        case(state_ID)
            JAL,JALR:Sel_WB_data=2'b10;
            SB,SW:Sel_WB_data=2'b11;
            default:Sel_WB_data=2'b00;
        endcase
        end
    end


    always@(*)begin
        if(areset) begin Sel_Imm_inter=2'b00;Sel_extend_inter=0;end
        else begin
        case(state_ID)
            ADDI:begin Sel_Imm_inter=2'b00;Sel_extend_inter=1; end 
            ADDIU:begin Sel_Imm_inter=2'b00;Sel_extend_inter=1; end
            ANDI:begin Sel_Imm_inter=2'b00;Sel_extend_inter=0; end 
            LUI:begin Sel_Imm_inter=2'b00;Sel_extend_inter=0; end//逻辑左移16位
            ORI:begin Sel_Imm_inter=2'b00;Sel_extend_inter=0; end
            XORI:begin Sel_Imm_inter=2'b00;Sel_extend_inter=0; end
            BEQ:begin Sel_Imm_inter=2'b10;Sel_extend_inter=1; end
            BNE:begin Sel_Imm_inter=2'b10;Sel_extend_inter=1; end
            BGEZ:begin Sel_Imm_inter=2'b10;Sel_extend_inter=1; end
            BGTZ:begin Sel_Imm_inter=2'b10;Sel_extend_inter=1; end
            BLEZ:begin Sel_Imm_inter=2'b10;Sel_extend_inter=1; end
            BLTZ:begin Sel_Imm_inter=2'b10;Sel_extend_inter=1; end
            J:begin Sel_Imm_inter=2'b11;Sel_extend_inter=0; end
            JAL:begin Sel_Imm_inter=2'b11;Sel_extend_inter=0; end
            LB:begin Sel_Imm_inter=2'b01;Sel_extend_inter=1; end
            LW:begin ;Sel_Imm_inter=2'b01;Sel_extend_inter=1; end
            SB:begin Sel_Imm_inter=2'b01;Sel_extend_inter=1; end
            SW:begin Sel_Imm_inter=2'b01;Sel_extend_inter=1; end
            default: begin Sel_Imm_inter=2'b00;Sel_extend_inter=0;end 
        endcase
        end
    end
    /////////////////////////////////////////EXE stage/////////////////////////////////////////////////
    //错误指令
    always @(*) begin
        if(areset) Err_instruction_inter = 0;
        else begin
            case(state_EXE)
            ERROR: Err_instruction_inter = 1;
            default: Err_instruction_inter = 0;
            endcase
        end
    end

    /////////////////////////////////////////MEM stage///////////////////////////////
    
    always@(*)begin
        if(areset) begin
            Data_WR=0;Data_WR_Byte=0;
        end
        else begin
        case(state_MEM)
            LB:begin Data_WR=0;Data_WR_Byte=1;end
            LW:begin Data_WR=0;Data_WR_Byte=0;end
            SB:begin Data_WR=1;Data_WR_Byte=1;end
            SW:begin Data_WR=1;Data_WR_Byte=0;end
            default:begin Data_WR=0;Data_WR_Byte=0; end
        endcase
        end
    end

    always @(*) begin
        if(areset) clear_inter = 0;
        else begin
        case(state_MEM)
            ERET: clear_inter = 1;
            default: clear_inter = 0;
        endcase
        end
    end


    ////////////////////////////////////////WB stage//////////////////////////////////////

    always@(*)begin
        if(areset) begin
            Sel_REG_w_ena_inter = 0;
        end
        else begin
            case(state_WB)
            ADD,ADDI,ADDU,ADDIU,SUB,SLT,MUL,AND,ANDI,LUI,OR,ORI,XOR,XORI,SLLV,SLL,SRAV,SRA,SRLV,SRL,JAL,JALR,LB,LW: Sel_REG_w_ena_inter = 1;
            default: Sel_REG_w_ena_inter = 0;
            endcase
        end
    end

    always@(*) begin
        if(areset) Sel_PC_inter = 0;
        else begin
            if(state == L||state == M) begin
                Sel_PC_inter = 3'b100;
            end
            else begin
            case(state_WB)
            BEQ: Sel_PC_inter = Zeroflag?3'b001:3'b000;
            BNE: Sel_PC_inter = Aluanebflag?3'b001:3'b000;
            BGEZ: Sel_PC_inter = (Zeroflag|AlubLessAluaflag)?3'b001:3'b000;
            BGTZ: Sel_PC_inter = (AlubLessAluaflag)?3'b001:3'b000;
            BLEZ: Sel_PC_inter = (Zeroflag|AluaLessAlubflag)?3'b001:3'b000;
            BLTZ: Sel_PC_inter = (AluaLessAlubflag)?3'b001:3'b000;
            J: Sel_PC_inter = 3'b010;
            JAL: Sel_PC_inter = 3'b010;
            JR: Sel_PC_inter = 3'b011;
            JALR: Sel_PC_inter = 3'b011;
            ERET: Sel_PC_inter = 3'b101;
            //EMPTY_INSTRUCTION: Sel_PC_inter = Sel_PC_inter;
            default:Sel_PC_inter = 0;
            endcase
            end
        end
    end

    always @(*) begin
        if(areset)begin
            Empty_ins_inter = 0;
        end
        else begin
            case(state_WB)
            EMPTY_INSTRUCTION: Empty_ins_inter = 1;
            default: Empty_ins_inter = 0;
            endcase
        end
    end

/////////////////////////////////////////////control////////////////////////////////////

always @(posedge clk or posedge areset) begin
    if(areset) {rs_id,rt_id,rd_id,rs_exe,rt_exe,rd_exe,rs_mem,rt_mem,rd_mem,rs_wb,rt_wb,rd_wb,fun_id,fun_exe,fun_mem,fun_wb,sa_id,sa_exe,sa_mem,sa_wb} <= 0;
    else begin
        case(state)
        L,M:begin
            {rs_id,rt_id,rd_id,sa_id,fun_id} <= 0;
            {rs_exe,rt_exe,rd_exe,sa_exe,fun_exe} <= 0;
            {rs_mem,rt_mem,rd_mem,sa_mem,fun_mem} <= 0;
            {rs_wb,rt_wb,rd_wb,sa_wb,fun_wb} <= 0;
        end
        default:begin
        {rs_id,rt_id,rd_id} <= {rs,rt,rd};
        {rs_exe,rt_exe,rd_exe} <= {rs_id,rt_id,rd_id};
        {rs_mem,rt_mem,rd_mem} <= {rs_exe,rt_exe,rd_exe};
        {rs_wb,rt_wb,rd_wb} <= {rs_mem,rt_mem,rd_mem};
        end
        endcase
        
    end
end

    always@(posedge clk or posedge areset)begin
        if(areset)  begin
            state_ID <= EMPTY_INSTRUCTION;
            state_EXE <= EMPTY_INSTRUCTION;
            state_MEM <= EMPTY_INSTRUCTION;
            state_WB <= EMPTY_INSTRUCTION;
        end
        else begin
            case(state)
            L,M:begin
                state_ID <= 0;
                state_EXE <= 0;
                state_MEM <= 0;
                state_WB <= 0;
            end
            default:begin
                state_ID <= state_IF;
                state_EXE <= state_ID;
                state_MEM <= state_EXE;
                state_WB <= state_MEM;
            end
            endcase
        end
    end

    always @(posedge clk or posedge areset or posedge EXL_status) begin
        if(areset) state <= A;
        else if(EXL_status)state <= state_next;
        else begin
            state <= state_next;
        end
    end



///////////////////////////////////output//////////////////////////////////////////////
    assign Sel_PC = Sel_PC_inter;
    assign Sel_REG_w = Sel_REG_w_inter;
    assign Sel_Imm = Sel_Imm_inter;
    assign Sel_REG_w_ena_out = Sel_REG_w_ena;//下降沿写入
    assign Sel_extend = Sel_extend_inter;
    assign Sel_pipeline_out = Sel_pipeline;
    assign Sel_alua = Sel_alua_inter;
    assign Sel_alub = Sel_alub_inter;
    assign SignalException = SignalException_inter;
    assign Data_WR_out = Data_WR;
    assign Data_WR_Byte_out = Data_WR_Byte;
    assign Sel_WB_data_out = Sel_WB_data;
    assign IF_Pipeline_ID = IF_Pipeline_ID_inter;
    assign ID_Pipeline_EXE = ID_Pipeline_EXE_inter;
    assign EXE_Pipeline_MEM = EXE_Pipeline_MEM_inter;
    assign MEM_Pipeline_WB = MEM_Pipeline_WB_inter;
    assign Ifena = Ifena_inter;
    assign Sel_alu_op = sel_alu_op_inter;
    assign Sel_REG_w_ena = Sel_REG_w_ena_inter;
    assign Mem_wmdata_sel = Mem_wmdata_sel_inter;
    assign Memory_Data_rw_ena = Memory_Data_rw_ena_inter;
    assign clear = clear_inter;
    assign InteruptEna = InteruptEna_inter;
    assign syscall_table_ena = syscall_table_ena_inter;
    assign Err_instruction = Err_instruction_inter;
    assign Empty_ins = Empty_ins_inter;

endmodule
