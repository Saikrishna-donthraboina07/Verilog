module NBitFrequencyDivider (
  input wire clk_in,
  input wire [31:0] divisor,
  output reg clk_out
);

  reg [31:0] count;

  always @(posedge clk_in) begin
    if (count == divisor - 1) begin
      count <= 0;
      clk_out <= ~clk_out;
    end else begin
      count <= count + 1;
    end
  end

endmodule

