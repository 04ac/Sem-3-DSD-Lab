`timescale 1ns/1ns
`include "q3.v"
module q3_tb;
reg [3:0] x, y;
reg cin;
wire [3:0] s;
wire cout;

q3 uut(x, y, cin, s, cout);
initial
begin
$dumpfile("q3_tb.vcd");
$dumpvars(0, q3_tb);

x=4'b0011; y=4'b0111; cin=0; #20
x=4'b1111; y=4'b0011; cin=1; #20

$display("Test done");
end
endmodule
