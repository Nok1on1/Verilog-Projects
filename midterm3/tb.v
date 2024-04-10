module tb;

reg [7:0] in;
reg EN;
wire [2:0] out;


encoder uut(in,EN,out);

initial begin
 EN = 1;
 in = 8'b00000001; #5;
 in = 8'b00000010; #5;
 in = 8'b00000100; #5;
 in = 8'b00001000; #5;
 in = 8'b00010000; #5;
 in = 8'b00100000; #5;
 in = 8'b01000000; #5;
 EN = 0;
 in = 8'b10000000; #5;
 end
endmodule
