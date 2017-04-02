module MA (clk, ld, clr, D, Addr);
	input clk, ld, clr;
	input [5:0] D;
	output reg [5:0] Addr;
	
	always @ (posedge clk) begin
		if (clr) Addr <= 0;
		else if (ld) Addr <= D;
	end
	
endmodule
