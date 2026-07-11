`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.05.2026 23:47:57
// Design Name: 
// Module Name: signed_overflow_adder_8bit
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


module signed_overflow_adder_8bit(
    input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); 
	assign s = a+b;
 
    assign overflow = (a[7] == b[7]) && (s[7] != a[7]);

endmodule