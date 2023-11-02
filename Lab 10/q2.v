module srff (
    s, r, q, clk, reset, inp
);
input s, r, inp, clk, reset;
output reg q;
always @(posedge clk or posedge reset) begin
    if (reset)
        q<=inp;
    else begin
        case ({s, r})
            2'b00: q<=q;
            2'b01: q<=1'b0;
            2'b10: q<=1'b1;
            2'b11: q<=1'bx;
        endcase
    end
end
endmodule
module q2 (
    q, clk, reset
);
input clk, reset;
output [2:0] q;
srff s0((~q[1]&~q[0]), (q[2]&~q[1]), q[2], clk, reset, 1'b0);
srff s1((~q[2]&~q[1]), (q[2]&q[0]) | (~q[2]&q[1]&q[0]), q[1], clk, reset, 1'b0);
srff s2(~q[0], (~q[2]&q[0]) | (q[1]&q[0]), q[0], clk, reset, 1'b1);
endmodule