module fulladder1(input a,b,cin, output sum, cout);

assign sum = a^b^cin;
assign cout = (a&b)|(cin&(a^b));
endmodule

module adder8bit(input [7:0] a, input [7:0] b, output [7:0] c, output [7:0] cout);

	fulladder1 n1(a[0], b[0], (0), c[0], cout[0]);
	fulladder1 n2(a[1], b[1], cout[0], c[1], cout[1]);
	fulladder1 n3(a[2], b[2], cout[1], c[2], cout[2]);
	fulladder1 n4(a[3], b[3], cout[2], c[3], cout[3]);
	fulladder1 n5(a[4], b[4], cout[3], c[4], cout[4]);
	fulladder1 n6(a[5], b[5], cout[4], c[5], cout[5]);
	fulladder1 n7(a[6], b[6], cout[5], c[6], cout[6]);
	fulladder1 n8(a[7], b[7], cout[6], c[7], cout[7]);
endmodule