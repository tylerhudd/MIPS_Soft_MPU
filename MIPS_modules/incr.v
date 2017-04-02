module incr(A, out);
	input [5:0] A;
	output [5:0] out;
	
	assign out = A + 1'b1;

endmodule
