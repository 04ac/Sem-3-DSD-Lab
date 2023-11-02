module dflipflop(Q, D, clk, reset);
input D;
input clk;
input reset;
output reg Q;
always @(posedge clk or posedge reset)
begin
if (reset)
Q<=1'b0;
else 
Q<=D;
end
endmodule
