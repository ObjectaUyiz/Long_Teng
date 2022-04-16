`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/22/2022 03:11:39 PM
// Design Name: 
// Module Name: DataMemoryFile
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


module DataMemoryFile(
    input clk,
    input areset,
    input [5:0] ena,
    input [31:0] Waddr,
    input [31:0] W_data,
    input [31:0] Raddr,
    output [7:0] R_data_0,
    output [7:0] R_data_1,
    output [7:0] R_data_2,
    output [7:0] R_data_3,
    output AddrError
    );

    integer i;
    //小端模式
    wire [7:0] Data_memory_0;
    wire [7:0] Data_memory_1;
    wire [7:0] Data_memory_2;
    wire [7:0] Data_memory_3;
    reg [31:0] Data_memory[0:1023];
    reg [7:0] Data_memory_0_inter,Data_memory_1_inter,Data_memory_2_inter,Data_memory_3_inter;
    reg ERROR,AddrError_inter;

    assign {Data_memory_3,Data_memory_2,Data_memory_1,Data_memory_0} = Data_memory[Waddr[11:2]];

    always @(posedge clk or posedge areset) begin
        if(areset) begin
            for(i=0;i<1024;i=i+1)begin
                Data_memory[i] <= 32'hffff_ffff;
            end
        end
        else begin
            if((~ena[4])&ena[3])begin
                case(Waddr[1:0])//sb
                2'b00: Data_memory[Waddr[11:2]] <= ena[5]?Data_memory[Waddr[11:2]]:{Data_memory_3,Data_memory_2,Data_memory_1,W_data[7:0]};
                2'b01: Data_memory[Waddr[11:2]] <= ena[5]?Data_memory[Waddr[11:2]]:{Data_memory_3,Data_memory_2,W_data[7:0],Data_memory_0};
                2'b10: Data_memory[Waddr[11:2]] <= ena[5]?Data_memory[Waddr[11:2]]:{Data_memory_3,W_data[7:0],Data_memory_1,Data_memory_0};
                2'b11: Data_memory[Waddr[11:2]] <= ena[5]?Data_memory[Waddr[11:2]]:{W_data[7:0],Data_memory_2,Data_memory_1,Data_memory_0};
                default:;
                endcase
            end
            else if(((~ena[4])&(~ena[3]))&(~|Waddr[1:0])) begin//sw
                Data_memory[Waddr[11:2]] <= ena[5]?Data_memory[Waddr[11:2]]:W_data;
            end
            else begin
                Data_memory[Waddr[11:2]] <= Data_memory[Waddr[11:2]];
            end
        end
    end

    always @(*) begin
        if(ena[4]&ena[3]) begin
            case(Raddr[1:0])//lb
            2'b00: {Data_memory_0_inter,Data_memory_1_inter,Data_memory_2_inter,Data_memory_3_inter} = {Data_memory_0,{24{Data_memory_0[7]}}};
            2'b01: {Data_memory_0_inter,Data_memory_1_inter,Data_memory_2_inter,Data_memory_3_inter} = {Data_memory_1,{24{Data_memory_1[7]}}};
            2'b10: {Data_memory_0_inter,Data_memory_1_inter,Data_memory_2_inter,Data_memory_3_inter} = {Data_memory_2,{24{Data_memory_2[7]}}};
            2'b11: {Data_memory_0_inter,Data_memory_1_inter,Data_memory_2_inter,Data_memory_3_inter} = {Data_memory_3,{24{Data_memory_3[7]}}};
            endcase
        end
        else if((ena[4]&~ena[3])&(~|Raddr[1:0])) begin//lw
            {Data_memory_0_inter,Data_memory_1_inter,Data_memory_2_inter,Data_memory_3_inter} = Data_memory[Waddr[11:2]];
        end
        else begin
            {Data_memory_0_inter,Data_memory_1_inter,Data_memory_2_inter,Data_memory_3_inter} = 0;
        end
    end

    always @(*) begin
        ERROR = ena[5]?0:(((ena[4]&~ena[3])&(|Raddr[1:0]))|(((~ena[4])&(~ena[3]))&(|Waddr[1:0])));
    end

    always @(negedge clk or posedge areset) begin
        if(areset) AddrError_inter = 0;
        else 
        AddrError_inter = ERROR;
    end

    assign R_data_0 = ena[5]?0:Data_memory_0_inter;
    assign R_data_1 = ena[5]?0:Data_memory_1_inter;
    assign R_data_2 = ena[5]?0:Data_memory_2_inter;
    assign R_data_3 = ena[5]?0:Data_memory_3_inter;
    assign AddrError = AddrError_inter;

endmodule
