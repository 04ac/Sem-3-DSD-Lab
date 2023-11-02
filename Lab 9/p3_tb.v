`timescale 1ns/1ns
`include "p3.v"
module p3_tb;
reg clk, reset;
wire a, b, c, d;
p3 uut(clk, a, b, c, d, reset);
initial begin
    clk=0;
    forever begin
        #10 clk = ~clk;
    end
end
initial begin
    $dumpfile("p3_tb.vcd");
    $dumpvars(0, p3_tb);
    reset=1; #20
    reset=0; #300
    $display("Test complete");
    $finish;
end
endmodule