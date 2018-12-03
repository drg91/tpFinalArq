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


module Instruction_Fetch(
    input wire          clk,
	input wire          rst,
	//Entradas a la etapa desde etapa MEM
	input wire          i_MUX_PC_selector,
	input wire [31:0]   i_branch_addres,
	// Entradas desde la Hazard Detection Unit
	input wire          i_PC_write,
	//bus de salida de la etapa IF
	output [63:0]       o_IF 
    );
    
    
     wire [31:0] bus1; //entrada a MUX y salida de ADD
     wire [31:0] bus2; //salida MUX y entrada a PC
     wire [31:0] bus3; //salida PC y entrada a ADD y InstMemory
     wire [31:0] bus4; //salida InstMemory

    //Multiplexor de PC
    MUX2to1 u_MUX_PC(
            .i_selector(i_MUX_PC_selector),
            .i_entradaMUX_0(bus1),
            .i_entradaMUX_1(i_branch_addres),
            .o_salidaMUX(bus2)
            );

    //PC
    PC     u_PC(
            .clk(clk),
            .rst(rst),
            .i_PC_write(i_PC_write),
            .i_PC(bus2),
            .o_PC(bus3)
            );
     
    //ADD
    adder   u_addr_pc(
            .i_adder(bus3), //32 bits
            .o_adder(bus1) //32  bits
            );

    //instruction_memory
    instruction_memory u_instruction_memory(
                        .a(bus3[5:0]),
                        .spo(bus4)
                        );

    assign o_IF = {bus1,bus4};

endmodule
