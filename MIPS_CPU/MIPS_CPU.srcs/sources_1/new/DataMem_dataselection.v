`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/24/2022 10:49:55 AM
// Design Name: 
// Module Name: DataMem_dataselection
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


module DataMem_dataselection(
    input areset,
    input [2:0] mdata_sel,
    input [31:0] REGrt,
    input [31:0] WB_data,
    output [31:0] datamem_w_data
    );
    reg [31:0] wb_data[0:2];

    always @(*) begin
        if(areset)begin
            wb_data[0] = 0;
            wb_data[1] = 0;
            wb_data[2] = WB_data;
        end
        else begin
        wb_data[0] = wb_data[1];
        wb_data[1] = wb_data[2];
        wb_data[2] = WB_data;
        end
    end

    assign datamem_w_data = (mdata_sel==0)?REGrt:(mdata_sel==1)?WB_data:(mdata_sel==2)?wb_data[1]:wb_data[0];

endmodule
