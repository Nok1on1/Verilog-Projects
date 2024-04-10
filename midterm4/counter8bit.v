module counter8bit(input clk, rst, stop, output reg [7:0] count);
initial begin count = 8'b0;end
always @(posedge clk) begin
if(rst) count <= 8'b0;
else if(stop) begin end
else count = count + 1;
end
endmodule