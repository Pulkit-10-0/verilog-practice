`timescale 1ns / 1ps

module edge_detector_tb;
    reg clk;
    reg in;
    wire pedge;
    
    edge_detector dut ( 
    .clk(clk), .in(in), .pedge(pedge)
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
        $monitor("Time=%0t | clk=%b in=%b pedge=%b",
                 $time, clk, in, pedge);

        in = 0;
        #10;

        in = 1;

        #10;

 
        #10;

 
        in = 0;

        #10;

  
        in = 1;

        #10;

        $finish;
    end



endmodule
