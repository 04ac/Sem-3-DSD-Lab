`timescale 1ns/1ns
`include "q2b.v"
module q2b_tb;
reg a, b, c, d;
wire f;

q2b uut(a, b, c, d, f);
initial
begin
$dumpfile("q2b_tb.vcd");
$dumpvars(0, q2b_tb);

a=0; b=0; c=0; d=0; #20
a=0; b=0; c=0; d=1; #20
a=0; b=0; c=1; d=0; #20
a=0; b=0; c=1; d=1; #20
a=0; b=1; c=0; d=0; #20
a=0; b=1; c=0; d=1; #20
a=0; b=1; c=1; d=0; #20
a=0; b=1; c=1; d=1; #20
a=1; b=0; c=0; d=0; #20
a=1; b=0; c=0; d=1; #20
a=1; b=0; c=1; d=0; #20
a=1; b=0; c=1; d=1; #20
a=1; b=1; c=0; d=0; #20
a=1; b=1; c=0; d=1; #20
a=1; b=1; c=1; d=0; #20
a=1; b=1; c=1; d=1; #20

$display("Test done");
end
endmodule
