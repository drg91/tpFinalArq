`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2018 02:33:17 PM
// Design Name: 
// Module Name: IF_ID_Latch
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


module IF_ID_Latch(
    input wire clk,
    input wire rst,
    input wire [63:0] i_data,
    output reg [63:0] o_data
    );
    
    reg [63:0] IF_ID_temp;
    
    always@(negedge clk)
    begin
        if(~rst)begin
            o_data <= 0;
        end
        else begin
            o_data <= i_data;
        end
    end

endmodule
