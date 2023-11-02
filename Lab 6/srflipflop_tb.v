`timescale 1ns/1ns
`include "srflipflop.v"
module srflipflop_tb;
reg S, R, clk, reset;
wire Q;

srflipflop uut(Q, S, R, clk, reset);
initial
begin
$dumpfile("srflipflop_tb.vcd");
$dumpvars(0, srflipflop_tb);
clk = 1'b1;
forever #20 clk = ~clk;
end
initial
begin
S=0; R=0; reset=0; #20
S=1; R=1; reset=1; #20
S=0; R=1; reset=1; #20
S=1; R=1; reset=0; #20
S=1; R=0; reset=0; #20

$display("Test complete");
$finish;
end
endmodule
