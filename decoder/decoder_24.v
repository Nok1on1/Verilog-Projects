module decoder_24(
    input [1:0] in,
    output reg [3:0] out
);

always @* begin
    if (in == 2'b00) out = 4'b0001;
    else if (in == 2'b01) out = 4'b0010;
    else if (in == 2'b10) out = 4'b0100;
    else if (in == 2'b11) out = 4'b1000;
end

endmodule
