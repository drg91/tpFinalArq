`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2018 05:12:29 PM
// Design Name: 
// Module Name: PC
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


module PC(
    input PC_Write,
	input DB_WE,
	input [31:0] PC_in,
	input clk,
	input reset,
	output [31:0] PC_out
    );
    
    reg [31:0] PC_temp;
    
    always @(posedge clk)
    begin
        if (reset==0)
            if(PC_Write && DB_WE)
                PC_temp = PC_in;
            else 
                PC_temp = PC_temp;
        else 
            PC_temp = 32'b11111111111111111111111111111111;  
    end 
            
    assign PC_out = PC_temp;
    
endmodule
