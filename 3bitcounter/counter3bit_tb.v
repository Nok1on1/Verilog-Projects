`timescale 1ns / 1ps

module counter3bit_tb;

reg clk, reset, set, load;
wire [2:0] count;

counter3bit dut(.clk(clk), .reset(reset), .set(set), .load(load), .count(count));

always begin 
       #5 clk = ~clk; 
       $display("Count = %b", count);
end

initial begin
    // Specify the VCD output file
    $dumpfile("counter3bit.vcd");
    // Dump all variables in the testbench
    $dumpvars(0, counter3bit_tb);
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
    $finish;
end

endmodule
