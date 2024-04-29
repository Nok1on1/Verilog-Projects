module tb;

reg dir, clk, rst;
reg [3:0] in;
reg [1:0] steps;
wire [3:0] out;

barrel uut(in, steps, dir, clk, rst, out);

	always #5 clk = ~clk;
	
		initial begin
			clk = 0;
			dir = 1;
			steps = 4'b10;
			in = 4'b1101;
			rst = 0;
			#20;
			steps = 4'b01;
			#20;
		end
		
endmodule
