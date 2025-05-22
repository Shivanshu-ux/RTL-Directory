module Subtractor(
input logic A,B,Bin,
output logic Dif,Bout
    );
    assign Dif=A^B^Bin;
    assign Bout=~A&Bin|~A&B|B&Bin;
endmodule
