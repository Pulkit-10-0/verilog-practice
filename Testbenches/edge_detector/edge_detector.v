

module edge_detector(
    input clk,
    input in,
    output reg pedge
);

    reg prev;

    always @(posedge clk)
    begin
        pedge <= ~prev & in;
        prev <= in;
    end

endmodule
