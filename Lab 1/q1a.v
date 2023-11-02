module q1a(a, b, c, d, f);
input a, b, c, d;
output f;

assign f = (a & d) | c;
endmodule
