`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.05.2026 18:30:52
// Design Name: 
// Module Name: full_subtractor
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


module full_subtractor(
input a,b,bin, output diff, borrow

    );
    
    wire w1,w2,w3,w4,w5;
    xor x1(w1,a,b);
    xor x2(diff, w1, bin);
    not n1(w2,w1);
    not n2(w3,a);
    
    and a1(w4, w2,bin);
    and a2(w5, w3,b);
     
    or o1(borrow,w5,w4);
endmodule
