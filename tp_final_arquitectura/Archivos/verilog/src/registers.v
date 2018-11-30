`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2018 18:35:14
// Design Name: 
// Module Name: registers
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


module registers(
        input wire clk,
        input wire rst,
        input wire w_enable,
        input wire [4:0] addres_rs,
        input wire [4:0] addres_rt,
        input wire [4:0] addres_rd,
        input wire [31:0] data_rd,
        output wire [31:0] data_rs,
        output wire [31:0] data_rt
    );



    reg [31:0]register_file[31:0];
    integer index;
    
    always@(posedge clk) begin
        if(~rst)begin
            for(index=0; index<32; index = index + 1)begin
                register_file[index] <= 0;
            end
        end
        else begin
            if (w_enable) begin
                register_file[addres_rd] <= data_rd;
            end
            else begin
                for(index=0; index<32; index = index + 1)begin
                    register_file[index] <= register_file[index];
                end
            end
        end
    end
    
    assign data_rs = register_file[addres_rs];
    assign data_rt = register_file[addres_rt];
endmodule
