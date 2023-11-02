module enc4to2priority(w, y, z);
input [3:0] w;
output reg [1:0] y;
output reg z;

always @(*) begin
    z=1;
    casex (w)
        4'b1xxx:y=3;
        4'b01xx:y=2;
        4'b001x:y=1;
        4'b0001:y=0; 
        default:
        begin
            z=0;
            y=2'bxx;
        end
    endcase
end
endmodule