`include "Dec2to4.v"

module Dec4to16(w, e, y);
input [3:0] w;
input e;
output [0:15] y;
wire [0:3] m;

Dec2to4 d1(w[3:2], e, m[0:3]);
Dec2to4 d2(w[1:0], m[0], y[0:3]);
Dec2to4 d3(w[1:0], m[1], y[4:7]);
Dec2to4 d4(w[1:0], m[2], y[8:11]);
Dec2to4 d5(w[1:0], m[3], y[12:15]);
endmodule