module tb;
    reg d;
    reg clk;
    reg reset;
    wire q;
	 
    Dflipflop uut(.d(d), .clk(clk), .reset(reset), .q(q));

    
	initial begin
		 clk = 0;
		 repeat (1000) #5 clk = ~clk;
	end

	 
    initial begin
        reset = 1; d = 0;
        #10 reset = 0; d = 1;  
        #10 d = 0;             
        #10 d = 1;             
        #10 $finish;           
    end

endmodule
