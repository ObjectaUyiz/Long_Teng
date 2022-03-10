`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/07/2022 03:10:19 PM
// Design Name: 
// Module Name: HaultDesign
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


module HaultDesign(
        input clk,
        input reset,
        input wena,
        input [31:0] data,
        output [31:0] data_IF_out,
        output [31:0] data_ID_out,
        output [31:0] data_EXE_out,
        output [31:0] data_MEM_out,
        output [31:0] data_WB_out
    );
    reg [4:0] ena;
    reg [31:0] data_IF,data_ID,data_EXE,data_MEM,data_WB,data_IF_next,reg_file,datain;
    reg IF_hault, ID_hault, EXE_hault;
    reg [1:0] state,next_state;
    reg [4:0] pipeline;
    wire [31:0] reg_file_out,data_EXE_in,data_ID_in,data_IF_in,data_MEM_in,data_WB_in,data_in;
    reg [1:0] flag;
    initial begin
        state = 0;
        flag = 2'b10;//data_ID=0;
        pipeline = 5'b00000;//data_IF=0;data_EXE=0;data_MEM=0;data_WB=0;
    end

    always@(*) begin
        //state = 0;
        case(state)
            2'b00: data_IF_next <= data + 1'b1;
            2'b01: data_IF_next <= data_WB;
            2'b10: data_IF_next <= data_ID + data_IF;
            2'b11: data_IF_next <= data_WB + data_EXE;
        endcase
    end
    always@(posedge clk)begin
        datain <= data;
    end
    assign data_in = datain;
    //IF
    always@(posedge clk or posedge pipeline[0]) begin
        if(wena) data_IF <= 0;
        else data_IF <= data_in;
        // if(IF_hault) data_IF <= 0;
        // else begin data_IF <= ~pipeline[0]?flag:0;end
    end
    //IF-ID
    // always@(posedge clk)begin
    //     reg_file_out <= reg_file;
    // 
    assign data_IF_in = data_IF;
    //assign reg_file_out = reg_file;
    // always@(negedge clk)begin
    //     reg_file <= data_IF;
    // end
    //ID
    always@(posedge clk) begin
            data_ID <= ~pipeline[1]?data_IF_in:0;
    end
    // always@(*)begin
    //     case({data[0],data[1]})
    //             2'b00: begin IF_hault <= 0; state = 0;end
    //             2'b01: begin IF_hault <= 1; state = 1; end
    //             2'b10: begin  IF_hault <= 1; state =1; end
    //             2'b11: begin IF_hault <= 1;state = 1; end
    //     endcase
    // end
    assign data_ID_in = data_ID;
    //EXE
    always@(posedge clk) begin
        data_EXE <= ~pipeline[2]?data_ID_in:0;
    end
    assign data_EXE_in = data_EXE;
    //MEM
    always@(posedge clk) begin
        data_MEM <= ~pipeline[3]?data_EXE_in:0;
    end
    assign data_MEM_in = data_MEM;
    //WB
    always@(posedge clk) begin
        data_WB <= ~pipeline[4]?data_MEM_in:0;
    end
    assign data_WB_in = data_WB;

    always@(*)begin
        // case(data_ID)
        //     2'b11: pipeline <= 5'b00001;
        //     2'b00: pipeline <= ({data_ID,data_EXE,data_MEM,data_WB}==0)?5'b00000:(data_WB==3)?5'b00000:5'b00001;
        //     default: pipeline <= 5'b00000;
        // endcase
        case(data_ID)
            2'b11: pipeline = 5'b00001;
            default: ;
        endcase
        case(data_WB)
            2'b11: pipeline = 5'b00000;
            default: ;
        endcase
    end

    assign data_IF_out = data_IF_in;
    assign data_ID_out = data_ID_in;
    assign data_EXE_out = data_EXE_in;
    assign data_MEM_out = data_MEM_in;
    assign data_WB_out = data_WB_in;


endmodule
