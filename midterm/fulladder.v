module fulladder(input a, b, cin, output sum, cout);
assign sum = (a^b)^cin;
assign cout = (a&b) | (cin&(a^b));
endmodule

module carryadder(input [3:0] A, B, output [3:0] C, output [3:0] cout);

fulladder num1(A[0], B[0], (0), C[0], cout[0]);
fulladder num2(A[1], B[1], cout[0], C[1], cout[1]);
fulladder num3(A[1], B[1], cout[1], C[2], cout[2]);
fulladder num4(A[3], B[3], cout[2], C[3], cout[3]);

endmodule


module testb;

reg [3:0] A, B;
wire [3:0] C;
wire [3:0] cout;

carryadder uut(A,B,C,cout);

initial begin

 A <= 4'b1100;
 B <= 4'b0001;
 #10;
 A <= 4'b0001;
 B <= 4'b0011;
 #10;
end
endmodule
