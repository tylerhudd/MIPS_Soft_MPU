module mem (clk, Addr, WE, D, Q);
	input clk;
	input [5:0] Addr;
	input WE;
	input [7:0] D;
	output reg [7:0] Q;
	reg [7:0] RAM [63:0];
	
	initial begin
		$readmemh("memfile.HEX", RAM);
	end
	
	always @ (posedge clk) begin
		if (WE) RAM[Addr] <= D;
	end
	
	always @ (*) begin
		Q <= RAM[Addr];
	end
	
endmodule
