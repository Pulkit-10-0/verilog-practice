`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.05.2026 18:58:58
// Design Name: 
// Module Name: Adder3
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

module Adder3(
    input [2:0] a, b,
    input cin,
    output [2:0] sum,
    output cout
);

wire c1, c2;

full_adder f0(
    .a(a[0]),
    .b(b[0]),
    .cin(cin),
    .sum(sum[0]),
    .cout(c1)
);

full_adder f1(
    .a(a[1]),
    .b(b[1]),
    .cin(c1),
    .sum(sum[1]),
    .cout(c2)
);

full_adder f2(
    .a(a[2]),
    .b(b[2]),
    .cin(c2),
    .sum(sum[2]),
    .cout(cout)
);

endmodule


module full_adder(
    input a, b, cin,
    output sum, cout
);
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (b & cin) | (a & cin);
endmodule
