`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.12.2018 12:31:06
// Design Name: 
// Module Name: tb_ADD_PC
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


module tb_ADD_PC();

    reg  [31:0] inp;
    wire [31:0] outp;

    initial begin
        #10
        inp = 'h00000000;

        #10
        inp = 'h00000001;
    end

    adder u_adder(
            .i_adder(inp),
            .o_adder(outp));

endmodule
