module FA_tb;
  logic a,b,cin;
  logic sum,cout;
 
// instantiate the DUT block  
  FA f1(.A(a),.B(b),.Cin(cin),.S(sum),.Cout(cout));
 

// insert all the inputs 
  initial begin a=1'b1;  #4; a=1'b0;#10 $stop();end
  initial begin b=1'b1; forever #2 b=~b;end
  initial begin cin=1'b1;forever #1 cin=~cin; #10 $stop();end

// monitor all the input and output ports at times 
// when any of the input changes its state

 initial begin $monitor(" time=%0d A=%b B=%b Cin=%b Sum=%b Cout=%b",$time,a,b,cin,sum,cout);end
 endmodule