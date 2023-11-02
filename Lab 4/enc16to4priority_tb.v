`timescale 1ns/1ns
`include "enc16to4priority.v"
module enc16to4priority_tb;
reg [15:0] w;
wire [3:0] y;
wire z;
enc16to4priority uut(w, y, z);
initial
begin
$dumpfile("enc16to4priority_tb.vcd");
$dumpvars(0, enc16to4priority_tb);

w=72; #20
w=115; #20
w=37; #20

$display("Test done");
end
endmodule