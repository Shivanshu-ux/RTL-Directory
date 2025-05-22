module syncCnt #(parameter SIZE=4)(
  input clk, rst,
  input up,
  output reg [3:0] cnt
);

  always@(posedge clk) begin
    if(rst) begin
      cnt <= 4'h0;
    end
    else begin
      if(up) cnt <= cnt + 1'b1;
      else cnt <= cnt - 1'b1;
    end
  end
endmodule