// Assign and initial block with delay.
module top;
  reg a;
  wire b;

  assign #5 b = a;
  initial begin
    a = 1;
    $display("Initial Block_1 ", a,, b);
    a = 0;
    $display("Initial Block_1 ", a,, b);
    a = 1;
    #5;
    $display("Initial Block_1 ", a,, b);
  end
endmodule
