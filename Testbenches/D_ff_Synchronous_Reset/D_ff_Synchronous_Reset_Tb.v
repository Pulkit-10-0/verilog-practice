`timescale 1ns/1ps

module D_ff_Synchronous_Reset_Tb;

    reg clk;
    reg reset;
    reg d;

    wire q;

    D_ff_Synchronous_Reset dut (
        .clk(clk),
        .reset(reset),
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
        $monitor("Time=%0t | clk=%b reset=%b d=%b q=%b",
                 $time, clk, reset, d, q);

        reset = 1;
        d = 0;

        #12;

        reset = 0;
        d = 1;

        #10;

        d = 0;

        #10;

        reset = 1;
        d = 1;

        #10;

        reset = 0;
        d = 1;

        #10;

        $finish;
    end

endmodule