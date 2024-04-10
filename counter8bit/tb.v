module tb;

reg clk, rst;
wire [7:0] value;

	counter8bit uut(clk,rst,value);
	
	always begin #5; clk = ~clk; end
	initial begin
	clk = 0;
	rst = 0;
	#1;
	rst = 1;
	#200;
	end
	
	endmodule
