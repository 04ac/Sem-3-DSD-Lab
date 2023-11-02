`timescale 1ns/1ns
`include "q2.v"
module q2_tb;
reg clk, x, reset;
wire a, b;
q2 uut(clk, x, reset, a, b);
initial begin
    clk = 0;
    forever begin
        #10 clk = ~clk;
    end
end
initial begin
    $dumpfile("q2_tb.vcd");
    $dumpvars(0, q2_tb);
    x=0; reset=1; #20
    x=1; reset=0; #20
    x=0; #20
    x=1; #20
    x=0; #30
    x=1; #30
    x=0; #20
    $display("COmplete");
    $finish;
end
endmodule