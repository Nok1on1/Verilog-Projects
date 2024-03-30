module clkdivisor(input wire clk, input wire END, output reg Dclk);

integer counter;

initial begin // To give default values
    Dclk = 1'b0;
    counter = 1;
end

always @(posedge clk) begin //runs on every raise edge of clock
    if (counter == 1) begin
        Dclk <= ~Dclk; // change value 0/1
        counter <= 0; //nulify to start counting once again
    end
    else begin
        counter <= counter + 1; //counting
    end
end

endmodule