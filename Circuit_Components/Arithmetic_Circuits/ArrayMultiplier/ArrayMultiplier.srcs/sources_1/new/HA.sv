module HA(
input logic A,B,
output logic Sum,Cout
);
assign Sum=A^B;
assign Cout=A&B;
endmodule