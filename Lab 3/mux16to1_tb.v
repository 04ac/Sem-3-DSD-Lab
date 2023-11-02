`timescale 1ns/1ns
`include "mux16to1.v"
module mux16to1_tb;
reg [3:0] s;
reg [15:0] w;
wire [1:0] I;
wire f;

mux16to1 uut(s,w,f);
initial
begin
$dumpfile("mux16to1_tb.vcd");
$dumpvars(0, mux16to1_tb);

s=3'b011; w=16'b1100110011001100; #20
s=3'b101; w=16'b0011011011011101; #20
s=3'b001; w=16'b1000010001000111; #20

$display("Test done");
end
endmodule