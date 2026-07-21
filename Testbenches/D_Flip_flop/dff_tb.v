`timescale 1ns/1ps

module dff_tb;

    reg clk;
    reg d;
    wire q;

    dff dut (
        .clk(clk),
        .d(d),
        .q(q)
    );

    initial
    begin
        clk = 0;
    end

    always
    begin
        #5 clk = ~clk;
    end

    initial 
    begin
    $monitor("Time=%0t | clk=%b d=%b q=%b", $time, clk, d, q);
    
    d = 0;
    
    #12;
    
    d = 1;
    
    #10;
    
    d = 0;
    
    #10;
    
    d = 1;
    
    #10;
    
    $finish;
    
    end
    

endmodule