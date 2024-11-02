module top;
  logic clk;
  reg x;
  reg y;
  reg z;
  
  wire out;
  
  assign #2 out  = x | y;
  always@(posedge clk)
  begin
     x  <= ~x;
     y  <= x;
  end
  
  always@(x)
  begin
     z  <= x;
  end
  
  initial begin
    $monitor($time," ", clk," ", x," ",y," ",z," ",out);
  end

  initial 
    begin
    x = 1;
    clk = 0;
    #1 clk = 1;
    #2 clk = 0;
    end

  initial 
    begin
    x = 0;
    clk = 1;
    #1 clk = 0;
    #2 clk = 1;
    end

endmodule
