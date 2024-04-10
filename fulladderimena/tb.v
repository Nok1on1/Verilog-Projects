module tb;

reg [3:0] A, B;
wire [3:0] sum;
wire [3:0] cout;

carryadder uut(A,B,sum,cout);

initial begin

 A <= 4'b1100;
 B <= 4'b0001;
 #10;
 A <= 4'b0001;
 B <= 4'b0011;
 #10;
end
endmodule