`timescale 1ns / 1ps
module MEM_WB_registers(
    input clk,
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
    output [5:0] WB_opcode_WB,
    output [5:0] WB_fun_WB,
    output [4:0] WB_rs_WB,
    output [4:0] WB_rt_WB,
    output [4:0] WB_rd_WB,
    output [31:0] WB_ALU_Result_WB,
    output [31:0] WB_REGrs_WB,
    output [31:0] WB_REGrt_WB,
    output [7:0] WB_alu_flag_WB,
    output [3:0] WB_Memory_data_out_WB,
    output [31:0] WB_PC_next_4_WB
);
    reg [5:0] opcode_inter;
    reg [5:0] fun_inter;
    reg [4:0] rs_inter;
    reg [4:0] rt_inter;
    reg [4:0] rd_inter;
    reg [31:0] ALU_Result_inter;
    reg [31:0] REGrs_inter;
    reg [31:0] REGrt_inter;
    reg [7:0] alu_flag_inter;
    reg [31:0] Memory_data_out_inter;
    reg [31:0] PC_next_4_inter;
    reg [31:0] empty;

    always@(posedge clk)begin
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
        end
        endcase
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

endmodule