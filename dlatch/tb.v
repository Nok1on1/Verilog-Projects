module tb();

	reg e;

	reg d;

	wire q;

	D_latch uut (.E(e),.D(d),.Q(q) );

	initial begin
	d = 0;
	e = 0;
	end

	always #3 e=~e;
	
	always #5 d=~d;	
endmodule

