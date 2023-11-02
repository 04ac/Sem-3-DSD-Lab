`timescale 1ns/1ns
`include "reg6bit.v"
module reg6bit_tb;
reg s1;
reg clk;
wire s0;
wire [5:0]s;
reg6bit uut(s1, clk, s, s0);
initial begin
    clk = 1;
    forever #10 clk = ~clk;
end
initial begin
    $dumpfile("reg6bit_tb.vcd");
    $dumpvars(0, reg6bit_tb);
    s1 = 1'b0; #20
    s1 = 1'b1; #20
    s1 = 1'b0; #20
    s1 = 1'b0; #20
    s1 = 1'b1; #20
    s1 = 1'b0; #20
    s1 = 1'b1; #20
    s1 = 1'b1; #20
    $display("Test complete");
    $finish;
end
endmodule