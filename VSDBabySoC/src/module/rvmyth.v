module rvmyth (
    output reg [9:0] OUT,
    input wire CLK,
    input wire reset
);

    // Simple counter to generate changing DAC input
    reg [9:0] counter;

    always @(posedge CLK or posedge reset) begin
        if (reset) begin
            counter <= 10'd0;
        end else begin
            counter <= counter + 10'd1; // increments each clock
        end
    end

    // drive output
    always @(*) begin
        OUT = counter;
    end

endmodule

