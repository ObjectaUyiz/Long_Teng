`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2022 01:10:11 PM
// Design Name: 
// Module Name: CP0
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
// Status 状态寄存器，EPC上次异常时的程序计数器，Cause寄存器目前用来保存外部中断的原因，count寄存器用来计量到目前为止程序经过的时钟数
//////////////////////////////////////////////////////////////////////////////////


module CP0(
    input clk,
    input areset,
    input clear,
    input [31:0] Exception_return_pc_addr,
    input [15:0] Interupt,
    input IntegerOverflow_exception,
    input Address_exception,
    input Syscall,
    input Err_instruction_exception,
    input Empty_ins,
    output [31:0] return_pc_addr,
    output [31:0] EI_entry_addr,
    output [7:0] Exception_busy_type,
    output [31:0] time_clock,
    output EXL_status
    );

    parameter IntegerOverflow=2,AddressWrong=1,SyscallInterupt=3,Errorinstruction=4,TimeOverflow=5,Count=9,Status=12,EPC=14,Cause=13,Compare=11,EXL=8;
    reg [31:0] Reg_CP0 [0:31];
    reg [31:0] EI_entry [0:19];

    always @(posedge areset) begin
        EI_entry[IntegerOverflow] = 32'h000007d0;
        EI_entry[AddressWrong] = 32'h00000fa0;
        EI_entry[Errorinstruction] = 32'h000007d0;

    end


    always @(*) begin
        if(areset) begin
            Reg_CP0[Status] = 32'h1000_0000;
        end
        else begin
            Reg_CP0[Status] = IntegerOverflow_exception?{Reg_CP0[Status][31:9],9'b100000010}
                            :Address_exception?{Reg_CP0[Status][31:9],9'b100000001}
                            :Err_instruction_exception?{Reg_CP0[Status][31:9],9'b100000100}
                            :Syscall?{Reg_CP0[Status][31:9],9'b100000011}
                            :(|Interupt)?{Reg_CP0[Status][31:9],9'b100000110}
                            :Reg_CP0[TimeOverflow]?{Reg_CP0[Status][31:9],9'b100000101}
                            :clear?{Reg_CP0[Status][31:9],9'b0}
                            :Reg_CP0[Status];
        end
    end

    always @(*) begin
        if(areset) begin
            Reg_CP0[Cause] = 32'h0000_0000;
        end
        else begin
            Reg_CP0[Cause] = Interupt[0]?1:Interupt[1]?2:Interupt[2]?3:Interupt[3]?4:Interupt[4]?5:Interupt[5]?6:Interupt[6]?7:Interupt[7]?8:32'h0000_0000;
        end
    end

    always @(posedge Reg_CP0[Status][EXL]) begin
        if(areset)Reg_CP0[EPC] = 0;
        else begin
        Reg_CP0[EPC] = Empty_ins?(Exception_return_pc_addr):(Exception_return_pc_addr-4);//Reg_CP0[Status][EXL]?Reg_CP0[EPC]:Empty_ins?(Exception_return_pc_addr):(Exception_return_pc_addr-4);
        end
    end

    always @(posedge clk or posedge areset) begin
        if(areset) begin Reg_CP0[Count] <= 0;Reg_CP0[TimeOverflow] = 0;end
        else begin
            case(Reg_CP0[Count])
            32'hffff_ffff: begin Reg_CP0[TimeOverflow] = 1; Reg_CP0[Count] = 0; end
            default: begin Reg_CP0[Count] <= Reg_CP0[Count] + 1'b1;Reg_CP0[TimeOverflow] = 0;end
            endcase
        end
    end

    assign return_pc_addr = Reg_CP0[EPC];//EPC寄存器保存到的数据为当前异常指令的地址，异常结束后跳转到下一条指令继续执行
    assign Exception_busy_type = Reg_CP0[Status][7:0];
    assign EXL_status = Reg_CP0[Status][EXL];
    assign EI_entry_addr = (Reg_CP0[Cause]==0)?EI_entry[Reg_CP0[Status][7:0]]:EI_entry[Reg_CP0[Cause]+5];
    assign time_clock = Reg_CP0[Count];

endmodule
