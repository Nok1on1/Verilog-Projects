module tb;

reg clk;
reg L;
reg Sh;
reg SI;

reg [3:0] D;

wire [3:0] Q;

shiftregister dut(.clk(clk), .L(L), .Sh(Sh), .SI(SI), .D(D), .Q(Q));

always #5 clk = ~clk;

initial begin
	 clk = 0;
    L = 0;
    Sh = 1;
    SI = 0;
    D = 4'b1011;

    #10 SI = 1;
    #10 D = 4'b1010;
    #10 SI = 0;

    #10 Sh = 1;
    #10 Sh = 0;

    #10 SI = 1;
    #10 D = 4'b0110;
    #10 SI = 0;

    #100;
	 
	 $finish;
end

endmodule
