module clock_divider(clk_in, clk_out);
    input clk_in;
    output reg clk_out = 1'b0;
   
    reg [1:0] counter = 2'b0;
   
    always @ (posedge clk_in or negedge clk_in)
    begin
        counter = counter + 1;
        if (counter == 2'b00)
        begin
            clk_out = ~clk_out;
        end
    end
endmodule
