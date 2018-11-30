`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2018 06:32:07 PM
// Design Name: 
// Module Name: ADD_PC
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


module ADD_PC(
	input wire  [31:0] PC_in,
	output wire [31:0] PC_out
    );

	assign PC_out = PC_in + 1'b1;

endmodule
