`timescale 1ns / 1ps
module IF_ID_registers(
    input clk,
    input areset,
    input [1:0] pipeline_control,
    input [31:0] Instruction_in,
    input [31:0] PC_next_in,
    output [31:0] IF_Instruction_ID,
    output [31:0] IF_PC_next_ID
);

reg [31:0] Instruction,PC_next;
wire [31:0] empty;

assign empty = 0;

always@(posedge clk or posedge areset)begin
    if(areset) begin Instruction <= 0;PC_next <= 0;end
    else begin
    case(pipeline_control)
        2'b01:begin Instruction <= empty;PC_next <= PC_next;end 
        2'b00:begin Instruction <= Instruction_in;
                    PC_next <= PC_next_in;
                    end 
        2'b10:begin Instruction <= Instruction;
                    PC_next <= PC_next;
                    end 
        default:begin Instruction <= Instruction;
                    PC_next <= PC_next;
                    end 
    endcase
    end
end

assign IF_Instruction_ID = Instruction;
assign IF_PC_next_ID = PC_next;

endmodule