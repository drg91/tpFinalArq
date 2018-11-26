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
	input [31:0] entradaADDPC,
	output[31:0] salidaADDPC
    );

	assign salidaADDPC = entradaADDPC + 1'b1;

endmodule