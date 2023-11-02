`include "mux4to1.v"
module lab5q1(A,B,C,D,f);
input A,B,C,D;
output f ;
wire[1:0]m;
wire[3:0]n;
assign m = {A,B};
assign n[0]= (~C|~D);
assign n[1] = ~D;
assign n[2] = (~C&D);
assign n[3] = ~D;
mux4to1 stg0(n,m,f);
endmodule
