`timescale 1ns/1ns
`include "enc4to2priority.v"
module enc4to2priority_tb;
reg [3:0] w;
wire [1:0] y;
wire z;

enc4to2priority uut(w, y, z);
initial
begin
$dumpfile("enc4to2priority_tb.vcd");
$dumpvars(0, enc4to2priority_tb);

w=4'b1000; #20
w=4'b0111; #20
w=4'b0011; #20
w=4'b0001; #20

$display("Test done");
end
endmodule
