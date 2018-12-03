`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2018 06:15:57 PM
// Design Name: 
// Module Name: tb_signExt
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


module tb_signExt();
    reg [15:0] in;
    wire [31:0] out;

    initial begin
    
        #100
        in = 'h0011;

        #10
        in = 'h8011;
    end
    
    sign_extension signExt(
        .i_entrada(in),
        .o_salida(out) 
        );
    
    
    
endmodule
