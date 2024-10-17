module top;
  reg a, b, c;

  initial begin
    a = 0;
    b = 0;
    c = 0;
    a <= 1;
    #4 b = 1;
    c <= b;
    $display($time,, a,, b,, c);
    #1 $display($time,, a,, b,, c);
  end
endmodule
