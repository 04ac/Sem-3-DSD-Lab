module dec4to16(W,En,Y);
input [3:0]W;
input En;
output reg[0:15]Y;
integer k;
always@(W or En)
for(k=0; k<=15; k=k+1)
if((W == k)&&(En==1))
Y[k]=1;
else
Y[k]=0;
endmodule

module lab5q3(W,f);
input [3:0]W;
wire [0:15]Y;
output f;
dec4to16 stg0(W[3:0],1'b1,Y[0:15]);
assign f = (Y[1]|Y[4]|Y[6]|Y[8]|Y[9]|Y[13]|Y[15]);
endmodule

