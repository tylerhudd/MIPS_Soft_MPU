module Accumulator (clk, clr, wr, Ain, Aout);
	input clk, clr, wr;
	input [7:0] Ain;
	output reg [7:0] Aout;
	
	always @ (posedge clk) begin
		if (clr) Aout <= 0;
		else if (wr) Aout <= Ain;
	end
	
	
endmodule
