// Basic Initial Block with Non-Blocking Assignment
module top;
  reg a;
  reg b;

  initial begin
    a <= 0;
    b <= 1;
    $display("Initial Block 1 ", a,, b);
  end
endmodule
