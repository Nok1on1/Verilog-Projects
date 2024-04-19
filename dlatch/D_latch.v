module D_latch(input D, input EN, output reg Q);

    always @(D or EN) begin
        if(EN) begin
            Q <= D;
        end
    end
endmodule
