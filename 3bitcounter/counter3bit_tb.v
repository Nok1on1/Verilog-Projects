module counter3bit_tb;

reg clk, reset, set, load;
wire [2:0] count;

counter3bit dut(.clk(clk), .reset(reset), .set(set), .load(load), .count(count));

always #5 clk = ~clk;

initial begin
    clk = 0;
    reset = 1;
    set = 0;
    load = 0;
    #5;
    reset = 0;
    #5;
    load = 1;
    #5;
    load = 0;
end

always begin
    #5;
    set = 1;
    #5;
    set = 0;
    #5;
    load = 1;
    #5;
    load = 0;
    #50;
    $stop;
end

endmodule
