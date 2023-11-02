`timescale 1ns/1ns
`include "Dec4to16.v"
module Dec4to16_tb;
reg [3:0] w;
reg e;
wire [0:15] y;
wire [0:3] m;

Dec4to16 uut(w, e, y);
initial
begin
$dumpfile("Dec4to16_tb.vcd");
$dumpvars(0, Dec4to16_tb);

w=3'b000; e=1; #20
w=3'b010; e=1; #20
w=3'b111; e=1; #20
w=3'b101; e=1; #20

$display("Test done");
end
endmodule