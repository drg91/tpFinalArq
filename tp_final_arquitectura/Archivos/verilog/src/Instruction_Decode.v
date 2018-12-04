`timescale 1ns / 1ps
module Instruction_Decode(
                    input wire clk,
                    input wire rst,
                    input wire i_regwrite,//viene de control para escribir o no el register file
                    output wire [31:0] o_jump_dir,//direccion para la instruccion jump(instruccion tipo j)
                    output wire [5:0] o_op,
                    output wire [31:0] o_branch_addres,//direccion de salto inmediato(instruccion tipo I)
                    output wire [31:0] o_rs_reg,//registro, no confundir con la direccion
                    output wire [31:0] o_rt_reg,//registro, no confundir con la direccion
                    output wire [4:0] o_rt_addr,
                    output wire [4:0] o_rd_addr,
                    output wire [31:0] o_sig_extended,


);


endmodule
