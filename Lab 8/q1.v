module dff(d, q, clk, reset);
input clk, d, reset;
output reg q;
always @(posedge clk or posedge reset) begin
    if (reset) q<=1'b0;
    else q<=d;
end
endmodule

module q1 (
    clk, x, y, reset, dout
);
input clk, x, reset;
output y;
output [2:0] dout;
wire [2:0] din, s;
assign s[2] = (dout[2] & ~x) | (dout[1] & ~dout[0] & ~x);
assign s[1] = (~dout[2] & ~dout[1] & ~x) | (dout[0] & ~x) | (dout[2] & x);
assign s[0] = (dout[1] & dout[0]) | (~dout[2] & ~dout[1] & x);
dff s0(s[2], din[2], clk, reset);
dff s1(s[1], din[1], clk, reset);
dff s2(s[0], din[0], clk, reset);
assign y = (dout[1] & ~x) | (dout[1] & dout[0]) | (dout[2] & x);
assign dout = din;
endmodule