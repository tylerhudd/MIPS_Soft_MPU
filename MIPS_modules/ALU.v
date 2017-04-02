module ALU (sel, A, B, out);
	input [2:0] sel;
	input [7:0] A, B;
	output reg [7:0] out;
	
	always @ (*)
	
	case (sel)
		3'b000: out <= A & B;	 // AND (000)
		3'b001: out <= A | B;	 // OR  (001)
		3'b010: out <= A + B;	 // ADD (010)
		3'b011: out <= A - B;	 // SUB (011)
		3'b100: out <= ~A;		 // NOT (100)
		3'b101: out <= A + 1'b1; // INC (101)
		3'b110: out <= A - 1'b1; // DEC (110)
		3'b111: out <= A;			 // pass(111)
		default: out <= 8'bxxxxxxxx;
	endcase
	
endmodule
