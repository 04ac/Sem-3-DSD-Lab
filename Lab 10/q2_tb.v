`timescale 1ns/1ns
`include "q2.v"
module q2_tb;
reg clk, reset;
wire [2:0] q;
q2 uut (q, clk, reset);
initial begin
    clk = 0;
    forever begin
        #10 clk = ~clk;
    end
end
initial begin
    $dumpfile("q2_tb.vcd");
    $dumpvars(0, q2_tb);
    reset = 1; #20
    reset = 0; #90
    $display("Test complete");
    $finish;
end
endmodule