module tb;
 
reg a1,a2, b1,b2;
wire Output;

circ uut(a1,a2,b1,b2,Output);

	initial begin
	a1 = 0;
	a2 = 1;
	b1 = 1;
	b2 = 0;
	#5;
	a1 = 1;
	a2 = 1;
	b1 = 1;
	b2 = 0;
	#5;
	end
endmodule