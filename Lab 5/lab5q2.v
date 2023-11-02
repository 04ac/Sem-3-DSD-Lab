module mux8to1(W,S,f);
input [0:7]W;
input [2:0]S;
output f ;
reg f;
always@(W or S)
case(S)
0:f=W[0];
1:f=W[1];
2:f=W[2];
3:f=W[3];
4:f=W[4];
5:f=W[5];
6:f=W[6];
7:f=W[7];
endcase
endmodule

module lab5q2(G, B);
input [3:0] G;
output [3:0] B;
wire [0:7] m3, m2, m1, m0;
assign m3 = 8'b00001111;
assign m2 = 8'b00111100;
assign m1 = 8'b01101001;
assign m0 = {G[0], ~G[0], ~G[0], G[0], ~G[0], G[0], G[0], ~G[0]};
mux8to1 s0(m3, G[3:1], B[3]);
mux8to1 s1(m2, G[3:1], B[2]);
mux8to1 s2(m1, G[3:1], B[1]);
mux8to1 s3(m0, G[3:1], B[0]);
endmodule
