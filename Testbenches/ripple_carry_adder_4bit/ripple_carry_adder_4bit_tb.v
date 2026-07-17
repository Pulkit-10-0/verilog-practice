`timescale 1ns / 1ps

module ripple_carry_adder_4bit_tb;

    reg [3:0] x;
    reg [3:0] y;

    wire [4:0] sum;

    ripple_carry_adder_4bit dut (
        .x(x),
        .y(y),
        .sum(sum)
    );

    initial begin
        $monitor("Time=%0t | x=%d y=%d | sum=%d (%b)",
                 $time, x, y, sum, sum);
    end

task check_case;

    input [3:0] test_x;
    input [3:0] test_y;
    input [4:0] expected_sum;

    begin

        x = test_x;
        y = test_y;
        #10;

        if(sum == expected_sum)
            $display("PASS | x=%d y=%d | sum=%d",
                      test_x, test_y, sum);
        else
            $display("FAIL | x=%d y=%d | Expected=%d Got=%d",
                      test_x, test_y, expected_sum, sum);

    end

endtask

initial begin

    check_case(0,0,0);
    check_case(5,3,8);
    check_case(15,0,15);
    check_case(15,1,16);
    check_case(10,5,15);
    check_case(15,15,30);


    $display("All test cases completed.");
 

    $finish;

end
    


endmodule