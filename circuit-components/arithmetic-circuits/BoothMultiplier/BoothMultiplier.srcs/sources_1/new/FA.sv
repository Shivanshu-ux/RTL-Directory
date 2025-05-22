module FA(out, a, b, cin);
output [1:0] out;
input [1:0] a;
input [1:0] b;
input cin;
assign out = a + b + cin;
endmodule