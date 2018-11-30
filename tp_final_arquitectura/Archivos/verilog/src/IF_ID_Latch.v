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
   
    input wire DB_WE,
    input wire [63:0] data_in,
    input wire clk,
    input wire reset,
    output reg [63:0] data_out
    );
    
    reg [63:0] IF_ID_temp;
    initial IF_ID_temp = 0;
    
    always@(negedge clk)
    begin
        if(reset == 0) 
            if(DB_WE)
                IF_ID_temp = data_in;
            else
                IF_ID_temp = IF_ID_temp; // Mantiene el valor
        else 
            IF_ID_temp = 0;
    end
    
    assign data_out = IF_ID_temp;

endmodule
