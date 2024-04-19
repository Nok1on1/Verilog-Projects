module tb;

reg d;
reg clk;
reg reset;
wire [7:0] out;

Dflipflop tuut(d, clk, reset, out);


always #5 clk = ~clk;
initial begin 
clk = 0;
d = 1;
reset = 0;
#5;
d = 0;
#5;
d = 1;
#5;
reset = 1;
#5;
reset = 0;
#50; 
end
endmodule
