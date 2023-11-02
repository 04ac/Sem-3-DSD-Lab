`timescale 1ns/1ns
`include "p1.v"
module p1_tb;
reg clk, reset;
wire [3:0] q;
p1 uut(reset, clk, q);
initial begin
    clk=0;
    forever begin
        #10 clk = ~clk;
    end
end
initial begin
    $dumpfile("p1_tb.vcd");
    $dumpvars(0, p1_tb);
    reset=1; #20
    reset=0; #80
    $display("Test complete");
    $finish;
end
endmodule