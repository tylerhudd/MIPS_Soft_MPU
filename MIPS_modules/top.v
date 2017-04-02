module top (clk, start, restart, Input, Output);
	input clk, start, restart;
	input [7:0] Input;
	output [7:0] Output;
	
	wire IRload, MemInst, MemWr, Aload, RFwr, outen, 
		 Aeq0, Apos;
	wire [1:0] JMPsel, SHsel, Asel;
	wire [2:0] ALUsel;
	wire [7:0] IR;
	wire halt;
	reg clkin;
		
	
	datapath dp1  (clkin, rst, IRload, MRload, PCload,
					 	MemInst, MemWr, Aload, RFwr, outen,
						JMPsel, SHsel, Asel, ALUsel, Input,
						IR, Output, Aeq0, Apos);
						
	controller c1 (Aeq0, Apos, clkin, start, restart, IR, 
						IRload, MRload, PCload, MemInst, MemWr,
						Aload, RFwr, outen, rst, JMPsel,
						Asel, SHsel, ALUsel, halt);
						
	always @ (*)
		if (~halt) clkin <= clk;
		else clkin <= 0;
endmodule
