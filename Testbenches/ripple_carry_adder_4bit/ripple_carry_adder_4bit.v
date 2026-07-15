`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.07.2026 00:59:20
// Design Name: 
// Module Name: ripple_carry_adder_4bit
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


module ripple_carry_adder_4bit(



    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
	wire [2:0] cout;
    full_adder f0 ( .a(x[0]), .b(y[0]), .cin(1'b0), .sum(sum[0]), .cout(cout[0]));
    full_adder f1 ( .a(x[1]), .b(y[1]), .cin(cout[0]), .sum(sum[1]), .cout(cout[1]));
    full_adder f2 ( .a(x[2]), .b(y[2]), .cin(cout[1]), .sum(sum[2]), .cout(cout[2]));
    full_adder f3 ( .a(x[3]), .b(y[3]), .cin(cout[2]), .sum(sum[3]), .cout(sum[4]));
	
endmodule

module full_adder(
    input a, b, cin,
    output sum, cout
);
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (b & cin) | (a & cin);
endmodule
