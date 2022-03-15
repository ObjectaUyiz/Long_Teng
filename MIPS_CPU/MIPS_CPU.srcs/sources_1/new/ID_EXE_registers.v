`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2022 06:43:54 PM
// Design Name: 
// Module Name: ID_EXE_registers
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
// 所有需要的寄存器地址和寄存器取出来的值，立即数，译码获得的指令
//////////////////////////////////////////////////////////////////////////////////


module ID_EXE_registers(
    input clk,
    input [1:0] pipeline_control,
    input [4:0] rs,
    input [4:0] rt,
    input [4:0] rd,
    input [31:0] Imm,
    input [2:0] Sel_alua,
    input [2:0] Sel_alub,
    input SignalException,
    input [3:0] sel_alu_op,
    input [4:0] WB_addr,
    input [31:0] REGrs,
    input [31:0] REGrt,
    input [31:0] PC_next_4,
    output [31:0] EXE_PC_next_4_MEM,
    output [31:0] EXE_REGrs_MEM,
    output [31:0] EXE_REGrt_MEM,
    output [4:0] EXE_rs_MEM,
    output [4:0] EXE_rt_MEM,
    output [4:0] EXE_rd_MEM,
    output [31:0] EXE_Imm_MEM,
    output [2:0] EXE_Sel_alua,
    output [2:0] EXE_Sel_alub,
    output EXE_SignalException,
    output [3:0] EXE_sel_alu_op,
    output [4:0] EXE_WB_addr_MEM
    );

    reg [4:0] rs_inter;
    reg [4:0] rt_inter;
    reg [4:0] rd_inter;
    reg Sel_REG_w_ena_inter;
    reg [31:0] Imm_inter;
    reg [2:0] Sel_alua_inter;
    reg [2:0] Sel_alub_inter;
    reg SignalException_inter;
    reg [3:0] sel_alu_op_inter;
    reg [4:0] WB_addr_inter;
    reg [31:0] REGrs_inter,REGrt_inter,PC_next_4_inter;
    reg [31:0] empty;

    always@(posedge clk)begin
        case(pipeline_control)
        2'b00: begin
            rs_inter <= rs;
            rt_inter <= rt;
            rd_inter <= rd;
            Imm_inter <= Imm;
            Sel_alua_inter <= Sel_alua;
            Sel_alub_inter <= Sel_alub;
            SignalException_inter <= SignalException;
            sel_alu_op_inter <= sel_alu_op;
            WB_addr_inter <= WB_addr;
            REGrs_inter <= REGrs;
            REGrt_inter <= REGrt;
        end
        2'b01:begin 
            rs_inter <= empty;
            rt_inter <= empty;
            rd_inter <= empty;
            Imm_inter <= empty;
            Sel_alua_inter <= empty;
            Sel_alub_inter <= empty;
            SignalException_inter <= empty;
            sel_alu_op_inter <= empty;
            WB_addr_inter <= empty;
            REGrs_inter <= empty;
            REGrt_inter <= empty;
        end
        2'b10:begin
            rs_inter <= rs_inter;
            rt_inter <= rt_inter;
            rd_inter <= rd_inter;
            Imm_inter <= Imm_inter;
            Sel_alua_inter <= Sel_alua_inter;
            Sel_alub_inter <= Sel_alub_inter;
            SignalException_inter <= SignalException_inter;
            sel_alu_op_inter <= sel_alu_op_inter;
            WB_addr_inter <= WB_addr_inter;
            REGrs_inter <= REGrs_inter;
            REGrt_inter <= REGrt_inter;
        end
        endcase
    end

    assign EXE_rs_MEM = rs_inter;
    assign EXE_rt_MEM = rt_inter;
    assign EXE_rd_MEM = rd_inter;
    assign EXE_Imm_MEM = Imm_inter;
    assign EXE_Sel_alua = Sel_alua_inter;
    assign EXE_Sel_alub = Sel_alub_inter;
    assign EXE_SignalException = SignalException_inter;
    assign EXE_sel_alu_op = sel_alu_op_inter;
    assign EXE_WB_addr_MEM = WB_addr_inter;
    assign EXE_REGrs_MEM = REGrs_inter;
    assign EXE_REGrt_MEM = REGrt_inter;
    assign EXE_PC_next_4_MEM = PC_next_4_inter;

endmodule
