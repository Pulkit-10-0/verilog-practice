`timescale 1ns / 1ps

module binary_counter_tb;

    reg clk;
    reg reset;

   
    wire [3:0] q;
    binary_counter uut (
        .clk(clk),
        .reset(reset),
        .q(q)
    );


    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end


    initial begin

        reset = 1;

        #20;
        reset = 0;

   
        #200;

        reset = 1;
        #10;

        reset = 0;

 
        #50;

   
        $finish;
    end

    initial begin
        $monitor("Time = %0t ns | reset = %b | q = %b (%0d)",
                  $time, reset, q, q);
    end

endmodule