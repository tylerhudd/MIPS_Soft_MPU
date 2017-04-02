module RF (clk, WA, WE, D, Q);
	input clk;
	input [2:0] WA;
	input WE;
	input [7:0] D;
	output reg [7:0] Q;
	
	reg [7:0] RegFile [7:0];
	
	always @ (posedge clk) begin
		if (WE) RegFile[WA] <= D;
	end
	
	always @ (*) begin
		Q <= RegFile[WA];
	end
	
endmodule
