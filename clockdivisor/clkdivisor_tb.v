module clkdivisor_tb;
    reg clk;
    wire Dclk;
	 
    clkdivisor uut(.clk(clk), .Dclk(Dclk));
	 
	 initial clk = 0;
	 
	 always begin #5; clk = ~clk; end
	 
endmodule
