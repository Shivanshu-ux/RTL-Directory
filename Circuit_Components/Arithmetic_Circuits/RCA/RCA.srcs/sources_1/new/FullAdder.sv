module FullAdder(
input logic A,B,Cin,
output logic Sum,Cout
    );
    assign {Cout,Sum}=A+B+Cin;
endmodule
