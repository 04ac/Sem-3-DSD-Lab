module tff(t,q,clk,reset);
input t,clk,reset;
output reg q;
always@(posedge clk or posedge reset)
begin
    if (reset)
        q<=1'b0;
    else begin
        if (t==1'b0)
            q<=q;
        else
            q<=~q;
    end
end
endmodule

module q2(clk, x, reset, a, b);
input clk, x, reset;
output a, b;
wire [1:0] s;
assign s[1] = (b&~x) | (~a&b);
assign s[0] = (a&~x) | (~b&~x) | (~a&b&x);
tff s0(s[1], a, clk, reset);
tff s1(s[0], b, clk, reset);
endmodule
    
