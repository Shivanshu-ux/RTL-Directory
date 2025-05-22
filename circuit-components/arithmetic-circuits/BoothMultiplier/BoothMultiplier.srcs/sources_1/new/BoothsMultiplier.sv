module BoothsMultiplier(
output [3:0] op,
output busy,
input [1:0] mutipicand, multiplier,
input clk, start);

reg [1:0] A, Q, M;
reg Q_1;
reg [1:0] count;
wire [1:0] sum, difference;

always @(posedge clk)
begin
 if (start) begin
 A <= 8'b0;
 M <= mutipicand;
 Q <=  multiplier;
 Q_1 <= 1'b0;
 count <= 2;
 end
 else begin
 case ({Q[0], Q_1})
 2'b0_1 : {A, Q, Q_1} <= {Q[0], sum, Q};
 2'b1_0 : {A, Q, Q_1} <= {Q[0], difference, Q};
 default: {A, Q, Q_1} <= {Q[0], A, Q};
 endcase
 count <= count - 1'b1;
 end
end
FA adder (sum, A, M, 1'b0);
FA subtracter (difference, A, ~M, 1'b1);
assign op= {A, Q};
assign busy = (count > 0);
endmodule




