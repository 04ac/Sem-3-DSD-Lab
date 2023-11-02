module q1b(a, b, c, d, f);
input a, b, c, d;
output f;

assign f = (c & (~d)) | (b & (~c));
endmodule
