`include "tff.v"

module p3(clk, a, b, c, d, reset);
input clk, reset;
output a,b,c,d;
tff s0(1'b1, d, clk, reset);
tff s1(1'b1, c, d, reset);
tff s2(1'b1, b, c, reset);
tff s3(1'b1, a, b, reset);
endmodule