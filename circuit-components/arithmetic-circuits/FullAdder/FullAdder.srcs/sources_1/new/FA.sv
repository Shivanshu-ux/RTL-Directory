module FA(
    input logic A,
    input logic B,
    input logic Cin,
    output logic S,
    output logic Cout
    );
    assign S=A^B^Cin;
    assign Cout=(A&B)|(B&Cin)|(Cin&A);
endmodule