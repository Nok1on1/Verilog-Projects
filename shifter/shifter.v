module shifter (input in, dir, clk, rst, output reg [3:0] out);

reg [3:0] toshift;

initial toshift = 4'b0000;

    always @(posedge clk or posedge rst) begin
		 if (rst) begin 
		 out = 4'b0000;
		 toshift = 4'b0000;
		 end
		 
		 else begin
			  if (dir) begin
					out = {in, toshift [3:1]};
			  end else begin
					out = toshift << 1;
			  end
			  toshift = out;
		 end
	 end
endmodule
