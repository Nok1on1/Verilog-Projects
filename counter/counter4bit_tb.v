module counter4bit_tb;

reg clk;
reg reset;
wire [3:0] count;

counter4bit uut (.clk(clk), .reset(reset), .count(count));

always #1 clk = ~clk;

// Reset generation
initial begin
	 clk = 1;
	 reset = 0;
	 #1 reset = 1;
	 #100 reset = 0;
	 #1 reset = 1;
    #200 $finish;
end

endmodule
