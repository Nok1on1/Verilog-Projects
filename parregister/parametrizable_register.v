module parametrizable_register #(parameter WIDTH = 8) 
						(input clk, reset, input [WIDTH-1:0] data_in, output reg [WIDTH-1:0] data_out);

    always @(posedge clk or posedge reset) begin
        if (reset)
            data_out = 'b0;
        else
            data_out = data_in;
    end

endmodule
