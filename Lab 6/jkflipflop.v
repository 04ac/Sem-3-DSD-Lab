module jkflipflop(Q, J, K, clk, reset);
input J, K, clk, reset;
output reg Q;
always @(posedge clk)
begin
if (reset)
Q=1'b0;
else
begin
    if (J==0)
    begin
        if (K==1'b0)
        Q<=Q;
        if (K==1'b1)
        Q<=1'b0;
    end
    if (J==1)
    begin
        if (K==0)
        Q<=1;
        if (K==1)
        Q<=~Q;
    end
end    
end
endmodule