`timescale 1ns/1ns
`include "q1.v"
module q1_tb;
reg clk, x, reset;
wire y;
wire [2:0] dout;
q1 uut(clk, x, y, reset, dout);
initial begin
    clk = 0;
    forever begin
        #10 clk = ~clk;
    end
end
initial begin
    $dumpfile("q1_tb.vcd");
    $dumpvars(0, q1_tb);
    x=0; reset=1; #20
    x=1; reset=0; #20
    x=0; #20
    x=1; #20
    x=0; #30
    x=1; #30
    x=0; #20
    $display("COmplete");
    $finish;
end
endmodule