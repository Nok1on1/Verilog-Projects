module parallel_tb;
    reg D0, D1, D2, D3;
    reg SI, SH, L, CLK;
    wire Q0, Q1, Q2, Q3;
    
shiftregister uut(D0, D1, D2, D3, SI, SH, L, CLK, Q0, Q1, Q2, Q3);

always #5 CLK = ~CLK;

    initial begin
        D0 = 0; D1 = 0; D2 = 0; D3 = 0;
        SI = 0; SH = 0; L = 0; CLK = 0;
        
        #10 D0 = 1;
        #10 D1 = 1;
        #10 D2 = 1;
        #10 D3 = 1;
        #10 SI = 1;
        #10 SH = 1;
        #10 L = 1;

        #100;
        

        $finish;
    end

endmodule
