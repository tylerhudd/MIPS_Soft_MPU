module MemInstmux (A, B, sel, out);
	input [5:0] A, B;
	input sel;
	output reg [5:0] out;
	
	always @ (*)
	
	case (sel)
		1'b0: out <= A;
		1'b1: out <= B;
		default: out <= 2'bxx;
	endcase

endmodule
