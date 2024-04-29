module tb;

reg in, dir, clk, rst;
wire [3:0] out;

shifter uut(in, dir, clk, rst, out);

always #5 clk = ~clk;

initial begin
  clk = 0;
  dir = 1;
  in = 1;
  rst = 0;
  #20;
  in = 0;
  #20;
  in = 1;
  #20;
  dir = 0;
  #20;
  end
endmodule
  