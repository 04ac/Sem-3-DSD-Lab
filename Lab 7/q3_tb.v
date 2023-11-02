`timescale 1ns/1ns
`include "q3.v"
module q3_tb;
reg [3:0] I;
reg [1:0] s;
reg clk, inp;
wire [3:0] A;
q3 uut(I, s, clk, inp, A);
initial begin
    clk = 0;
    forever #10 clk = ~clk;
end
initial begin
    $dumpfile("q3_tb.vcd");
    $dumpvars(0, q3_tb);
    I=4'b0111; s=2'b01; #20
    inp = 1'b1; s=2'b00; #20
    I=4'b1001; s=2'b00; #20
    inp=1'b0; s=2'b00; #20
    I=4'b0111; s=2'b10; #20
    I=4'b1011; s=2'b11; #20
    $display("Test complete");
    $finish;
end
endmodule