module q2a(a, b, c, d, f);
input a, b, c, d;
output f;

assign f = (c | b) & (c | d) & (~a | ~b | ~c | ~d);
endmodule
