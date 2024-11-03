module SR(input S, R, output wire Q, Qbar);
    nor #1 N1(Q, R, Qbar);
    nor #1 N2(Qbar, S, Q);
endmodule

module SR_FF(input S, R, CLK, output wire Q, Qbar);
    nor N1(Q, R, Qbar);
    nor N2(Qbar, S, Q);
    always @ (posedge CLK)
        begin
           
        end
endmodule
