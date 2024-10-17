// Initial Block with Assign
module top;
  reg a;
  wire b;

  assign b = a;
  initial begin
    a = 0;
    $display("Initial Block_1 ", a,, b);
    a = 1;
    $display("Initial Block_1 ", a,, b);
    a = 0;
    $display("Initial Block_1 ", a,, b);
  end
endmodule
