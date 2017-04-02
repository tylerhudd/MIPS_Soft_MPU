module subrel(A, B, out);
	input [5:0] A, B;
	output [5:0] out;
	
	assign out = A - B[2:0];

endmodule
