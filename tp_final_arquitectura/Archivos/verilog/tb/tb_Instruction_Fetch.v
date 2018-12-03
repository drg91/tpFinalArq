`timescale 1ns / 1ps


module tb_Instruction_Fetch();
    
    reg         clk;
    reg         rst;
    reg         i_MUX_PC_selector;
    reg [31:0]  i_branch_addres;
    reg         i_PC_write;

    wire [63:0] o_IF;

    initial begin
        clk               = 0;
        rst               = 0;
        i_MUX_PC_selector = 0;
        i_branch_addres   = 0;
        i_PC_write        = 0;

        #100
        rst = 1;
        #100
        i_PC_write = 1;
        #10
        i_PC_write = 0;
        #50
        i_branch_addres = 'h00000001;
        i_MUX_PC_selector = 1;
        i_PC_write = 1;
        

    end
    
    Instruction_Fetch u_Instruction_Fetch(
            .clk(clk),
            .rst(rst),
            .i_MUX_PC_selector(i_MUX_PC_selector),
            .i_branch_addres(i_branch_addres),
            .i_PC_write(i_PC_write),
            .o_IF(o_IF)
            );

    always #1 clk = ~clk;
endmodule
