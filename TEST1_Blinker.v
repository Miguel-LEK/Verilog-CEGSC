module Verilog1 #(
    parameter CLK_FREQ = 50000000,
    parameter BLINK_HZ = 1
)(
    input  wire clk,
    input  wire rst,
    output reg [7:0] leds
);
    localparam integer COUNT_MAX = CLK_FREQ / (2 * BLINK_HZ);

    reg [31:0] counter;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            counter <= 32'd0;
            leds    <= 8'd0;
        end
        else begin
            if (counter == COUNT_MAX - 1) begin
                counter <= 32'd0;
                leds    <= ~leds;
            end
            else begin
                counter <= counter + 1'b1;
            end
        end
    end

endmodule
