module tflipflop(Q, T, clk, reset);
input T;
input clk;
input reset;
output reg Q;
always @(negedge clk or negedge reset)
begin
if (reset == 1'b0)
Q<=1'b0;
else if (T==1'b1)
Q<=~Q;
end
endmodule
