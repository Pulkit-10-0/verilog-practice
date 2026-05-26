`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.05.2026 23:54:30
// Design Name: 
// Module Name: binary_adder_100_bit
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


module binary_adder_100_bit(
    input [99:0] a, b,
    input cin,
    output cout,
    output [99:0] sum );
    assign {cout,sum} = a + b + cin;

endmodule