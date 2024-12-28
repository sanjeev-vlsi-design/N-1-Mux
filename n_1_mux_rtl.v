module n_1_mux_rtl(data_in, s_line, out);
  parameter n = 4;                  // Select line width
  parameter x = 2 ** n;             // Number of inputs
  input [x-1:0] data_in;            // Input data
  input [n-1:0] s_line;             // Select line
  output reg out;

  always @(*) begin
    out = data_in[s_line];          // Select the appropriate input
  end
endmodule
