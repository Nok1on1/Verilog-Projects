module circ(input wire a1,a2, b1,b2, output wire Output);
	assign Output = ~((a1&b1)|| (a2&b2));
endmodule