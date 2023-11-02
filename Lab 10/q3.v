module tff(T, q, clk, reset);
input T, clk, reset;
output reg q;
always @(posedge clk or posedge reset)
begin
if (reset)
    q<=1'b0;
else begin
    case(T)
        1'b0: q<=q;
        1'b1: q<=~q;
endcase
end
end
endmodule

module q3 (
    a, clk, reset
);
    input clk, reset;
    output [2:0] a;

    tff s0((a[2]^a[1]), a[2], clk, reset);
    tff s1((a[0]^a[1]), a[1], clk, reset);
    tff s2(~(a[2]^a[0]), a[0], clk, reset);

endmodule