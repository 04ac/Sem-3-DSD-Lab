module q2(x, y, cin, s, cout);
input x,y,cin;
output s,cout;
assign s = x^y^cin;
assign cout = (x&y) | (x&cin) | (y&cin);
endmodule
