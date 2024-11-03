module clock_divider(clk_in, clk_out);
    input clk_in;
    output reg clk_out = 1'b0;
   
    reg [1:0] counter = 2'b0;
   
    always @ (posedge clk_in)
    begin
        counter <= counter + 1;
        if (counter == 2'b01)
        begin
            clk_out <= ~clk_out;
            counter <= 0;
        end
    end
endmodule
