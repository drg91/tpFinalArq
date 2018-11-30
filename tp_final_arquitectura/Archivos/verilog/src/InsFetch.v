`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2018 05:31:10 PM
// Design Name: 
// Module Name: InsFetch
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


module InsFetch(
    input wire clk,
	input wire rst,
	//Entrada de Debugger
	input wire DB_WE,
	//Entradas a la etapa desde etapa MEM
	input wire selectorMUX_PC,
	input wire [31:0] In_PC_Branch,
	// Entradas desde la Hazard Detection Unit
	input wire PC_Write,
	//bus de salida de la etapa IF
	output [63:0] IF_out, 
	output [31:0] PC_out //para leer desde debbuger

    );
    
    
 wire [31:0] bus1; //entrada a MUX y salida de ADD
 wire [31:0] bus2; //salida MUX y entrada a PC
 wire [31:0] bus3; //salida PC y entrada a ADD y InstMemory
 wire [31:0] bus4; //salida InstMemory

//Multiplexor de PC
MUX2to1 MUX_PC(
    .selectorMUX_PC(selectorMUX_PC),
	.entradaMUX_0(bus1),
	.entradaMUX_1(In_PC_Branch),
	.salidaMUX(bus2)
	);

//PC
PC PC(
    .PC_Write(PC_Write),
	.DB_WE(DB_WE),
	.PC_in(bus2),
	.clk(clk),
	.reset(reset),
	.PC_out(bus3)
    );
 
//ADD
ADD_PC ADD_PC(
    .entradaADDPC(bus3), //32 bits
	.salidaADDPC(bus1) //32  bits
    );

//MEM lee desde file las instrucciones
inst_mem MEM(
    .addr(bus3[]), //ver si recortamos aca
    .instruction(bus4)
    );

//Latch IF_ID
IF_ID_Latch IF_ID(
    .DB_WE(DB_WE),
    .data_in({bus1,bus4}), //PC[32:0] + INST[32:0]
    .clk(clk),
    .reset(reset),
    .data_out(IF_out)
    );

assign PC_out = bus3; //salida del PC para debugger

endmodule
