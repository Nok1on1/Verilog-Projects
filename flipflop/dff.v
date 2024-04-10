module  Dflipflop(input D, input clk, input set, output reg Q);

  always @(posedge clk) begin
    if (set)
      Q <= 1'b0;
    else
      Q <= D;
  end

endmodule