module Shifter (sel, A, out);
	input [1:0] sel;
	input [7:0] A;
	output reg [7:0] out;
	
	always @ (*)
	
	case (sel)
		2'b00: out <= A << 1;	// SHFL (00)
		2'b01: out <= A >> 1;	// SHFR (01)
		2'b10: begin				// ROTR (10)
			out[6:0] <= A[7:1];
			out[7] <= A[0];
			end
		2'b11: out <= A;			// pass (11)
		default: out <= 8'bxxxxxxxx;
	endcase
	
endmodule
