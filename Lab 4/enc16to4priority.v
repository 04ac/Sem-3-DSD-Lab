module enc16to4priority(w, y, z);
input [15:0] w;
output reg [3:0] y;
output reg z;
integer k;

always @(*) begin
    y=4'b0000;
    z=1;
    if (w==0)
    begin
        z=0;
        y=4'bxxxx;
    end
    else
    begin
        for (k=0; k<=15; k=k+1)
        begin
            if (w[k]==1)
            begin
                y=k;
            end
        end
    end
end
endmodule