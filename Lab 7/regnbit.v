module regnbit(I, clk, A);
parameter n = 8;
input [n-1:0] I;
input clk;
output reg [n-1:0]A;
always @(posedge clk) begin
    A<=I;
end
endmodule