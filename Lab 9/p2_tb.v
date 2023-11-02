`timescale 1ns/1ns
`include "p2.v"
module p2_tb;
reg clk, reset;
wire [4:0] q;
p2 uut(reset, clk, q);
initial begin
    clk=0;
    forever begin
        #10 clk = ~clk;
    end
end
initial begin
    $dumpfile("p2_tb.vcd");
    $dumpvars(0, p2_tb);
    reset=1; #20
    reset=0; #200
    $display("Test complete");
    $finish;
end
endmodule