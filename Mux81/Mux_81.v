module Mux_81(input [7:0] in, input [2:0] select, output reg out);

	always @* begin
		case(select)
		2'b000 : out = in[0];
		2'b001 : out = in[1];
		2'b010 : out = in[2];
		2'b011 : out = in[3];
		
		2'b100 : out = in[4];
		2'b101 : out = in[5];
		2'b110 : out = in[6];
		2'b111 : out = in[7];
		endcase
	end
endmodule