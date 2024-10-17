// Basic Testcase Initial Block
module top;
  reg a;
  reg b;

  initial begin
    a = 0;
    b = 1;
    $display("Initial Block_1 ", a,, b);
  end
endmodule
