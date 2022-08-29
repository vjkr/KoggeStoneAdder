// Code your testbench here
// or browse Examples
module tb;
  reg [15:0] A, B;
  reg Cin;
  wire Cout;
  wire [15:0] S;

  KoggeStone ks(A, B, Cin, S, Cout); 

 initial // initial block executes only once
        begin
            // values for a and b
    	        A =16'h1111;
        	    B = 16'hABCD;
	          Cin =0;
           #20;
          $display(A);
          $display(B);
          $display(S);
        end

endmodule
