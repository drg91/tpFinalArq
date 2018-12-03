`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2018 07:00:13 PM
// Design Name: 
// Module Name: tb_registers
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


module tb_registers();

    reg clk;
    reg rst;
    reg w_enable;
    reg [4:0] addres_rs;
    reg [4:0] addres_rt;
    reg [4:0] addres_rd;
    reg [31:0] data_rd;
    wire [31:0] data_rs;
    wire [31:0] data_rt;

    initial begin
    
        #100
        clk = 0;
        rst = 0;
        data_rd=0;
        //data_rt=0;
        //data_rs=0;
        
        #10
        clk = 1;
        rst = 0;
        
        #10
        clk = 0;
        
        #10
        clk = 1;
        rst = 1;
        w_enable = 1;
        addres_rd = 5'b00011;
        data_rd = 32'hff010000;
        
        #10
        clk = 0;
                
        #10
        clk = 1;
        rst = 1;
        w_enable = 1;
        addres_rd = 5'b00001;
        data_rd = 32'hff010011;
        
        #10
        clk = 0;
        
        #10
        clk = 1;
        rst = 1;
        w_enable = 0;
        addres_rs = 5'b00011;
        addres_rt = 5'b00001;
                
    end


    registers Uregisters(
        .clk(clk),
        .rst(rst),
        .w_enable(w_enable),
        .addres_rs(addres_rs),
        .addres_rt(addres_rt),
        .addres_rd(addres_rd),
        .data_rd(data_rd),
        .data_rs(data_rs),
        .data_rt(data_rt)
    );

endmodule
