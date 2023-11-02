`timescale 1ns/1ns
`include "tflipflop.v"
module tflipflop_tb;
reg T, clk, reset;
wire Q;

tflipflop uut(Q, T, clk, reset);
initial
begin
$dumpfile("tflipflop_tb.vcd");
$dumpvars(0, tflipflop_tb);
clk = 1'b0;
forever #20 clk = ~clk;
end
initial
begin
T=1; reset=0; #20
T=1; reset=1; #20
T=1; reset=0; #10
T=0; reset=0; #10
T=0; reset=1; #30
$display("Test complete");
$finish;
end
endmodule
