`timescale 1ns/1ns
`include "task1_behavioural.v"
module task1_behavioural_tb;
reg x1, x2, x3;
wire f;
task1_behavioural uut(x1, x2, x3, f);
initial
begin
$dumpfile("task1_behavioural_tb.vcd");
$dumpvars(0, task1_behavioural_tb);
x1=0;x2=0;x3=0;#20;
x1=0;x2=0;x3=1;#20;
x1=0;x2=1;x3=0;#20;
x1=0;x2=1;x3=1;#20;
x1=1;x2=0;x3=0;#20;
x1=1;x2=0;x3=1;#20;
x1=1;x2=1;x3=0;#20;
x1=1;x2=1;x3=1;#20;
$display("Test behavioural done");
end
endmodule
