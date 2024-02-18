`include "notg.v"
module notg_tb;

  // Inputs
  reg a;

  // Outputs
  wire out;

  // Instantiate the NotGate module
  notg uut (
    .a(a),
    .out(out)
  );

  // Stimulus generation
  initial 
    begin
      $dumpfile("notg.vcd");
      $dumpvars(0,notg_tb);
      // Initialize inputs
      a = 0;

      // Apply a test case
      #10 a = 1;

      // Add more test cases as needed

      // Stop simulation
      #10 $finish;
  end

  // Display results
  /*initial begin
    $monitor("Time=%0t a=%b out=%b", $time, a, out);
  end */

endmodule
