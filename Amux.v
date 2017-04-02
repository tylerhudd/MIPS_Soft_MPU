module Amux (A, B, C, D, sel, out);
	input [7:0] A, B, C, D;
	input [1:0] sel;
	output reg [7:0] out;
	
	always @ (*)
	
	case (sel)
		2'b00: out <= A;
		2'b01: out <= B;
		2'b10: out <= C;
		2'b11: out <= D;
		default: out <= 2'bxx;
	endcase

endmodule
