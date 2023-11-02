module tff (
    T, q, clk, reset
);
input clk, T, reset;
output reg q;
always @(posedge clk or posedge reset) begin
    if (reset)
        q<= 0;
    else if (T)
        q<=~q;
end
endmodule

module dec2to4 (
    w, y
);
input [1:0] w;
output reg [0:3] y;
always @(w) begin
    case (w)
        2'b00: y=4'b1000;
        2'b01: y=4'b0100;
        2'b10: y=4'b0010;
        2'b11: y=4'b0001;
    endcase
end
endmodule

module p1 (
    reset, clk, q
);
input reset, clk;
output [3:0] q;
wire [1:0] I;

tff s0(1'b1, I[0], clk, reset);
tff s1(I[0], I[1], clk, reset);
dec2to4 s2(I, q);
endmodule