module ProgramCounter(input clk, input reset, output wire [31:0] pc);

    // Define constants
    parameter PC_WIDTH = 32;  // Width of the program counter
    parameter PC_MAX = (1 << PC_WIDTH) - 1;

    reg [31:0] counter;

    always @(posedge clk) begin
        if (reset)
            counter = 2'b0;
        else if (counter == PC_MAX)
            counter = 2'b0;
        else
            counter = counter + 1;
    end

    assign pc = counter;

endmodule
