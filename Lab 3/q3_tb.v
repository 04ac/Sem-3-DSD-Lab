`timescale 1ns/1ns
`include "q3.v"
module q3_tb;
reg [2:0] a,b;
wire i2,i1,i0;
wire g,l,e;

q3 uut(a,b,g,l,e);
initial
begin
$dumpfile("q3_tb.vcd");
$dumpvars(0, q3_tb);

a=3'b011; b=3'b101; #20
a=3'b101; b=3'b110; #20
a=3'b010; b=3'b000; #20

$display("Test done");
end
endmodule