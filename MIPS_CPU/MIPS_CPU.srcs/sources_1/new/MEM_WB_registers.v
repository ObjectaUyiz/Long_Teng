`timescale 1ns / 1ps
module MEM_WB_registers(
    input clk,
    input areset,
    input [1:0] pipeline_control,
    input [5:0] opcode,
    input [5:0] fun,
    input [4:0] rs,
    input [4:0] rt,
    input [4:0] rd,
    input [31:0] ALU_Result,
    input [31:0] REGrs,
    input [31:0] REGrt,
    input [7:0] alu_flag,
    input [31:0] Memory_data_out,
    input [31:0] PC_next_4,
    input [4:0] rf_write_addr,
    input [31:0] immediate,
    input IntegerOverflow,
    input AluaLessAlub,
    input AlubLessAlua,
    input Aluaeb,
    input Zeroflag,
    input Aluaneb,
    output [5:0] WB_opcode_WB,
    output [5:0] WB_fun_WB,
    output [4:0] WB_rs_WB,
    output [4:0] WB_rt_WB,
    output [4:0] WB_rd_WB,
    output [31:0] WB_ALU_Result_WB,
    output [31:0] WB_REGrs_WB,
    output [31:0] WB_REGrt_WB,
    output [7:0] WB_alu_flag_WB,
    output [31:0] WB_Memory_data_out_WB,
    output [31:0] WB_PC_next_4_WB,
    output [4:0] WB_rf_write_addr_WB,
    output [31:0] WB_immediate_WB,
    output WB_IntegerOverflow_WB,
    output WB_AluaLessAlub_WB,
    output WB_AlubLessAlua_WB,
    output WB_Aluaeb_WB,
    output WB_Zeroflag_WB,
    output WB_Aluaneb_WB
);
    reg IntegerOverflow_inter;
    reg AluaLessAlub_inter;
    reg AlubLessAlua_inter;
    reg Aluaeb_inter;
    reg Zeroflag_inter;
    reg Aluaneb_inter;
    reg [5:0] opcode_inter;
    reg [5:0] fun_inter;
    reg [4:0] rs_inter;
    reg [4:0] rt_inter;
    reg [4:0] rd_inter;
    reg [4:0] rf_write_addr_inter;
    reg [31:0] ALU_Result_inter;
    reg [31:0] REGrs_inter;
    reg [31:0] REGrt_inter;
    reg [7:0] alu_flag_inter;
    reg [31:0] Memory_data_out_inter;
    reg [31:0] PC_next_4_inter;
    reg [31:0] immediate_inter;
    reg [31:0] empty;


    //assign empty = 0;

    always@(posedge clk or posedge areset)begin
        if(areset) begin
            rs_inter <= 0;
            rt_inter <= 0;
            rd_inter <= 0;
            REGrs_inter <= 0;
            REGrt_inter <= 0;
            opcode_inter <= 0;
            fun_inter <= 0;
            ALU_Result_inter <= 0;
            alu_flag_inter <= 0;
            Memory_data_out_inter <= 0;
            PC_next_4_inter <= 0;
            rf_write_addr_inter <= 0;
            immediate_inter <= 0;
            IntegerOverflow_inter <= 0;
            AluaLessAlub_inter <= 0;
            AlubLessAlua_inter <= 0;
            Aluaeb_inter <= 0;
            Zeroflag_inter <= 0;
            Aluaneb_inter <= 0;
        end
        else begin
        case(pipeline_control)
        2'b00: begin
            rs_inter <= rs;
            rt_inter <= rt;
            rd_inter <= rd;
            REGrs_inter <= REGrs;
            REGrt_inter <= REGrt;
            opcode_inter <= opcode;
            fun_inter <= fun;
            ALU_Result_inter <= ALU_Result;
            alu_flag_inter <= alu_flag;
            Memory_data_out_inter <= Memory_data_out;
            PC_next_4_inter <= PC_next_4;
            rf_write_addr_inter <= rf_write_addr;
            immediate_inter <= immediate;
            IntegerOverflow_inter <= IntegerOverflow;
            AluaLessAlub_inter <= AluaLessAlub;
            AlubLessAlua_inter <= AlubLessAlua;
            Aluaeb_inter <= Aluaeb;
            Zeroflag_inter <= Zeroflag;
            Aluaneb_inter <= Aluaneb;
        end
        2'b01:begin 
            rs_inter <= empty;
            rt_inter <= empty;
            rd_inter <= empty;
            REGrs_inter <= empty;
            REGrt_inter <= empty;
            opcode_inter <= empty;
            fun_inter <= empty;
            ALU_Result_inter <= empty;
            alu_flag_inter <= empty;
            Memory_data_out_inter <= empty;
            PC_next_4_inter <= empty;
            rf_write_addr_inter <= empty;
            immediate_inter <= empty;
            IntegerOverflow_inter <= empty;
            AluaLessAlub_inter <= empty;
            AlubLessAlua_inter <= empty;
            Aluaeb_inter <= empty;
            Zeroflag_inter <= empty;
            Aluaneb_inter <= empty;
        end
        2'b10:begin
            rs_inter <= rs_inter;
            rt_inter <= rt_inter;
            rd_inter <= rd_inter;
            REGrs_inter <= REGrs_inter;
            REGrt_inter <= REGrt_inter;
            opcode_inter <= opcode_inter;
            fun_inter <= fun_inter;
            ALU_Result_inter <= ALU_Result_inter;
            alu_flag_inter <= alu_flag_inter;
            Memory_data_out_inter <= Memory_data_out_inter;
            PC_next_4_inter <= PC_next_4_inter;
            rf_write_addr_inter <= rf_write_addr_inter;
            immediate_inter <= immediate_inter;
            IntegerOverflow_inter <= IntegerOverflow_inter;
            AluaLessAlub_inter <= AluaLessAlub_inter;
            AlubLessAlua_inter <= AlubLessAlua_inter;
            Aluaeb_inter <= Aluaeb_inter;
            Zeroflag_inter <= Zeroflag_inter;
            Aluaneb_inter <= Aluaneb_inter;
        end
        endcase
        end
    end

    assign WB_opcode_WB = opcode_inter;
    assign WB_fun_WB = fun_inter;
    assign WB_rs_WB = rs_inter;
    assign WB_rt_WB = rt_inter;
    assign WB_rd_WB = rd_inter;
    assign WB_ALU_Result_WB = ALU_Result_inter;
    assign WB_REGrs_WB = REGrs_inter;
    assign WB_REGrt_WB = REGrt_inter;
    assign WB_alu_flag_WB = alu_flag_inter;
    assign WB_Memory_data_out_WB = Memory_data_out_inter;
    assign WB_PC_next_4_WB = PC_next_4_inter;
    assign WB_rf_write_addr_WB = rf_write_addr_inter;
    assign WB_immediate_WB = immediate_inter;
    assign WB_IntegerOverflow_WB = IntegerOverflow_inter;
    assign WB_AluaLessAlub_WB = AluaLessAlub_inter;
    assign WB_AlubLessAlua_WB = AlubLessAlua_inter;
    assign WB_Aluaeb_WB = Aluaeb_inter;
    assign WB_Zeroflag_WB = Zeroflag_inter;
    assign WB_Aluaneb_WB = Aluaneb_inter;

endmodule