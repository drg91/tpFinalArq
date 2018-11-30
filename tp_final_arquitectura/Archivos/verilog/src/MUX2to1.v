`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2018 06:16:21 PM
// Design Name: 
// Module Name: MUX2to1
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

module MUX2to1(
	input wire selectorMUX,
	input wire [31 : 0] entradaMUX_0,
	input wire [31 : 0] entradaMUX_1,
	output wire [31 : 0] salidaMUX
    );

    assign salidaMUX = selectorMUX ? entradaMUX_1:
                                     entradaMUX_0;
endmodule