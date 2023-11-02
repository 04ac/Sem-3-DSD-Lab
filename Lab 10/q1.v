module jkff (
    j, k, q, clk, reset
);
input j, k, clk, reset;
output reg q;
always @(posedge clk or posedge reset) begin
    if (reset)
        q<=1'b0;
    else begin
        case ({j, k})
            2'b00: q<=q;
            2'b01: q<=1'b0;
            2'b10: q<=1'b1;
            2'b11: q<=~q;
        endcase
    end
end
endmodule

module q1 (
    a, clk, reset
);
input clk, reset;
output [2:0] a;
jkff s0(a[1],(a[1]&a[0]), a[2], clk, reset);
jkff s1(a[0], (~a[2]|a[0]), a[1], clk, reset);
jkff s2((a[2]|~a[1]), 1'b1, a[0], clk, reset);
endmodule