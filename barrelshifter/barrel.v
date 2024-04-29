module barrel (input [3:0] in, input [1:0] steps, input dir, clk, rst, output reg [3:0] out);

reg [3:0] toshift;
integer i;

initial toshift = 4'b0000;

always @(posedge clk) begin
	
	if (rst) begin 
		 out = 4'b0000;
		 toshift = 4'b0000;
		 end
		 
		 else begin
			  if (dir) begin
					if (steps == 2'b11) out = in;
					
						else begin 
							for (i = 0; i < steps; i = i+1) begin
							toshift = toshift >> 1;
							out = {in [i], toshift [2:0]};
							toshift = {in[i], toshift [2:0]};
							end
						end
				end
					else out = toshift << steps;
		end
end
		 
endmodule
