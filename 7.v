// Non-blocking assignment with Delay
module top;
  reg a;
  wire b;

  assign #5 b = a;
  initial begin
    a <= 1;
    $display("Initial Block_1 ", a,, b);
    a <= 0;
    $display("Initial Block_1 ", a,, b);
    a <= 1;
    #6;
    $display("Initial Block_1 ", a,, b);
  end
endmodule
