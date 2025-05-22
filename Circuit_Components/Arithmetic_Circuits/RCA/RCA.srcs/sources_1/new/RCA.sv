module RCA(
input logic [3:0]A,B,
input logic Cin,
output logic [3:0]Sum,
output logic Cout
);
wire [2:0]C;
FullAdder F1 (A[0],B[0],Cin,Sum[0],C[0]);
FullAdder F2 (A[1],B[1],C[0],Sum[1],C[1]);
FullAdder F3 (A[2],B[2],C[1],Sum[2],C[2]);
FullAdder F4 (A[3],B[3],C[2],Sum[3],Cout);

endmodule