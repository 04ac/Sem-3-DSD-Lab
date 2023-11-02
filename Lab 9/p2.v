module dff(d, q, clk, reset);
input d, clk, reset;
output reg q;
always @(posedge clk) begin
    if (reset)
        q<=0;
    else
        q<=d;
end
endmodule

module p2(reset, clk, q);
input reset, clk;
output [4:0] q;
dff s0(~q[0], q[4], clk, reset);
dff s1(q[4], q[3], clk, reset);
dff s2(q[3], q[2], clk, reset);
dff s3(q[2], q[1], clk, reset);
dff s4(q[1], q[0], clk, reset);
endmodule