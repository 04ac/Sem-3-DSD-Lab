`timescale 1ns/1ns
`include "task1_structural.v"
module task1_structural_tb;
reg x1, x2, x3;
wire f;
task1_structural uut(x1, x2, x3, f);
initial
begin
$dumpfile("task1_structural_tb.vcd");
$dumpvars(0, task1_structural_tb);
x1=0;x2=0;x3=0;#20;
x1=0;x2=0;x3=1;#20;
x1=0;x2=1;x3=0;#20;
x1=0;x2=1;x3=1;#20;
x1=1;x2=0;x3=0;#20;
x1=1;x2=0;x3=1;#20;
x1=1;x2=1;x3=0;#20;
x1=1;x2=1;x3=1;#20;
$display("Test structural done");
end
endmodule
