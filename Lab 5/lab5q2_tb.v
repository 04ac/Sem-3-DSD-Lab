`timescale 1ns/1ns
`include "lab5q2.v"
module lab5q2_tb;
reg [3:0] G;
wire [3:0] B;
lab5q2 uut(G, B);
initial begin
$dumpfile("lab5q2_tb.vcd");
$dumpvars(0,lab5q2_tb);
G = 4'b1011; #20
G = 4'b1000; #20
G = 4'b0011; #20
G = 4'b1111; #20
$display("test complete");
end
endmodule
