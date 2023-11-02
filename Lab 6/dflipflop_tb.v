`timescale 1ns/1ns
`include "dflipflop.v"
module dflipflop_tb;
reg D, clk, reset;
wire Q;

dflipflop uut(Q, D, clk, reset);
initial
begin
$dumpfile("dflipflop_tb.vcd");
$dumpvars(0, dflipflop_tb);
clk = 1'b0;
forever #20 clk = ~clk;
end
initial
begin
D=1; reset=1; #20
D=1; reset=0; #20
D=0; reset=0; #20
D=0; reset=1; #20
D=0; reset=0; #20
$display("Test complete");
$finish;
end
endmodule
