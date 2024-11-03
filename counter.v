module counter(input clk, output q1, q2, q3);
    wire tt2, tt3;
   
    TFF N1(.clk(clk), .rstn(1'b1), .t(1'b1), .q(q1));
    assign tt2 = ~q1;
    TFF N2(.clk(clk), .rstn(1'b1), .t(tt2), .q(q2));
    assign tt3 = tt2&(~q2);
    TFF N3(.clk(clk), .rstn(1'b1), .t(tt3), .q(q3));
endmodule

module TFF(input clk, rstn, t, output reg q);
    initial begin
        q <= 0;
    end
    always @ (posedge clk)
    begin
        if (!rstn)
            q <= 0;
        else if (t)
            q <= ~q;
        else
            q <= q;
    end
endmodule
