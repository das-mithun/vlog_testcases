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
    x = 0;
    clk = 1;
    force y = 1;
    #1 clk = 0;
    #2 clk = 1;
    #3 clk = 0;
    release y;
    #4 clk = 1;
    end

endmodule
