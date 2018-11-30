`timescale 1ns / 1ps

module inst_mem(
            input wire [31:0] addr,
            output wire [31:0] instruction
);

    reg [31:0] instruction_memory [255:0];
    initial begin
        $readmemh("program.mem",instruction_memory);
    end
    assign instruction = instruction_memory[addr];
endmodule