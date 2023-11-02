module q3(a,b,g,l,e);
input [2:0] a,b;
output g,l,e;
assign i2=~(a[2]^b[2]);
assign i1=~(a[1]^b[1]);
assign i0=~(a[0]^b[0]);
assign g=(a[2] & ~b[2]) | (i2 & a[1] & ~b[1]) | (i2 & i1 & a[0] & ~b[0]);
assign e=i2 & i1 & i0;
assign l = ~(g | e);
endmodule