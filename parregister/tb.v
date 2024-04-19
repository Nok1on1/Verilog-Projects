module tb;

    parameter WIDTH = 8;
    
    reg clk;
    reg reset;
    reg [WIDTH-1:0] data_in;
    wire [WIDTH-1:0] data_out;
    
    parametrizable_register #(.WIDTH(WIDTH)) dut(.clk(clk), .reset(reset), .data_in(data_in), .data_out(data_out));

    always #5 clk = ~clk;
    
    // Stimulus
    initial begin
		  clk = 0;
        reset = 1;
        #5;
        reset = 0;
        data_in = 8'b10101010;
        #10;
        data_in = 8'b01010101;
        #10;
        reset = 1;
        #15;
        reset = 0;
        #50;
        $finish;
    end
    
endmodule
