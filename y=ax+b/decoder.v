module decoder24 (input [1:0] in, output reg [3:0] out)
	always @* begin 
		case(in) begin
		2'b00 : out = 4'b0001;
		2'b01 : out = 4'b0010;
		2'b10 : out = 4'b0100;
		2'b11 : out = 4'b1000;
		end
	end
endmodule

module mux41 (input [1:0] sel, output reg [3:0] out);
wire [3:0] i[3:0];
decoder24 decode0(sel,i[0]);
decoder24 decode1(sel,i[1]);
decoder24 decode2(sel,i[2]);
decoder24 decode3(sel,i[3]);

always@(sel) begin
	case(sel) begin
	0 : o <=a;
	1 : o <=b;
	2 : o <=c;
	3 : o <=d;
	endcase
	end
endmodule
