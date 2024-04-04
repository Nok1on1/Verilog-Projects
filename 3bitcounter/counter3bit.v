module counter3bit (input clk, input reset, input set, input load, output reg [2:0] count);

reg [2:0] next_count;

always @(posedge clk or posedge reset) begin
    if (reset) begin
        count <= 3'b000;
    end else if (set) begin
        count <= 3'b111; 
    end else if (load) begin
        count <= next_count; 
    end else begin
        count <= count + 1;
    end
end

always @* begin
    if (load) begin
        next_count = {count[1:0], count[2]};
    end
end

endmodule
