`timescale 1ns/1ns
`include "q1.v"
module q1_tb;
reg clk, reset;
wire [2:0] a;
q1 uut (a, clk, reset);
initial begin
    clk = 0;
    forever begin
        #10 clk = ~clk;
    end
end
initial begin
    $dumpfile("q1_tb.vcd");
    $dumpvars(0, q1_tb);
    reset = 1; #20
    reset = 0; #120
    $display("Test complete");
    $finish;
end
endmodule