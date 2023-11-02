`timescale 1ns/1ns
`include "Dec2to4.v"
module Dec2to4_tb;
reg [1:0] w;
reg e;
wire [0:3] y;

Dec2to4 uut(w, e, y);
initial
begin
$dumpfile("Dec2to4_tb.vcd");
$dumpvars(0, Dec2to4_tb);

w=2'b00; e=1; #20
w=2'b01; e=1; #20
w=2'b10; e=1; #20
w=2'b11; e=1; #20

$display("Test done");
end
endmodule