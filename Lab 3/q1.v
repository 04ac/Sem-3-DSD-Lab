module q1(s,w,f);
input [1:0] s;
input [3:0] w;
output f;
reg f;

always@(s,w) begin
if (s==0)
f=w[0];
else if (s==1)
f=w[1];
else if (s==2)
f=w[2];
else
f=w[3];
end
endmodule
