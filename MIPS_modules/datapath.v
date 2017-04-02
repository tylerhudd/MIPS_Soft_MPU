module datapath
	(
	input clk, rst, IRload, MRload, PCload,
		MemInst, MemWr, Aload, RFwr, outen,
	input [1:0] JMPsel, SHsel, Asel,
	input [2:0] ALUsel,
	input [7:0] Input,
	
	output [7:0] InstReg,
	output [7:0] Output,
	output Aeq0, Apos
	);
	
	wire [5:0] MAddr, PCpls1, PCadd, PCsub, PCmux,
		PCnext, Addrsel;
	wire [7:0] Instr, Acc, shiftout, RFout,
		Amuxout, ALUout;
	
	IReg IR1 (clk, IRload, rst, Instr, InstReg);
	MA MA1 (clk, MRload, rst, Instr[5:0], MAddr);
	JMPmux JM1 (PCpls1, Instr[5:0], PCadd, PCsub, JMPsel, PCmux);
	addrel AR1 (PCnext, InstReg, PCadd);
	subrel SR1 (PCnext, InstReg, PCsub);
	incr I1 (PCnext, PCpls1);
	PC PC1 (clk, PCload, rst, PCmux, PCnext);
	MemInstmux MIM1 (PCnext, MAddr, MemInst, Addrsel);
	mem MEM1 (clk, Addrsel, MemWr, Acc, Instr);
	Amux AM1 (shiftout, RFout, Input, Instr, Asel, Amuxout);
	Accumulator ACC1 (clk, rst, Aload, Amuxout, Acc);
	RF RF1 (clk, InstReg[2:0], RFwr, Acc, RFout);
	ALU ALU1 (ALUsel, Acc, RFout, ALUout);
	Shifter SH1 (SHsel, ALUout, shiftout);
	outputReg OR1 (clk, rst, outen, Acc, Output);
	
	nor NOR1(Aeq0, Acc[7], Acc[6], Acc[5], Acc[4], Acc[3], Acc[2], Acc[1], Acc[0]);
	not N1(Apos, Acc[7]);
	
endmodule
