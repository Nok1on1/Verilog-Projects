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

module shiftregister (
    input wire D0, D1, D2, D3,
    input wire SI, SH, L, CLK,
    output reg Q0, Q1, Q2, Q3
);

    wire mux_o0, mux_o1, mux_o2, mux_o3;

    mux4 fuu1(.a(Q3), .b(D3), .c(SI), .d(SI), .Sh(SH), .L(L), .out(mux_o3));
    mux4 fuu2(.a(Q2), .b(D2), .c(mux_o3), .d(mux_o3), .Sh(SH), .L(L), .out(mux_o2));
    mux4 fuu3(.a(Q1), .b(D1), .c(mux_o2), .d(mux_o2), .Sh(SH), .L(L), .out(mux_o1));
    mux4 fuu4(.a(Q0), .b(D0), .c(mux_o1), .d(mux_o1), .Sh(SH), .L(L), .out(mux_o0));

    always @ (negedge CLK) begin
        Q3 <= mux_o3;
        Q2 <= mux_o2;
        Q1 <= mux_o1;
        Q0 <= mux_o0;
    end

endmodule
