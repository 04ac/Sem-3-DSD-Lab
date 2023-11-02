`timescale 1ns/1ns
`include "lab5q4.v"
module lab5q4_tb;
reg[2:0]W;
wire f;
lab5q4 uut(W,f);
initial begin
$dumpfile("lab5q4_tb.vcd");
$dumpvars(0,lab5q4_tb);
W= 3'b000; #20
W= 3'b011; #20
W= 3'b100; #20
W= 3'b111; #20
$display("test complete");
end
endmodule
