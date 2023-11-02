module halfadd(a,b,s,c);
input a,b;
output s,c;
assign s=a^b;
assign c=a&b;
endmodule

module fulladd(x, y, cin, s, cout);
input x,y,cin;
output s,cout;
assign s = x^y^cin;
assign cout = (x&y) | (x&cin) | (y&cin);
endmodule

input [2:0] a,b;
output [6:0] p;

assign p[0] = a[0]&b[0];
assign p[1] = fulladd s0(a[1]&b[0], a[0]&b[1], p[0], g0, p[1]);
