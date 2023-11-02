module mux4to1(s,w,f);
input [1:0] s;
input [3:0] w;
output reg f;

always @ (s,w) begin
case (s)
2'b00: f=w[0];
2'b01: f=w[1];
2'b10: f=w[2];
2'b11: f=w[3];
endcase
end
endmodule

module dff(Q, D, clk);
input D;
input clk;
output reg Q;
always @(posedge clk) begin
    Q<=D;
end
endmodule

module q3(I, s, clk, inp, A);
input [3:0] I;
input [1:0] s;
input clk, inp;
output [3:0] A;
wire [3:0] m3, m2, m1, m0, D;
assign m3 = {A[3], A[3], I[3], A[2]};
assign m2 = {A[2], A[2], I[2], A[1]};
assign m1 = {A[1], A[1], I[1], A[0]};
assign m0 = {A[0], A[0], I[0], inp};

mux4to1 s0(s, m3, D[3]);
mux4to1 s1(s, m2, D[2]);
mux4to1 s2(s, m1, D[1]);
mux4to1 s3(s, m0, D[0]);

dff s4(A[3], D[3], clk);
dff s5(A[2], D[2], clk);
dff s6(A[1], D[1], clk);
dff s7(A[0], D[0], clk);
endmodule