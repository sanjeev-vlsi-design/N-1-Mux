module n_1_mux_tb();
  parameter n = 2;                  // Select line width
  parameter x = 2 ** n;             // Number of inputs
  reg [x-1:0] data_in;              // Input data
  reg [n-1:0] s_line;               // Select line
  wire out;

  n_1_mux_rtl #(.n(n), .x(x)) k(data_in, s_line, out);  // Instantiating the module

  integer i;
  initial begin
    for (i = 0; i < 64; i = i + 1) begin
      {data_in, s_line} = i;        // Assign values to `data_in` and `s_line`
      #10;
    end
  end
endmodule
