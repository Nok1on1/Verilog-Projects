module carryadder(input [3:0] A, B, output [3:0] sum, output [3:0] cout);

fulladder num1(A[0], B[0], (0), sum[0], cout[0]);
fulladder num2(A[1], B[1], cout[0], sum[1], cout[1]);
fulladder num3(A[2], B[2], cout[1], sum[2], cout[2]);
fulladder num4(A[3], B[3], cout[2], sum[3], cout[3]);

endmodule