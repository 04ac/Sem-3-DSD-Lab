`timescale 1ns/1ns
`include "jkflipflop.v"
module jkflipflop_tb;
reg J, K, clk, reset;
wire Q;

jkflipflop uut(Q, J, K, clk, reset);
initial
begin
$dumpfile("jkflipflop_tb.vcd");
$dumpvars(0, jkflipflop_tb);
clk = 1'b1;
forever #20 clk = ~clk;
end
initial
begin
J=0; K=0; reset=1; #20
J=1; K=0; reset=0; #20
J=0; K=1; reset=0; #20
J=1; K=1; reset=0; #20
J=1; K=0; reset=0; #20
$display("Test complete");
$finish;
end
endmodule
