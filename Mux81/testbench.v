module testbench();

   reg [7:0] in;
   reg [2:0] select;
   wire out;
    
	Mux_81 UUT (.in(in), .select(select), .out(out));
	 
		 initial begin
		 
			  in = 8'b10101010;
			  select = 3'b000;
			  #10;
			  
			  in = 8'b01010101;
			  select = 3'b100;
			  #10;
			  
			  in = 8'b11111111;
			  select = 3'b010;
			  #10;
			  
			  in = 8'b00001111;
			  select = 3'b011;
			  #10;
			  
			  in = 8'b11001100;
			  select = 3'b110;
			  #10;
			  
			  in = 8'b11110000;
			  select = 3'b101;
			  #10;
			  
			  $finish;
			  
		 end
	 
endmodule
