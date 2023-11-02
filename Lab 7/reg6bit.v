module dff(Q, D, clk);
input D;
input clk;
output reg Q;
always @(posedge clk) begin
    Q<=D;
end
endmodule

module reg6bit(s1, clk, s, s0);
input s1;
input clk;
output [0:5] s;
output s0;
dff f1(s[0], s1, clk);
dff f2(s[1], s[0], clk);
dff f3(s[2], s[1], clk);
dff f4(s[3], s[2], clk);
dff f5(s[4], s[3], clk);
dff f6(s[5], s[4], clk);
assign s0 = s[5];
endmodule