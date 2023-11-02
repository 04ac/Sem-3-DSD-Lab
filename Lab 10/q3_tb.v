`timescale 1ns/1ns
`include "q3.v"
module q3_tb;
reg clk, reset;
wire [2:0] a;
q3 uut (a, clk, reset);
initial begin
    clk = 0;
    forever begin
        #10 clk = ~clk;
    end
end
initial begin
    $dumpfile("q3_tb.vcd");
    $dumpvars(0, q3_tb);
    reset = 1; #20
    reset = 0; #100
    $display("Test complete");
    $finish;
end
endmodule