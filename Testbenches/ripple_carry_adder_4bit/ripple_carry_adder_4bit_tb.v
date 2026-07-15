`timescale 1ns / 1ps

module ripple_carry_adder_4bit_tb;

    // Inputs to the DUT
    reg [3:0] x;
    reg [3:0] y;

    // Output from the DUT
    wire [4:0] sum;

    // Instantiate the Design Under Test (DUT)
    ripple_carry_adder_4bit dut (
        .x(x),
        .y(y),
        .sum(sum)
    );

    // Display values whenever they change
    initial begin
        $monitor("Time=%0t | x=%d y=%d | sum=%d (%b)",
                 $time, x, y, sum, sum);
    end

    // Apply test cases
    initial begin

        // Test 1
        x = 4'd0;
        y = 4'd0;
        #10;

        // Test 2
        x = 4'd5;
        y = 4'd3;
        #10;

        // Test 3
        x = 4'd15;
        y = 4'd0;
        #10;

        // Test 4 (Carry generated)
        x = 4'd15;
        y = 4'd1;
        #10;

        // Test 5
        x = 4'd10;
        y = 4'd5;
        #10;

        // Test 6 (Maximum possible sum)
        x = 4'd15;
        y = 4'd15;
        #10;

        $finish;
    end

endmodule