module dec2to4(W,En,Y);
input [1:0]W;
input En ; 
output reg [0:3]Y;
always@(W or En)
begin
Y=4'b0000;
if(En==1)
begin
if(W==0)
Y=4'b1000;
else if(W==1)
Y=4'b0100;
else if(W==2)
Y= 4'b0010;
else if(W==3)
Y=4'b0001;
end
end
endmodule

module lab5q4(W,f);
input [2:0]W;
output f;
wire[0:7]Y;
dec2to4 stg0(W[1:0],~W[2],Y[0:3]);
dec2to4 stg1(W[1:0],W[2],Y[4:7]);
assign f = (Y[3]|Y[5]|Y[6]|Y[7]);
endmodule
