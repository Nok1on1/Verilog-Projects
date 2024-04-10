module encoder(input [7:0] in, input EN, output reg [2:0] out);

	always @* begin
		if(EN) begin 
			case(in)
			8'b00000001 : out = 000;
			8'b00000010 : out = 001;
			8'b00000100 : out = 010;
			8'b00001000 : out = 011;
			8'b00010000 : out = 100;
			8'b00100000 : out = 101;
			8'b01000000 : out = 110;
			8'b10000000 : out = 111;
			endcase
		end
	end
endmodule
	