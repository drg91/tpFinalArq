`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.12.2018 15:40:43
// Design Name: 
// Module Name: tb_RoM
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


module tb_program_memory();
    reg [5:0]addr;
    wire [31:0] instruction;
    
    initial begin
        #10
        addr = 6'b000000;
        #10
        addr = 6'b000001;
        #10
        addr = 6'b000000;        
    end

    instruction_memory u_instruction_memory(
                    .a(addr),
                    .spo(instruction));
endmodule
