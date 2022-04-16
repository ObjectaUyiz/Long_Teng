`timescale 1ns / 1ps
module EXE_MEM_registers(
    input clk,
    input areset,
    input [1:0] pipeline_control,
    input [5:0] opcode,
    input [5:0] fun,
    input [4:0] rs,
    input [4:0] rt,
    input [4:0] rd,
    input [31:0] immediate,
    input [31:0] ALU_Result,
    input [31:0] REGrs,
    input [31:0] REGrt,
    input [7:0] alu_flag,
    input Exception_event_control,
    input [5:0] data_rw_ena,
    input [31:0] PC_next_4,
    input [4:0] rf_write_addr,
    input [2:0] mdata_sel,
    input IntegerOverflow,
    input AluaLessAlub,
    input AlubLessAlua,
    input Aluaeb,
    input Zeroflag,
    input Aluaneb,
    input Err_instruction,
    output [5:0] MEM_opcode_WB,
    output [5:0] MEM_fun_WB,
    output [4:0] MEM_rs_WB,
    output [4:0] MEM_rt_WB,
    output [4:0] MEM_rd_WB,
    output [31:0] MEM_immediate_WB,
    output [31:0] MEM_ALU_Result_WB,
    output [31:0] MEM_REGrs_WB,
    output [31:0] MEM_REGrt_WB,
    output [7:0] MEM_alu_flag_WB,
    output MEM_Exception_event_control_WB,
    output [5:0] MEM_data_rw_ena_WB,
    output [31:0] MEM_PC_next_4_WB,
    output [4:0] MEM_rf_write_addr_WB,
    output [2:0] MEM_mdata_sel_WB,
    output MEM_IntegerOverflow_WB,
    output MEM_AluaLessAlub_WB,
    output MEM_AlubLessAlua_WB,
    output MEM_Aluaeb_WB,
    output MEM_Zeroflag_WB,
    output MEM_Aluaneb_WB,
    output MEM_Err_instruction_WB
);


    reg [2:0] mdata_sel_inter;
    reg [5:0] opcode_inter;
    reg [5:0] fun_inter;
    reg [4:0] rs_inter;
    reg [4:0] rt_inter;
    reg [4:0] rd_inter;
    reg [4:0] rf_write_addr_inter;
    reg [31:0] immediate_inter;
    reg [31:0] ALU_Result_inter;
    reg [31:0] REGrs_inter;
    reg [31:0] REGrt_inter;
    reg [7:0] alu_flag_inter;
    reg Exception_event_control_inter;
    reg [5:0] data_rw_ena_inter;
    reg [31:0] PC_next_4_inter;
    reg IntegerOverflow_inter;
    reg AluaLessAlub_inter;
    reg AlubLessAlua_inter;
    reg Aluaeb_inter;
    reg Zeroflag_inter;
    reg Aluaneb_inter;
    reg Err_instruction_inter;
    wire [31:0] empty;

    assign empty = 0;
 
     always@(posedge clk or posedge areset)begin
        if(areset) begin
            opcode_inter <= 0;
            fun_inter <= 0;
            rs_inter <= 0;
            rt_inter <= 0;
            rd_inter <= 0;
            immediate_inter <= 0;
            ALU_Result_inter <= 0;
            REGrs_inter <= 0;
            REGrt_inter <= 0;
            alu_flag_inter <= 0;
            Exception_event_control_inter <= 0;
            data_rw_ena_inter <= 0;
            PC_next_4_inter <= 0;
            rf_write_addr_inter <= 0;
            mdata_sel_inter <= 0;
            IntegerOverflow_inter <= 0;
            AluaLessAlub_inter <= 0;
            AlubLessAlua_inter <= 0;
            Aluaeb_inter <= 0;
            Zeroflag_inter <= 0;
            Aluaneb_inter <= 0;
            Err_instruction_inter <= 0;
        end
        else begin
        case(pipeline_control)
        2'b00: begin
            opcode_inter <= opcode;
            fun_inter <= fun;
            rs_inter <= rs;
            rt_inter <= rt;
            rd_inter <= rd;
            immediate_inter <= immediate;
            ALU_Result_inter <= ALU_Result;
            REGrs_inter <= REGrs;
            REGrt_inter <= REGrt;
            alu_flag_inter <= alu_flag;
            Exception_event_control_inter <= Exception_event_control;
            data_rw_ena_inter <= data_rw_ena;
            PC_next_4_inter <= PC_next_4;
            rf_write_addr_inter <= rf_write_addr;
            mdata_sel_inter <= mdata_sel;
            IntegerOverflow_inter <= IntegerOverflow;
            AluaLessAlub_inter <= AluaLessAlub;
            AlubLessAlua_inter <= AlubLessAlua;
            Aluaeb_inter <= Aluaeb;
            Zeroflag_inter <= Zeroflag;
            Aluaneb_inter <= Aluaneb;
            Err_instruction_inter <= Err_instruction;
        end
        2'b01:begin 
            opcode_inter <= empty;
            fun_inter <= empty;
            rs_inter <= empty;
            rt_inter <= empty;
            rd_inter <= empty;
            immediate_inter <= empty;
            ALU_Result_inter <= empty;
            REGrs_inter <= empty;
            REGrt_inter <= empty;
            alu_flag_inter <= empty;
            Exception_event_control_inter <= empty;
            data_rw_ena_inter <= empty;
            PC_next_4_inter <= empty;
            rf_write_addr_inter <= empty;
            mdata_sel_inter <= empty;
            IntegerOverflow_inter <= empty;
            AluaLessAlub_inter <= empty;
            AlubLessAlua_inter <= empty;
            Aluaeb_inter <= empty;
            Zeroflag_inter <= empty;
            Aluaneb_inter <= empty;
            Err_instruction_inter <= empty;
        end
        2'b10:begin
            opcode_inter <= opcode_inter;
            fun_inter <= fun_inter;
            rs_inter <= rs_inter;
            rt_inter <= rt_inter;
            rd_inter <= rd_inter;
            immediate_inter <= immediate_inter;
            REGrs_inter <= REGrs_inter;
            REGrt_inter <= REGrt_inter;
            alu_flag_inter <= alu_flag_inter;
            Exception_event_control_inter <= Exception_event_control_inter;
            data_rw_ena_inter <= data_rw_ena_inter;
            PC_next_4_inter <= PC_next_4_inter;
            ALU_Result_inter <= ALU_Result_inter;
            rf_write_addr_inter <= rf_write_addr_inter;
            mdata_sel_inter <= mdata_sel_inter;
            IntegerOverflow_inter <= IntegerOverflow_inter;
            AluaLessAlub_inter <= AluaLessAlub_inter;
            AlubLessAlua_inter <= AlubLessAlua_inter;
            Aluaeb_inter <= Aluaeb_inter;
            Zeroflag_inter <= Zeroflag_inter;
            Aluaneb_inter <= Aluaneb_inter;
            Err_instruction_inter <= Err_instruction_inter;
        end
        endcase
        end
    end

    assign MEM_opcode_WB = opcode_inter;
    assign MEM_fun_WB = fun_inter;
    assign MEM_rs_WB = rs_inter;
    assign MEM_rt_WB = rt_inter;
    assign MEM_rd_WB = rd_inter;
    assign MEM_immediate_WB = immediate_inter;
    assign MEM_ALU_Result_WB = ALU_Result_inter;
    assign MEM_REGrs_WB = REGrs_inter;
    assign MEM_REGrt_WB = REGrt_inter;
    assign MEM_alu_flag_WB = alu_flag_inter;
    assign MEM_Exception_event_control_WB = Exception_event_control_inter;
    assign MEM_data_rw_ena_WB = data_rw_ena_inter;
    assign MEM_PC_next_4_WB = PC_next_4_inter;
    assign MEM_rf_write_addr_WB = rf_write_addr_inter;
    assign MEM_mdata_sel_WB = mdata_sel_inter;
    assign MEM_IntegerOverflow_WB = IntegerOverflow_inter;
    assign MEM_AluaLessAlub_WB = AluaLessAlub_inter;
    assign MEM_AlubLessAlua_WB = AlubLessAlua_inter;
    assign MEM_Aluaeb_WB = Aluaeb_inter;
    assign MEM_Zeroflag_WB = Zeroflag_inter;
    assign MEM_Aluaneb_WB = Aluaneb_inter;
    assign MEM_Err_instruction_WB = Err_instruction_inter;

endmodule