`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.05.2026 23:42:53
// Design Name: 
// Module Name: four_1_mux
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
    
    
    module four_1_mux( 
    input [1:0] s, input [3:0] i, output y
        );
    wire w1,w2,w3,w4,w5,w6l;
    
    not n1(w1, s[1]);
    not n2(w2,s[0]);
    and a1(w3,w1,w2, i[0]);
    and a2 (w4,w1, s[0],i[1]);
    and a3(w5,s[1], w2, i[2]);
    and a4(w6, s[1], s[0], i[3]);
    
    or or1(y,w3,w4,w5,w6);
     
    
    
    endmodule
