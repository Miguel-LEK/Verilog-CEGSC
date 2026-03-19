module Verilog2 (
    input  wire       clk,
    output reg  [2:0] gpio    // [0]=G, [1]=R, [2]=B
);
    reg [25:0] counter = 0;
    reg  [1:0] state   = 0;

    always @(posedge clk) begin
        counter <= counter + 1;
        if (counter == 25_000_000) begin
            counter <= 0;
            state   <= state + 1;
        end
    end

    always @(*) begin
        case (state)
            2'd0:    gpio = ~3'b010;  // Red
            2'd1:    gpio = ~3'b011;  // Orange
            2'd2:    gpio = ~3'b110;  // Purple
            default: gpio =  3'b111;  // All OFF
        endcase
    end

endmodule
