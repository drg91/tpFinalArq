// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Mon Dec  3 18:31:21 2018
// Host        : cesar-Lenovo-Z40-70 running 64-bit Ubuntu 17.10
// Command     : write_verilog -force -mode synth_stub
//               /home/cesar/Documentos/Tpfinal-Arquitectura/Repositorios/tpFinalArq/tp_final_arquitectura/tp_final_arquitectura.srcs/sources_1/ip/instruction_memory/instruction_memory_stub.v
// Design      : instruction_memory
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_12,Vivado 2018.1" *)
module instruction_memory(a, spo)
/* synthesis syn_black_box black_box_pad_pin="a[5:0],spo[31:0]" */;
  input [5:0]a;
  output [31:0]spo;
endmodule
