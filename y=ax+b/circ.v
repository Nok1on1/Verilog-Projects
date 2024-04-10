module circ(input clk, input [3:0] x, a, b, output reg [3:0] y);

always @(posedge clk) begin y = a*x; y = y+b; end
endmodule