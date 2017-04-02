module outputReg (clk, clr, wr, D, Q);
	input clk, clr, wr;
	input [7:0] D;
	output reg [7:0] Q;
	
	always @ (posedge clk) begin
		if (clr) Q <= 0;
		else if (wr) Q <= D;
	end
	
	
endmodule
