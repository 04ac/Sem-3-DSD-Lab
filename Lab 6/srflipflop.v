module srflipflop(Q, S, R, clk, reset);
input S, R, clk, reset;
output reg Q;
always @(negedge clk)
begin
if (reset==1'b0)
Q<=0;
else if(S==1'b0 && R==1'b1)
Q<=0;
else if (S==1'b1 && R==1'b0)
Q<=1;
end
endmodule
