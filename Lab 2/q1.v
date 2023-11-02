module q1(A, B, C, D, f);
input A, B, C, D;
output f;

assign g = ((~C) & D) | (C & (~D));
assign f = (A & g) | (B & (~g));
endmodule
