`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/16/2022 12:57:40 PM
// Design Name: 
// Module Name: EXCEPTION_Handler
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


module EXCEPTION_Handler(
    input Exception_control,
    output Exception_event_control
    );

    reg Exception_event_control_inter;

    always@(*) begin
        case(Exception_control)
        1'b1:Exception_event_control_inter <= 1;
        1'b0:Exception_event_control_inter <= 0;
        endcase
    end

    assign Exception_event_control = Exception_event_control_inter;


endmodule
