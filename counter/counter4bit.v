module counter4bit(input clk, input reset, output reg [3:0] count);

always @ (posedge clk or negedge reset)

begin
    if (reset == 0)
        count <= 4'b0000;
    else begin
        if (count == 4'b1111) count <= 4'b0000;
        else count <= count + 1;
    end
end

endmodule
