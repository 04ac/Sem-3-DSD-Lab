module mux8to1(s,w,f);
input [2:0] s;
input [7:0] w;
output reg f;

always @ (s,w) begin
case (s)
0: f=w[0];
1: f=w[1];
2: f=w[2];
3: f=w[3];
4: f=w[4];
5: f=w[5];
6: f=w[6];
7: f=w[7];
default: f=0;
endcase
end
endmodule