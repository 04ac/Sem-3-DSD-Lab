`include "mux8to1.v"

module mux2to1(s,w,f);
input s;
input [1:0] w;
output f;
reg f;
always @(w or s)
f = s ? w[1] : w[0];
endmodule

module mux16to1(s, w, f);
input [3:0] s;
input [15:0] w;
wire [1:0] I;
output f;
mux8to1 s0(s[2:0], w[7:0], I[0]);
mux8to1 s1(s[2:0], w[15:8], I[1]);
mux2to1 s2(s[3], I, f);
endmodule