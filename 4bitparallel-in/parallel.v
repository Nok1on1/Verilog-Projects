module mux4 (input wire a,b,c,d, 
				 input Sh, L, 
				 output out);

	always@* begin
		case({Sh,L})
			2'b00 : out = a;
			2'b01 : out = b;
			2'b10 : out = c;
			2'b11 : out = d;
		endcase
	end
endmodule

module shiftregister (
    input wire D0, D1, D2, D3,
    input wire SI, SH, L, CLK,
    output reg Q0, Q1, Q2, Q3, o3,o2,o1,o0
);

always @* begin

mux4 f1(.a(Q3), .b(D3), .c(SI), .d(SI), .Sh(Sh), .L(L), .out(o3));
Q3 <= o3;
mux4 f2(.a(Q2), .b(D2), .c(o3), .d(o3), .Sh(Sh), .L(L), .out(o2));
Q2 <= o2;
mux4 f3(.a(Q1), .b(D1), .c(o2), .d(o2), .Sh(Sh), .L(L), .out(o1));
Q1 <= o1;
mux4 f4(.a(Q0), .b(D0), .c(o1), .d(o1), .Sh(Sh), .L(L), .out(o0));
Q0 <= o0;
end

endmodule




