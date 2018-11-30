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
	input wire clk,
	input wire rst,
    input wire PC_write,
	input wire DB_WE,
	input wire [31:0] PC_in,
	output wire [31:0] PC_out
    );
    
    reg [31:0] PC_temp;
    
    always @(posedge clk)
    begin
        if (~rst)
            PC_temp <= 32'b11111111111111111111111111111111;  
        else begin 
            if(PC_Write && DB_WE)
                PC_temp <= PC_in;
            else 
                PC_temp <= PC_temp;
        end
    end 
    assign PC_out = PC_temp;

endmodule
