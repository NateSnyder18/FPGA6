module clock_divider_tb();
    reg clk_in;
    wire clk_out;
   
    clock_divider uut(clk_in, clk_out);
   
    initial begin
        clk_in = 0;
        forever #10 clk_in = ~clk_in;
    end
   
endmodule
