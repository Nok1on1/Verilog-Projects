module Mux(input [2:0] in1, input [2:0] in2, input sel, output reg [2:0] out);

always @* begin
    if (sel == 0) begin
        out[0] = in1[0];
        out[1] = in1[1];
        out[2] = in1[2];
    end else if (sel == 1) begin
        out[0] = in2[0];
        out[1] = in2[1];
        out[2] = in2[2];
    end
end

endmodule
