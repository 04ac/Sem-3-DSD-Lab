`timescale 1ns/1ns
`include "q2.v"
module q2_tb;
reg a, b, c;
wire s,cout;

q2 uut(a, b, c, s, cout);
initial
begin
$dumpfile("q2_tb.vcd");
$dumpvars(0, q2_tb);

a=0; b=0; c=0;  #20
a=0; b=0; c=1;  #20
a=0; b=1; c=0;  #20
a=0; b=1; c=1;  #20
a=1; b=0; c=0;  #20
a=1; b=0; c=1;  #20
a=1; b=1; c=0;  #20
a=1; b=1; c=1;  #20

$display("Test done");
end
endmodule
