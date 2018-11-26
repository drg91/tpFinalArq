`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2018 06:16:21 PM
// Design Name: 
// Module Name: MUX
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


`timescale 1ns / 1ps

module MUX(
	input selectorMUX,
	input [31:0] entradaMUX_0,
	input [31:0] entradaMUX_1,
	output [31:0] salidaMUX
    );
	reg [31:0]salida_MUX_temp;
		
	always@(*)
		begin
			if(selectorMUX == 0) salida_MUX_temp  = entradaMUX_0;
			else salida_MUX_temp = entradaMUX_1;

		end 
	assign salidaMUX = salida_MUX_temp;
endmodule
