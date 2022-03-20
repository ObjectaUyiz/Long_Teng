`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/07/2022 12:42:56 AM
// Design Name: 
// Module Name: MIPS_CPU_TOP
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


module MIPS_CPU_TOP(
    input clk,
    input reset,
    input areset,
    input emptyena,
    input Ifena,
    output [31:0] Instruction_IF,
    output [31:0] Instruction_ID,
    output [25:0] set_EXE,
    output [25:0] set_MEM,
    output [25:0] set_WB,
    output [31:0] Pc_add4
    );
    //Define different stage resources, include wire,reg etc. 变量在同一阶段中的使用使用阶段作为前缀经过转换后变换成需要存入下一阶段的变量名，若从其他阶段传入则由“传入阶段——变量名——到达阶段”命名
    //IF
    wire [31:0] Instruction,IF_Instruction_ID;
    wire [31:0] PC,PC_next,IF_PC_next_ID;
    wire [1:0] Sel_PC;
    //ID
    wire Sel_extend,ID_SignalException_EXE,ID_SignalException;
    wire [1:0] sel_imm,sel_REG_w;
    wire [2:0] ID_sel_alua_EXE,ID_sel_alub_EXE;
    wire [5:0] ID_opcode,ID_opcode_EXE,ID_fun,ID_fun_EXE;
    wire [4:0] ID_rs,ID_rs_EXE,ID_rd,ID_rd_EXE,ID_rt,ID_rt_EXE,ID_sa,ID_sa_EXE,ID_rf_write_addr,ID_rf_write_addr_EXE;
    wire [15:0] ID_imm;
    wire [25:0] ID_instr_index;
    wire [3:0] ID_sel_alu_op,ID_sel_alu_op_EXE,ID_data_rw_ena,ID_data_rw_ena_EXE;
    wire [31:0] ID_immediate,ID_immediate_EXE,ID_REGrs,ID_REGrs_EXE,ID_REGrt,ID_REGrt_EXE,ID_PC_next_4,ID_PC_next_4_EXE;
    //EXE
    wire EXE_SignalException,EXE_IntegerOverflow,EXE_AluaLessAlub,EXE_AlubLessAlua,EXE_Aluaeb,EXE_Zeroflag,EXE_Aluaneb,EXE_Exception_control,Exception_event_control;
    wire [2:0] EXE_sel_alua,EXE_sel_alub;
    wire [5:0] EXE_opcode,EXE_opcode_MEM,EXE_fun,EXE_fun_MEM;
    wire [4:0] EXE_rs,EXE_rs_MEM,EXE_rt,EXE_rt_MEM,EXE_rd,EXE_rd_MEM,EXE_rf_write_addr,EXE_sa;
    wire [7:0] EXE_alu_flag;
    wire [3:0] EXE_sel_alu_op,EXE_data_rw_ena,EXE_data_rw_ena_MEM;
    wire [31:0] EXE_imm,EXE_REGrs,EXE_REGrt,EXE_PC_next_4;
    wire [31:0] EXE_ALU_inputA,EXE_ALU_inputB;
    wire [31:0] EXE_ALU_Result,EXE_ALU_Result_REGrs_EXE,EXE_ALU_Result_REGrt_EXE,MEM_ALU_Result_REGrs_EXE,MEM_ALU_Result_REGrt_EXE;
    //MEM
    wire [5:0] MEM_fun,MEM_opcode;
    wire [4:0] MEM_rs,MEM_rt,MEM_rd;
    wire [31:0] MEM_Memory_data_out,MEM_REGrs_Memroy_dataout_EXE,MEM_REGrt_Memroy_dataout_EXE,MEM_IO_dataout;
    wire [31:0] MEM_memory_addr,MEM_immediate,MEM_ALU_Result;
    wire [31:0] MEM_REGrt,MEM_REGrs;
    wire [3:0] MEM_data_rw_ena;
    wire [7:0] MEM_alu_flag;
    wire [1:0] MEM_data_wr_type;
    wire MEM_datamemory_resbusy,MEM_Exception_event_control,MEM_dataaddr_exception;
    wire [5:0] MEM_opcode_WB,MEM_fun_WB;
    wire [4:0] MEM_rs_WB,MEM_rt_WB,MEM_rd_WB;
    wire [31:0] MEM_REGrs_WB,MEM_REGrt_WB,MEM_Memory_data_out_WB,MEM_ALU_Result_WB;
    //WB
    wire WB_wirte_ena_ID;
    wire [5:0] WB_opcode,WB_fun;
    wire [4:0] WB_rs,WB_rt,WB_rd;
    wire [31:0] WB_ALU_Result,WB_REGrs,WB_REGrt,WB_Memory_data_out;
    wire [31:0] WB_data_out;
    wire [31:0] WB_rf_write_data_ID,WB_REGrs_data_EXE,WB_REGrt_data_EXE;
    wire [7:0] WB_alu_flag;

    wire [1:0] IF_Pipeline_ID,ID_Pipeline_EXE,EXE_Pipeline_MEM,MEM_Pipeline_WB;

    ID_Controller IDc(.clk(clk),.areset(areset),.IF_Pipeline_ID(IF_Pipeline_ID),.ID_Pipeline_EXE(ID_Pipeline_EXE),.EXE_Pipeline_MEM(EXE_Pipeline_MEM),.MEM_Pipeline_WB(MEM_Pipeline_WB));

    //IF stage
    Instruction_fetch If(.clk(clk),.areset(areset),.ena(Ifena),.emptyena(emptyena),.I_sel(Sel_PC),.PC(PC),.PC_next(PC_next));
    InstructionMemory IM(.InstAddr(PC[11:2]),.Instruction(Instruction));
    assign Instruction_IF = Instruction;
    //ID stage
    IF_ID_registers ifid(clk,IF_Pipeline_ID,Instruction,PC_next,IF_Instruction_ID,IF_PC_next_ID);
    InstructionDecoder ID(IF_Instruction_ID,ID_opcode,ID_rs,ID_rt,ID_rd,ID_sa,ID_fun,ID_imm,ID_instr_index);
    assign Instruction_ID = IF_Instruction_ID;
    PC_next_add4 pna4(IF_PC_next_ID,ID_PC_next_4);
    assign Pc_add4 = ID_PC_next_4;
    Register_wirte_address_selection rwas(sel_REG_w,ID_rt,ID_rd,5'b11111,ID_rf_write_addr);
    Immediate_dealing ImmD(sel_imm,Sel_extend,ID_imm,ID_instr_index,ID_immediate);
    Register_File RF(clk,WB_wirte_ena_ID,ID_rs,ID_rt,ID_rf_write,WB_rf_write_data_ID,ID_REGrs,ID_REGrt);
    //ID var convert
    ID_EXE_var_convert ievc(ID_opcode,ID_fun,ID_rs,ID_rd,ID_rt,ID_sa,ID_rf_write_addr,ID_immediate,ID_sel_alu_op,ID_REGrs,ID_REGrt,ID_PC_next_4,ID_SignalException,ID_data_rw_ena,
                            ID_opcode_EXE,ID_fun_EXE,ID_rs_EXE,ID_rd_EXE,ID_rt_EXE,ID_sa_EXE,ID_rf_write_addr_EXE,ID_immediate_EXE,ID_sel_alu_op_EXE,ID_REGrs_EXE,ID_REGrt_EXE,ID_PC_next_4_EXE,ID_SignalException_EXE,ID_data_rw_ena_EXE);
    //EX stage
    ID_EXE_registers idexe(clk,ID_Pipeline_EXE,ID_opcode_EXE,ID_fun_EXE,ID_rs_EXE,ID_rt_EXE,ID_rd_EXE,ID_immediate_EXE,ID_sa_EXE,
                            ID_sel_alua_EXE,ID_sel_alub_EXE,ID_SignalException_EXE,ID_sel_alu_op_EXE,ID_rf_write_addr_EXE,ID_REGrs_EXE,ID_REGrt_EXE,ID_PC_next_4_EXE,ID_data_rw_ena_EXE,
                            EXE_opcode,EXE_fun,EXE_rs,EXE_rt,EXE_rd,EXE_immediate,EXE_sa,EXE_sel_alua,EXE_sel_alub,EXE_SignalException,EXE_sel_alu_op,EXE_rf_write_addr,EXE_REGrs,EXE_REGrt,EXE_PC_next_4,EXE_data_rw_ena);
    assign set_EXE = {EXE_opcode,EXE_rs,EXE_rt,EXE_rd,EXE_fun};
    ALU_input_selection ais(EXE_sel_alua,EXE_sel_alub,EXE_REGrs,EXE_REGrt,EXE_immediate,EXE_sa,EXE_ALU_Result_REGrs_EXE,MEM_ALU_Result_REGrs_EXE,MEM_REGrs_Memroy_dataout_EXE,WB_REGrs_data_EXE,EXE_ALU_Result_REGrt_EXE,MEM_ALU_Result_REGrt_EXE,MEM_REGrt_Memroy_dataout_EXE,WB_REGrt_data_EXE,EXE_ALU_inputA,EXE_ALU_inputB);
    ALU_module alu(EXE_opcode,EXE_fun,EXE_rt,EXE_ALU_inputA,EXE_ALU_inputB,EXE_ALU_Result,EXE_alu_flag);
    ALU_Flag_Handler afh(EXE_alu_flag,EXE_SignalException,EXE_IntegerOverflow,EXE_AluaLessAlub,EXE_AlubLessAlua,EXE_Aluaeb,EXE_Zeroflag,EXE_Aluaneb,EXE_Exception_control);
    EXCEPTION_Handler eh(EXE_Exception_control,EXE_Exception_event_control);
    EXE_MEM_var_convert emvc(EXE_opcode,EXE_fun,EXE_rs,EXE_rt,EXE_rd,EXE_immediate,EXE_ALU_Result,EXE_REGrs,EXE_REGrt,EXE_alu_flag,EXE_Exception_event_control,EXE_data_rw_ena,EXE_PC_next_4,
                            EXE_opcode_MEM,EXE_fun_MEM,EXE_rs_MEM,EXE_rt_MEM,EXE_rd_MEM,EXE_immediate_MEM,EXE_ALU_Result_MEM,EXE_REGrs_MEM,EXE_REGrt_MEM,EXE_alu_flag_MEM,EXE_Exception_event_control_MEM,EXE_data_rw_ena_MEM,EXE_PC_next_4_MEM);
    //MEM stage
    EXE_MEM_registers exemem(clk,EXE_Pipeline_MEM,EXE_opcode_MEM,EXE_fun_MEM,EXE_rs_MEM,EXE_rt_MEM,EXE_rd_MEM,EXE_immediate_MEM,EXE_ALU_Result_MEM,EXE_REGrs_MEM,EXE_REGrt_MEM,EXE_alu_flag_MEM,EXE_Exception_event_control_MEM,EXE_data_rw_ena_MEM,EXE_PC_next_4_MEM,
                            MEM_opcode,MEM_fun,MEM_rs,MEM_rt,MEM_rd,MEM_immediate,MEM_ALU_Result,MEM_REGrs,MEM_REGrt,MEM_alu_flag,MEM_Exception_event_control,MEM_data_rw_ena,MEM_PC_next_4);
    assign set_MEM = {MEM_opcode,MEM_rs,MEM_rt,MEM_rd,MEM_fun};
    assign {MEM_ALU_Result_REGrs_EXE,MEM_ALU_Result_REGrt_EXE} = {MEM_ALU_Result,MEM_ALU_Result};
    Datamemory_addr_translater dat(MEM_opcode,MEM_immediate,MEM_memory_addr,MEM_dataaddr_exception);
    datamemory_writecontrol dw(MEM_opcode,MEM_data_wr_type);
    IO_cache ic(clk,MEM_memory_addr[31],MEM_REGrt,MEM_IO_dataout);
    DataMemory dm(clk,~MEM_memory_addr[31],MEM_data_rw_ena,MEM_memory_addr,MEM_REGrt,MEM_Memory_data_out);
    MEM_WB_var_converter mwvc(MEM_opcode,MEM_fun,MEM_rs,MEM_rt,MEM_rd,MEM_REGrs,MEM_REGrt,MEM_Memory_data_out,MEM_ALU_Result,MEM_alu_flag,MEM_PC_next_4,
                            MEM_opcode_WB,MEM_fun_WB,MEM_rs_WB,MEM_rt_WB,MEM_rd_WB,MEM_REGrs_WB,MEM_REGrt_WB,MEM_Memory_data_out_WB,MEM_ALU_Result_WB,MEM_alu_flag_WB,MEM_PC_next_4_WB);
    //WB stage
    MEM_WB_registers memwb(clk,MEM_Pipeline_WB,MEM_opcode_WB,MEM_fun_WB,MEM_rs_WB,MEM_rt_WB,MEM_rd_WB,MEM_ALU_Result_WB,MEM_REGrs_WB,MEM_REGrt_WB,MEM_alu_flag_WB,MEM_Memory_data_out_WB,MEM_PC_next_4_WB,
                            WB_opcode,WB_fun,WB_rs,WB_rt,WB_rd,WB_ALU_Result,WB_REGrs,WB_REGrt,WB_alu_flag,WB_Memory_data_out,WB_PC_next_4);
    assign {WB_REGrs_data_EXE,WB_REGrt_data_EXE} = {WB_ALU_Result,WB_ALU_Result};//回传数据旁路
    assign set_WB = {WB_opcode,WB_rs,WB_rt,WB_rd,WB_fun};
    writeback_data_selection wds(WB_opcode,WB_fun,WB_ALU_Result,WB_PC_next_4,WB_Memory_data_out,WB_data_out);

endmodule
