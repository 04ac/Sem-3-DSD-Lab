`timescale 1ns/1ns
`include "mux8to1.v"
module mux8to1_tb;
reg [2:0] s;
reg [7:0] w;
wire f;

mux8to1 uut(s,w,f);
initial
begin
$dumpfile("mux8to1_tb.vcd");
$dumpvars(0, mux8to1_tb);

s=2'b01; w=7'b1100111; #20
s=2'b11; w=7'b1011101; #20
s=2'b00; w=7'b1010001; #20

$display("Test done");
end
endmodule