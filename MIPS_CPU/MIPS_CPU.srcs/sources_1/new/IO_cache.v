`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/17/2022 12:02:16 PM
// Design Name: 
// Module Name: IO_cache
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


module IO_cache(
    input clk,
    input areset,
    input [5:0] syscall_type,
    input [4:0] syscall_addr,
    input [31:0] Data_in,
    output [31:0] Data_o,
    output [31:0] device_ena,
    output [5:0] device_drive_type
    );

    //setup an device which turn the bin to degital
    parameter LED_Display=1,Decimal=1,Hex=2,Binary=0;
    reg [7:0] Digital_tube [0:15];
    reg [31:0] device_ena_inter,device_drive_type_inter;
    wire [3:0] D0,D1,D2,D3,D4,D5,D6,D7,D8,D9,D10,D11,D12,D13,D14,D15;

    assign {D15,D14,D13,D12,D11,D10,D9,D8,D7,D6,D5,D4,D3,D2,D1,D0} = Data_in;

    always @(posedge areset) begin
        
    end 

    always @(*) begin
        if(areset) device_ena_inter = 0;
        else begin
        case(syscall_addr)
        LED_Display: begin
            device_ena_inter = 1;
        end
        default:device_ena_inter = 0;
        endcase
        end
    end

    always @(*) begin
        if(areset) device_drive_type_inter = 0;
        else begin
            case(syscall_type)
            Decimal: device_drive_type_inter=Decimal;
            Hex: device_drive_type_inter = Hex;
            default: device_drive_type_inter = Binary;
            endcase
        end
    end

    assign device_ena = device_ena_inter;
    assign device_drive_type = device_drive_type_inter;
    assign Data_o = Data_in;

    
endmodule
