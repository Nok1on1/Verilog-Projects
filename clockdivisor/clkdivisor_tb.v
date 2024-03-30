module clkdivisor_tb;
    reg clk;
	 reg END;
    wire Dclk;
	 

    clkdivisor uut(.clk(clk), .END(END), .Dclk(Dclk));
	 
	 initial begin 
	 clk = 0;
	 END = 1;
	 end
	 
	 integer count = 122; //  terminate to program after "count" many loops
	 
    always begin //clk loop
        if (END == 0) begin //terminate program
		  $finish;
		  end
		  else if(count != 0) begin
		  clk = ~clk; #5;
		  count = count - 1;
			end
			else begin
			END = 0; //END becomes 0 only after count == 0;
			end
    end
	 
endmodule
