module ArrayMultiplier(
input logic [3:0]A,B,
output logic [7:0]Y
    );
    wire [3:0]P0,P1,P2,P3;
    wire [10:0]C;
    wire [5:0]S;
    
    assign P0[0]=B[0]&A[0];
    assign P0[1]=B[0]&A[1];
    assign P0[2]=B[0]&A[2];
    assign P0[3]=B[0]&A[3];
    
    assign P1[0]=B[1]&A[0];
    assign P1[1]=B[1]&A[1];
    assign P1[2]=B[1]&A[2];
    assign P1[3]=B[1]&A[3];
    
    assign P2[0]=B[2]&A[0];
    assign P2[1]=B[2]&A[1];
    assign P2[2]=B[2]&A[2];
    assign P2[3]=B[2]&A[3];
    
    assign P3[0]=B[3]&A[0];
    assign P3[1]=B[3]&A[1];
    assign P3[2]=B[3]&A[2];
    assign P3[3]=B[3]&A[3];
    
    assign Y[0]=P0[0];
    HA H1(P1[0],P0[1],Y[1],C[0]);
    HA H2(P2[0],P1[1],S[0],C[1]);
    HA H3(P3[0],P2[0],S[1],C[2]);
    
    FA F1(P0[2],C[0],S[0],Y[2],C[3]);
    FA F2(P1[2],C[1],S[1],S[2],C[4]);
    FA F3(P2[2],P3[1],C[2],S[3],C[5]);
    
    FA F4(P0[3],C[3],S[2],Y[3],C[6]);
    FA F5(P1[3],C[4],S[3],S[4],C[7]);
    FA F6(P2[3],P3[2],C[5],S[5],C[8]);
    
    HA H4(C[6],S[4],Y[4],C[9]);
    FA F7(S[5],C[9],C[7],Y[5],C[10]);
    FA F8(P3[3],C[8],C[10],Y[6],Y[7]);
    
endmodule
