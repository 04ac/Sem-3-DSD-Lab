`timescale 1ns/1ns
`include "q1.v"
module q1_tb;
reg [1:0] s;
reg [3:0] w;
wire f;

q1 uut(s,w,f);
initial
begin
$dumpfile("q1_tb.vcd");
$dumpvars(0, q1_tb);

s=2'b01; w=4'b0111; #20
s=2'b11; w=4'b1011; #20

$display("Test done");
end
endmodule