`timescale 1ns/1ns
`include "regnbit.v"
module regnbit_tb;
parameter n = 8;
reg [n-1:0] I;
reg clk;
wire [n-1:0] A;

regnbit uut(I, clk, A);
initial begin
    clk = 0;
    forever #20 clk = ~clk;
end
initial begin
    $dumpfile("regnbit_tb.vcd");
    $dumpvars(0, regnbit_tb);
    I = 8'b11001000; #10
    I = 8'b00010001; #20
    I = 8'b01111011; #30
    I = 8'b11000110; #30
    I = 8'b01001100; #20
    I = 8'b10010101; #20
    I = 8'b00111001; #20
    $display("Test complete");
    $finish;
end
endmodule