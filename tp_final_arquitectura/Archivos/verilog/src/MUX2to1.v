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
	input   wire i_selector,
	input   wire [31 : 0] i_entradaMUX_0,
	input   wire [31 : 0] i_entradaMUX_1,
	output  wire [31 : 0] o_salidaMUX
    );

    assign o_salidaMUX = i_selector ? i_entradaMUX_1:
                                         i_entradaMUX_0;
endmodule
