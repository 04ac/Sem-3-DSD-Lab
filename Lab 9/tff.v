module tff (
    T, q, clk, reset
);
input clk, T, reset;
output reg q;
always @(negedge clk) begin
    if (reset)
        q<= 0;
    else if (T)
        q<=~q;
end
endmodule