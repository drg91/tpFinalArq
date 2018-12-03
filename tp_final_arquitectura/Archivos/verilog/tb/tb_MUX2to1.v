`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.12.2018 11:13:49
// Design Name: 
// Module Name: tb_MUX2to1
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


module tb_MUX2to1( );

    reg         selector;
    reg  [31:0] entrada0;
    reg  [31:0] entrada1;
    wire [31:0] salida;

    initial begin
        entrada0 = 'hfff000aa;
        entrada1 = 'hffffffff;
    
        #10
        selector = 0;
        #20
        selector = 1;
        #20
        selector = 0;
    end

    MUX2to1 u_MUX2to1 (
                .i_selector(selector),
                .i_entradaMUX_0(entrada0),
                .i_entradaMUX_1(entrada1),
                .o_salidaMUX(salida) 
                    );
endmodule
