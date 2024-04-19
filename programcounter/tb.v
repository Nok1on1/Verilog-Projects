module tb;

    reg clk;
    reg reset;
    wire [31:0] pc;

    ProgramCounter dut (.clk(clk), .reset(reset), .pc(pc));

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        reset = 1;
        #10 reset = 0;
        #100;
        reset = 1'b0;
        #500;
        $finish;
    end

endmodule