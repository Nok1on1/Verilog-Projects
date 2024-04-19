module clkdivisor(input clk, output reg Dclk);

integer counter;

initial begin // To give default values
    Dclk = 1'b0;
    counter = 2;
end

always @(posedge clk) begin
    if (counter == 2) begin
        Dclk <= ~Dclk; // change value 0/1
        counter <= 0; //nulify to start counting once again
    end
    else counter <= counter + 1;
end

endmodule