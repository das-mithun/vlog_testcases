// using both Blocking and non-blockng
module top;
  reg a, b, c;

  initial begin
    a = 0;
    b = 0;
    c = 0;
    a <= 1;
    b <= a;
    c <= b;
    $display($time,, a,, b,, c);
    #1 $display($time,, a,, b,, c);
  end
endmodule
