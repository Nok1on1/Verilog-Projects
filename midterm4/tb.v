module tb;

reg clk, rst, stop;
wire [7:0] count;

counter8bit uut(clk,rst,stop,count);

always #5 clk = ~clk;

initial begin
clk = 0;
rst = 0;
stop = 0;
#30;
rst = 1;
#1
rst = 0;
#30 
stop = 1;
#10
stop = 0;
#30
$finish;
end
endmodule
	