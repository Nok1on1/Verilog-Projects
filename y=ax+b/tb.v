module tb;

reg clk;
reg [3:0] x, a, b;
wire [3:0] y;

circ uut(clk, x, a, b, y);

always begin 
				#5; 
				clk = ~clk; end

initial begin
	clk = 1;
	
	x = 0;
	b = 1;
	a = 3;
	#10
	x = 3;
	b = 3;
	a = 3;
	#10
	$finish;
	end
endmodule
