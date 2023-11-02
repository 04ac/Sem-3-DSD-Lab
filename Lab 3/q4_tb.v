`timescale 1ns/1ns
`include "q4.v"
module q4_tb;
reg [7:0] g;
wire [7:0] b;

q4 uut(g, b);
initial
begin
$dumpfile("q4_tb.vcd");
$dumpvars(0, q4_tb);

g=7'b1000111; #20
g=7'b0010111; #20
g=7'b1111101; #20

$display("Test done");
end
endmodule