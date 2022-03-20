`timescale 1ns / 1ps
module EXE_MEM_registers(
    input clk,
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
    input [31:0] PC_next_4,
    input [3:0] data_rw_ena,
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
    output [3:0] MEM_data_rw_ena_WB,
    output [31:0] MEM_PC_next_4_WB
);

    reg [5:0] opcode_inter;
    reg [5:0] fun_inter;
    reg [4:0] rs_inter;
    reg [4:0] rt_inter;
    reg [4:0] rd_inter;
    reg [31:0] immediate_inter;
    reg [31:0] ALU_Result_inter;
    reg [31:0] REGrs_inter;
    reg [31:0] REGrt_inter;
    reg [7:0] alu_flag_inter;
    reg Exception_event_control_inter;
    reg [3:0] data_rw_ena_inter;
    reg [31:0] PC_next_4_inter;
    reg [31:0] empty;
 
     always@(posedge clk)begin
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
        end
        endcase
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

endmodule