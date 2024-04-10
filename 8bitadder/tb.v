module tb;

reg [7:0] a, b;
wire [7:0] c, cout;

adder8bit uut(a,b,c,cout);

initial begin

a <= 8'b11110000;
b <= 8'b00000111;
end
endmodule
