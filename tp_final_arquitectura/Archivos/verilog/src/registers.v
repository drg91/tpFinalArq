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
        input wire i_wenable,
        input wire [4:0] i_addres_rs,
        input wire [4:0] i_addres_rt,
        input wire [4:0] i_addres_rd,
        input wire [31:0] i_data_rd,
        output wire [31:0] o_data_rs,
        output wire [31:0] o_data_rt
    );



    reg [31:0]register_file[0:31];
    integer index;
    
    always@(posedge clk) begin
        if(~rst)begin
            for(index=0; index<32; index = index + 1)begin
                register_file[index] <= 0;
            end
        end
        else begin
            if (i_wenable) begin
                register_file[i_addres_rd] <= i_data_rd;
            end
        end
    end
    
    assign o_data_rs = register_file[i_addres_rs];
    assign o_data_rt = register_file[i_addres_rt];
endmodule
