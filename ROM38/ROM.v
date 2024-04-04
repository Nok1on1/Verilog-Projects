module ROM (input [2:0] address, input sel, output reg [7:0] data);

always @(sel or address)
	begin
		if(~sel) data <= 8'b00000000;
			else begin
			case(address)
			3'b000 : data <= 8'b00000001;
			3'b001 : data <= 8'b00000011;
			3'b010 : data <= 8'b00001001;
			3'b011 : data <= 8'b00110001;
			3'b100 : data <= 8'b01110001;
			3'b101 : data <= 8'b00111001;
			3'b110 : data <= 8'b01000001;
			3'b111 : data <= 8'b10000001;
			endcase
		  end
    end
endmodule
