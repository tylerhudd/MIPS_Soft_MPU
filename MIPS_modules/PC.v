module PC (clk, ld, clr, D, PCReg);
	input clk, ld, clr;
	input [5:0] D;
	output reg [5:0] PCReg;
	
	initial begin
		PCReg = 0;
	end
	
	always @ (posedge clk) begin
		if (clr) PCReg <= 0;
		else if (ld) PCReg <= D;
	end
	
endmodule
