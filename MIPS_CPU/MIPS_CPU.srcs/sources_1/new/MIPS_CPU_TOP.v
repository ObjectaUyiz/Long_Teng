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
    input [15:0] Interupt,
    output [31:0] PC_out,
    output [31:0] IO_dataout
    );
    //Define different stage resources, include wire,reg etc. 变量在同一阶段中的使用使用阶段作为前缀经过转换后变换成需要存入下一阶段的变量名，若从其他阶段传入则由“传入阶段——变量名——到达阶段”命名
    wire Ifena,EXL_status,AddrError;
    wire clear;
    wire [7:0] Exception_busy_type;
    //IF
    wire [31:0] Instruction,IF_Instruction_ID,Return_pc,EI_entry_addr;
    wire [31:0] PC,PC_next,IF_PC_next_ID;
    wire [2:0] Sel_PC;
    //ID
    wire Sel_extend,ID_SignalException_EXE,ID_SignalException;
    wire [1:0] sel_imm,sel_REG_w;
    wire [2:0] ID_sel_alua,ID_sel_alub,ID_sel_alua_EXE,ID_sel_alub_EXE,ID_mdata_sel,ID_mdata_sel_EXE;
    wire [5:0] ID_opcode,ID_opcode_EXE,ID_fun,ID_fun_EXE;
    wire [4:0] ID_rs,ID_rs_EXE,ID_rd,ID_rd_EXE,ID_rt,ID_rt_EXE,ID_sa,ID_sa_EXE,ID_rf_write_addr,ID_rf_write_addr_EXE;
    wire [15:0] ID_imm;
    wire [25:0] ID_instr_index;
    wire [3:0] ID_sel_alu_op,ID_sel_alu_op_EXE;
    wire [5:0] ID_memory_data_rw_ena,ID_memory_data_rw_ena_EXE;
    wire [31:0] ID_immediate,ID_immediate_EXE,ID_REGrs,ID_REGrs_EXE,ID_REGrt,ID_REGrt_EXE,ID_PC_next_4,ID_PC_next_4_EXE;
    //EXE
    wire EXE_SignalException,EXE_IntegerOverflow,EXE_AluaLessAlub,EXE_AlubLessAlua,EXE_Aluaeb,EXE_Zeroflag,EXE_Aluaneb,
            EXE_Exception_control,Exception_event_control,EXE_Exception_event_control_MEM,flagena;
    wire [2:0] EXE_sel_alua,EXE_sel_alub,EXE_mdata_sel,EXE_mdata_sel_MEM;
    wire [5:0] EXE_opcode,EXE_opcode_MEM,EXE_fun,EXE_fun_MEM;
    wire [4:0] EXE_rs,EXE_rs_MEM,EXE_rt,EXE_rt_MEM,EXE_rd,EXE_rd_MEM,EXE_rf_write_addr,EXE_sa,EXE_rf_write_addr_MEM;
    wire [7:0] EXE_alu_flag,EXE_alu_flag_MEM;
    wire [3:0] EXE_sel_alu_op;
    wire [5:0] EXE_memory_data_rw_ena,EXE_memory_data_rw_ena_MEM;
    wire [31:0] EXE_immediate,EXE_immediate_MEM,EXE_REGrs,EXE_REGrt,EXE_PC_next_4,EXE_PC_next_4_MEM,EXE_REGrs_MEM,EXE_REGrt_MEM;
    wire [31:0] EXE_ALU_inputA,EXE_ALU_inputB;
    wire [31:0] EXE_ALU_Result,EXE_ALU_Result_MEM,MEM_ALU_Result_REGrs_EXE,MEM_ALU_Result_REGrt_EXE;
    wire EXE_IntegerOverflow_MEM,EXE_AluaLessAlub_MEM,EXE_AlubLessAlua_MEM,EXE_Aluaeb_MEM,EXE_Zeroflag_MEM,EXE_Aluaneb_MEM;
    //MEM
    wire MEM_IntegerOverflow,MEM_AluaLessAlub,MEM_AlubLessAlua,MEM_Aluaeb,MEM_Zeroflag,MEM_Aluaneb,
        MEM_IntegerOverflow_WB,MEM_AluaLessAlub_WB,MEM_AlubLessAlua_WB,MEM_Aluaeb_WB,MEM_Zeroflag_WB,MEM_Aluaneb_WB;
    wire [2:0] MEM_mdata_sel;
    wire [5:0] MEM_fun,MEM_opcode;
    wire [4:0] MEM_rs,MEM_rt,MEM_rd;
    wire [31:0] MEM_Memory_data_out,MEM_REGrs_Memroy_dataout_EXE,MEM_REGrt_Memroy_dataout_EXE;
    wire [31:0] MEM_memory_addr,MEM_immediate,MEM_ALU_Result,MEM_immediate_WB;
    wire [31:0] MEM_REGrt,MEM_REGrs;
    wire [5:0] MEM_memory_data_rw_ena;
    wire [7:0] MEM_alu_flag,MEM_alu_flag_WB;
    wire [1:0] MEM_data_wr_type;
    wire MEM_datamemory_resbusy,MEM_Exception_event_control,MEM_dataaddr_exception;
    wire [5:0] MEM_opcode_WB,MEM_fun_WB;
    wire [4:0] MEM_rs_WB,MEM_rt_WB,MEM_rd_WB,MEM_rf_write_addr_WB,MEM_rf_write_addr;
    wire [31:0] MEM_REGrs_WB,MEM_REGrt_WB,MEM_Memory_data_out_WB,MEM_ALU_Result_WB,MEM_memorydata_w,MEM_PC_next_4,MEM_PC_next_4_WB;
    //WB
    wire WB_wirte_ena_ID,WB_IntegerOverflow,WB_AluaLessAlub,WB_AlubLessAlua,WB_Aluaeb,WB_Zeroflag,WB_Aluaneb;
    wire [5:0] WB_opcode,WB_fun;
    wire [4:0] WB_rs,WB_rt,WB_rd,WB_rf_write_addr,WB_rf_write_addr_ID;
    wire [31:0] WB_ALU_Result,WB_REGrs,WB_REGrt,WB_Memory_data_out;
    wire [31:0] WB_data_out;
    wire [31:0] WB_rf_write_data_ID,WB_REGrs_data_EXE,WB_REGrt_data_EXE;
    wire [7:0] WB_alu_flag;
    wire [31:0] WB_PC_next_4,WB_immediate,WB_immediate_IF;

    wire [1:0] IF_Pipeline_ID,ID_Pipeline_EXE,EXE_Pipeline_MEM,MEM_Pipeline_WB;


    ID_Controller IDc(.clk(clk),.reset(reset),.areset(areset),.Instruction(Instruction),.Ifena(Ifena),.IF_Pipeline_ID(IF_Pipeline_ID),.ID_Pipeline_EXE(ID_Pipeline_EXE),.EXE_Pipeline_MEM(EXE_Pipeline_MEM),.MEM_Pipeline_WB(MEM_Pipeline_WB),.Sel_PC(Sel_PC),
                        .Sel_alua(ID_sel_alua),.Sel_alub(ID_sel_alub),.Sel_Imm(sel_imm),.Sel_extend(Sel_extend),.Sel_REG_w_ena(WB_wirte_ena_ID),.Sel_REG_w(sel_REG_w),.SignalException(ID_SignalException),.Sel_alu_op(ID_sel_alu_op),.Memory_Data_rw_ena(ID_memory_data_rw_ena)
                        ,.Mem_wmdata_sel(ID_mdata_sel),.Zeroflag(WB_Zeroflag),.AluaLessAlubflag(WB_AluaLessAlub),.AlubLessAluaflag(WB_AlubLessAlua),.Aluaebflag(WB_Aluaeb),.Aluanebflag(WB_Aluaneb),.IntegerOverflowflag(WB_IntegerOverflow),.Exception_busy(Exception_busy_type),.EXL_status(EXL_status),.clear(clear));
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    CP0 cp0(.clk(clk),.areset(areset),.clear(clear),.Interupt(Interupt),.Exception_return_pc_addr(MEM_PC_next_4),.return_pc_addr(Return_pc),.IntegerOverflow_exception(MEM_IntegerOverflow),.Address_exception(AddrError),.Syscall(0),.Exception_busy_type(Exception_busy_type),.EXL_status(EXL_status),.EI_entry_addr(EI_entry_addr));
    //IF stage
    Instruction_fetch If(.clk(clk),.areset(areset),.ena(Ifena),.emptyena(emptyena),.I_sel(Sel_PC),.target_offset(WB_immediate),.instr_index(WB_immediate),.REGrs(WB_ALU_Result),.PC(PC),.PC_next(PC_next),.return_pc(Return_pc),.EI_event_entry(EI_entry_addr));
    assign PC_out = PC;
    InstructionMemory IM(.areset(areset),.InstAddr(PC[11:2]),.Instruction(Instruction));
    //ID stage
    IF_ID_registers ifid(clk,areset,IF_Pipeline_ID,Instruction,PC_next,IF_Instruction_ID,IF_PC_next_ID);
    InstructionDecoder ID(IF_Instruction_ID,ID_opcode,ID_rs,ID_rt,ID_rd,ID_sa,ID_fun,ID_imm,ID_instr_index);
    PC_next_add4 pna4(IF_PC_next_ID,ID_PC_next_4);
    Register_wirte_address_selection rwas(sel_REG_w,ID_rt,ID_rd,5'b11111,ID_rf_write_addr);
    Immediate_dealing ImmD(areset,sel_imm,Sel_extend,ID_imm,ID_instr_index,ID_immediate);
    Register_File RF(clk,areset,WB_wirte_ena_ID,ID_rs,ID_rt,WB_rf_write_addr_ID,WB_rf_write_data_ID,ID_REGrs,ID_REGrt);
    //ID var convert
    ID_EXE_var_convert ievc(ID_opcode,ID_fun,ID_rs,ID_rd,ID_rt,ID_sa,ID_rf_write_addr,ID_immediate,ID_sel_alu_op,ID_REGrs,ID_REGrt,ID_PC_next_4,ID_SignalException,ID_memory_data_rw_ena,ID_sel_alua,ID_sel_alub,ID_mdata_sel,
                            ID_opcode_EXE,ID_fun_EXE,ID_rs_EXE,ID_rd_EXE,ID_rt_EXE,ID_sa_EXE,ID_rf_write_addr_EXE,ID_immediate_EXE,ID_sel_alu_op_EXE,ID_REGrs_EXE,ID_REGrt_EXE,ID_PC_next_4_EXE,ID_SignalException_EXE,ID_memory_data_rw_ena_EXE,ID_sel_alua_EXE,ID_sel_alub_EXE,ID_mdata_sel_EXE);
    //EX stage
    ID_EXE_registers idexe(clk,areset,ID_Pipeline_EXE,ID_opcode_EXE,ID_fun_EXE,ID_rs_EXE,ID_rt_EXE,ID_rd_EXE,ID_immediate_EXE,ID_sa_EXE,
                            ID_sel_alua_EXE,ID_sel_alub_EXE,ID_SignalException_EXE,ID_sel_alu_op_EXE,ID_REGrs_EXE,ID_REGrt_EXE,ID_PC_next_4_EXE,ID_memory_data_rw_ena_EXE,ID_rf_write_addr_EXE,ID_mdata_sel_EXE,
                            EXE_opcode,EXE_fun,EXE_rs,EXE_rt,EXE_rd,EXE_immediate,EXE_sa,EXE_sel_alua,EXE_sel_alub,EXE_SignalException,EXE_sel_alu_op,EXE_REGrs,EXE_REGrt,EXE_PC_next_4,EXE_memory_data_rw_ena,EXE_rf_write_addr,EXE_mdata_sel);
    assign set_EXE = {EXE_opcode,EXE_rs,EXE_rt,EXE_rd,EXE_fun};
    ALU_input_selection ais(EXE_sel_alua,EXE_sel_alub,EXE_REGrs,EXE_REGrt,EXE_immediate,EXE_sa,MEM_ALU_Result_REGrs_EXE,MEM_REGrs_Memroy_dataout_EXE,WB_REGrs_data_EXE,MEM_ALU_Result_REGrt_EXE,MEM_REGrt_Memroy_dataout_EXE,WB_REGrt_data_EXE,EXE_ALU_inputA,EXE_ALU_inputB);
    ALU_module alu(areset,EXE_opcode,EXE_fun,EXE_rt,EXE_ALU_inputA,EXE_ALU_inputB,EXE_ALU_Result,EXE_alu_flag);
    ALU_Flag_Handler afh(areset,flagena,EXE_alu_flag,EXE_SignalException,EXE_IntegerOverflow,EXE_AluaLessAlub,EXE_AlubLessAlua,EXE_Aluaeb,EXE_Zeroflag,EXE_Aluaneb,EXE_Exception_control);
    EXCEPTION_Handler eh(EXE_Exception_control,EXE_Exception_event_control);
    EXE_MEM_var_convert emvc(EXE_opcode,EXE_fun,EXE_rs,EXE_rt,EXE_rd,EXE_immediate,EXE_ALU_Result,EXE_REGrs,EXE_REGrt,EXE_alu_flag,EXE_Exception_event_control,EXE_memory_data_rw_ena,EXE_PC_next_4,EXE_rf_write_addr,EXE_mdata_sel,EXE_IntegerOverflow,EXE_AluaLessAlub,EXE_AlubLessAlua,EXE_Aluaeb,EXE_Zeroflag,EXE_Aluaneb,
                            EXE_opcode_MEM,EXE_fun_MEM,EXE_rs_MEM,EXE_rt_MEM,EXE_rd_MEM,EXE_immediate_MEM,EXE_ALU_Result_MEM,EXE_REGrs_MEM,EXE_REGrt_MEM,EXE_alu_flag_MEM,EXE_Exception_event_control_MEM,EXE_memory_data_rw_ena_MEM,EXE_PC_next_4_MEM,EXE_rf_write_addr_MEM,EXE_mdata_sel_MEM,EXE_IntegerOverflow_MEM,EXE_AluaLessAlub_MEM,EXE_AlubLessAlua_MEM,EXE_Aluaeb_MEM,EXE_Zeroflag_MEM,EXE_Aluaneb_MEM);
    //MEM stage
    EXE_MEM_registers exemem(clk,areset,EXE_Pipeline_MEM,EXE_opcode_MEM,EXE_fun_MEM,EXE_rs_MEM,EXE_rt_MEM,EXE_rd_MEM,EXE_immediate_MEM,EXE_ALU_Result_MEM,EXE_REGrs_MEM,EXE_REGrt_MEM,EXE_alu_flag_MEM,EXE_Exception_event_control_MEM,EXE_memory_data_rw_ena_MEM,EXE_PC_next_4_MEM,EXE_rf_write_addr_MEM,EXE_mdata_sel_MEM,EXE_IntegerOverflow_MEM,EXE_AluaLessAlub_MEM,EXE_AlubLessAlua_MEM,EXE_Aluaeb_MEM,EXE_Zeroflag_MEM,EXE_Aluaneb_MEM,
                            MEM_opcode,MEM_fun,MEM_rs,MEM_rt,MEM_rd,MEM_immediate,MEM_ALU_Result,MEM_REGrs,MEM_REGrt,MEM_alu_flag,MEM_Exception_event_control,MEM_memory_data_rw_ena,MEM_PC_next_4,MEM_rf_write_addr,MEM_mdata_sel,MEM_IntegerOverflow,MEM_AluaLessAlub,MEM_AlubLessAlua,MEM_Aluaeb,MEM_Zeroflag,MEM_Aluaneb);
    assign {MEM_ALU_Result_REGrs_EXE,MEM_ALU_Result_REGrt_EXE} = {MEM_ALU_Result,MEM_ALU_Result};
    Datamemory_addr_translater dat(MEM_opcode,MEM_immediate,MEM_memory_addr,MEM_dataaddr_exception);
    DataMem_dataselection dd(areset,MEM_mdata_sel,MEM_REGrt,WB_rf_write_data_ID,MEM_memorydata_w);
    IO_cache ic(clk,MEM_memory_addr[31],MEM_REGrt,IO_dataout);
    DataMemoryFile dmf(clk,areset,MEM_memory_data_rw_ena,MEM_memory_addr,MEM_memorydata_w,MEM_memory_addr,MEM_Memory_data_out[7:0],MEM_Memory_data_out[15:8],MEM_Memory_data_out[23:16],MEM_Memory_data_out[31:24],AddrError);
    assign {MEM_REGrs_Memroy_dataout_EXE,MEM_REGrt_Memroy_dataout_EXE} = {MEM_Memory_data_out,MEM_Memory_data_out};
    MEM_WB_var_converter mwvc(MEM_opcode,MEM_fun,MEM_rs,MEM_rt,MEM_rd,MEM_REGrs,MEM_REGrt,MEM_Memory_data_out,MEM_ALU_Result,MEM_alu_flag,MEM_PC_next_4,MEM_rf_write_addr,MEM_immediate,MEM_IntegerOverflow,MEM_AluaLessAlub,MEM_AlubLessAlua,MEM_Aluaeb,MEM_Zeroflag,MEM_Aluaneb,
                            MEM_opcode_WB,MEM_fun_WB,MEM_rs_WB,MEM_rt_WB,MEM_rd_WB,MEM_REGrs_WB,MEM_REGrt_WB,MEM_Memory_data_out_WB,MEM_ALU_Result_WB,MEM_alu_flag_WB,MEM_PC_next_4_WB,MEM_rf_write_addr_WB,MEM_immediate_WB,MEM_IntegerOverflow_WB,MEM_AluaLessAlub_WB,MEM_AlubLessAlua_WB,MEM_Aluaeb_WB,MEM_Zeroflag_WB,MEM_Aluaneb_WB);
    //WB stage
    MEM_WB_registers memwb(clk,areset,MEM_Pipeline_WB,MEM_opcode_WB,MEM_fun_WB,MEM_rs_WB,MEM_rt_WB,MEM_rd_WB,MEM_ALU_Result_WB,MEM_REGrs_WB,MEM_REGrt_WB,MEM_alu_flag_WB,MEM_Memory_data_out_WB,MEM_PC_next_4_WB,MEM_rf_write_addr_WB,MEM_immediate_WB,MEM_IntegerOverflow_WB,MEM_AluaLessAlub_WB,MEM_AlubLessAlua_WB,MEM_Aluaeb_WB,MEM_Zeroflag_WB,MEM_Aluaneb_WB,
                            WB_opcode,WB_fun,WB_rs,WB_rt,WB_rd,WB_ALU_Result,WB_REGrs,WB_REGrt,WB_alu_flag,WB_Memory_data_out,WB_PC_next_4,WB_rf_write_addr,WB_immediate,WB_IntegerOverflow,WB_AluaLessAlub,WB_AlubLessAlua,WB_Aluaeb,WB_Zeroflag,WB_Aluaneb);
    writeback_data_selection wds(WB_opcode,WB_fun,WB_ALU_Result,WB_alu_flag,WB_PC_next_4,WB_Memory_data_out,WB_data_out);
    assign {WB_REGrs_data_EXE,WB_REGrt_data_EXE} = {WB_data_out,WB_data_out};//回传数据旁路
    assign WB_rf_write_data_ID = WB_data_out;
    assign WB_rf_write_addr_ID = WB_rf_write_addr;
    assign WB_immediate_IF = WB_immediate;

endmodule
