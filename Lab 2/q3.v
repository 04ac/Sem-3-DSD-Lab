module q2(x, y, cin, s, cout);
input x,y,cin;
output s,cout;
assign s = x^y^cin;
assign cout = (x&y) | (x&cin) | (y&cin);
endmodule

module q3(x,y,cin,s,cout);
input cin;
input [3:0] x,y;
output [3:0] s;
output cout;

wire [3:1] c;
wire [3:0] b;

assign b[0] = y[0]^cin;
assign b[1] = y[1]^cin;
assign b[2] = y[2]^cin;
assign b[3] = y[3]^cin;

q2 s0(x[0],b[0],cin,s[0],c[1]);
q2 s1(x[1],b[1],c[1],s[1],c[2]);
q2 s2(x[2],b[2],c[2],s[2],c[3]);
q2 s3(x[3],b[3],c[3],s[3],cout);
endmodule
