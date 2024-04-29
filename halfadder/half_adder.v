module half_adder (input a, input b, output [3:0]q);

assign q[0] = ~a&~b,
q[1] = a&~b,
q[2] = ~a&b,
q[3] = a&b;

endmodule
