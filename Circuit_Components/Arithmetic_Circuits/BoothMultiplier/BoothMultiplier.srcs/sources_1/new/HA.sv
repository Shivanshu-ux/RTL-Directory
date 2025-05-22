module HA(
input A,B,
output Sum,Cout
);
assign sum = A^B;
assign Cout=(A&B);
endmodule
