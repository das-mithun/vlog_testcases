// Test 1: Basic initial and always block
module top;
  reg a, b;

  initial begin
    a = 1;
    b = 0;
    $display("Initial block ", $time,,a,,b);
  end

  always @(a)
    begin
        #5 a = ~a;
        b = ~a;
        $display("Always block ", $time,,a,,b);
    end
endmodule

