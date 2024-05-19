module mux4 (
    input wire a, b, c, d,
    input Sh, L,
    output reg out
);

    always @* begin
        case ({Sh, L})
            2'b00: out = a;
            2'b01: out = b;
            2'b10: out = c;
            2'b11: out = d;
        endcase
    end

endmodule