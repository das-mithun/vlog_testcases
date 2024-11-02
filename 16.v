module top;
  logic clk;
  reg x;
  reg y;
  reg z;
  
  wire out;
  
  assign #2 out  = x | y;
  always@(posedge clk)
  begin
     #2 x  <= ~x;
     #3 y  <= x;
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
    #1 clk = 0;
    x = 1;
    end

endmodule
