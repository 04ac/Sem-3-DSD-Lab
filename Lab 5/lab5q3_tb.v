`timescale 1ns/1ns
`include "lab5q3.v"
module lab5q3_tb;
reg[3:0]W;
wire f ;
lab5q3 uut(W,f);
initial begin
$dumpfile("lab5q3.vcd");
$dumpvars(0,lab5q3_tb);
W = 4'b0000 ; #20
W = 4'b0100 ; #20
W = 4'b1110 ; #20
W = 4'b1111 ; #20
$display("test complete");
end
endmodule
