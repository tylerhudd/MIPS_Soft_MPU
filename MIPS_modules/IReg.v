module IReg (clk, ld, clr, D, InstrReg);
		input clk, ld, clr;
		input [7:0] D;
		output reg [7:0] InstrReg;
		
		always @ (posedge clk) begin
			if (clr) InstrReg <= 0;
			else if (ld) InstrReg <= D;
		end
		
endmodule
