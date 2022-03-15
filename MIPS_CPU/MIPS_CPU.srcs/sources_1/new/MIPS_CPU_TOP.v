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
    output [31:0] Instruction_ID
    );
    //Define different stage resources, include wire,reg etc.
    //IF
    wire [31:0] Instruction,IF_Instruction_ID;
    wire [31:0] PC,PC_next,IF_PC_next_ID;
    wire [1:0] Sel_PC;
    //ID
    wire Sel_extend,ID_SignalException_EXE;
    wire [1:0] sel_imm,sel_REG_w;
    wire [2:0] ID_sel_alua_EXE,ID_sel_alub_EXE;
    wire [5:0] ID_opcode,ID_fun;
    wire [4:0] ID_rs_EXE,ID_rd_EXE,ID_rt_EXE,ID_sa,ID_rf_write_addr_EXE;
    wire [15:0] ID_imm;
    wire [25:0] ID_instr_index;
    wire [3:0] ID_sel_alu_op_EXE;
    wire [31:0] ID_imm_EXE,ID_REGrs_EXE,ID_REGrt_EXE,ID_PC_next_4_EXE;
    //EXE
    wire [31:0] EXE_Alu_input_A,EXE_Alu_input_B;
    wire EXE_SignalException;
    wire [2:0] EXE_sel_alua,EXE_sel_alub;
    wire [4:0] EXE_rs,EXE_rt,EXE_rd,EXE_rf_write_addr;
    wire [3:0] EXE_sel_alu_op;
    wire [31:0] EXE_imm,EXE_REGrs,EXE_REGrt,EXE_PC_next_4;
    //MEM
    //WB
    wire WB_wirte_ena_ID;
    wire [31:0] WB_rf_write_data_ID;

    wire [1:0] IF_Pipeline_ID,ID_Pipeline_EXE,EXE_Pipeline_MEM,MEM_Pipeline_WB;

    //ID_Controller IDc(.clk(clk),.Instruction(Instruction),.Aluflag_wb(),.Sel_PC_out(PC),.Sel_REG_w_out(),.Sel_Imm_out(),.Sel_REG_w_ena_out(),.Sel_extend_out(),.Sel_pipeline_out(),.Sel_alua_out(),.Sel_alub_out(),.Jump_condition_out(),.SignalException_out(),.Data_WR_out(),.Data_WR_Byte_out(),.Sel_WB_data_out());

    //IF stage
    Instruction_fetch If(.clk(clk),.areset(areset),.ena(Ifena),.emptyena(emptyena),.I_sel(Sel_PC),.PC(PC),.PC_next(PC_next));
    InstructionMemory IM(.InstAddr(PC[11:2]),.Instruction(Instruction));
    //ID stage
    IF_ID_registers ifid(clk,IF_Pipeline_ID,Instruction,PC_next,IF_Instruction_ID,IF_PC_next_ID);
    InstructionDecoder ID(IF_Instruction_ID,ID_opcode,ID_rs,ID_rt,ID_rd,ID_sa,ID_fun,ID_imm,ID_instr_index);
    assign Instruction_ID = IF_Instruction_ID;
    PC_next_add4 pna4(IF_PC_next_ID,ID_PC_next_4_EXE);
    Register_wirte_address_selection rwas(sel_REG_w,ID_rt,ID_rd,5'b11111,ID_rf_write_addr_EXE);
    Immediate_dealing ImmD(sel_imm,Sel_extend,ID_imm,ID_instr_index,ID_imm_EXE);
    Register_File RF(clk,WB_wirte_ena_ID,ID_rs,ID_rt,ID_rf_write_EXE,WB_rf_write_data_ID,ID_REGrs_EXE,ID_REGrt_EXE);
    //EX stage
    ID_EXE_registers idexe(clk,ID_Pipeline_EXE,ID_rs_EXE,ID_rt_EXE,ID_rd_EXE,ID_imm_EXE,
                            ID_sel_alua_EXE,ID_sel_alub_EXE,ID_SignalException_EXE,ID_sel_alu_op_EXE,ID_rf_write_addr_EXE,ID_REGrs_EXE,ID_REGrt_EXE,ID_PC_next_4_EXE,
                            EXE_rs,EXE_rt,EXE_rd,EXE_imm,EXE_sel_alua,EXE_sel_alub,EXE_SignalException,EXE_sel_alu_op,EXE_rf_write_addr,EXE_REGrs,EXE_REGrt,EXE_PC_next_4);
    //ALU_module alu();
    //MEM stage
    //EXE_MEM_registers exemem();
    //DataMemory dataMem(.clka(clka),.ena(ena),.wea(wea),.addra(addra),.dina(dina),.clkb(clkb),.enb(enb),.addrb(addrb),.doutb(doutb));
    //WB stage
    //MEM_WB_registers memwb();

endmodule
