module counter8bit(input clk, rst, output reg [7:0] value);

	always@(posedge clk or negedge rst) begin
		if(rst == 0)
			value = 8'b0;
			else if (value == 8'b11111111) 
				value = 8'b0;
				else
					value = value + 1;
		end
endmodule
