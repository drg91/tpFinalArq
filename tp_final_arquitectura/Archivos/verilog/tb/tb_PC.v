`timescale 1ns / 1ps


module tb_PC();
   reg clk;
   reg rst;
   reg i_PC_write;
   reg [31:0] i_PC;
   wire [31:0] o_PC;


   initial begin

        clk = 0;
        rst = 0;
        i_PC_write = 0;
        i_PC = 0;
        #10
        rst = 1;
        
        #10
        i_PC_write = 1;
        i_PC = 1;

        #10
        i_PC = 2;

        #10
        i_PC_write = 0;
        i_PC = 3;

        #10
        i_PC = 100;

        #10
        i_PC = 1;        
        #2
        i_PC_write = 1;
    end

    always #1 clk = ~clk;

    PC u_PC(
        .clk(clk),
        .rst(rst),
        .i_PC_write(i_PC_write),
        .i_PC(i_PC),
        .o_PC(o_PC));
    endmodule
