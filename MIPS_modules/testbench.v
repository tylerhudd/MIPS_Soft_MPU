module testbench();
	reg clk, start, rst;
	reg [7:0] Input;
	wire [7:0] Output;

	reg [7:0] reg0, mem15, mem16, instr, acc, mematAddr;
	reg [5:0] pc, addr;
	reg [2:0] state, nstate;
	reg pcload, clr, ld, aeq0;
	
	integer i;

	top dut(clk, start, rst, Input, Output);
	
		
	initial begin
				
		$display("\t \ttime \tReg0 \t  Mem[15] \t Mem[16] \t Acc \t     PC    \t MemAddr \tInstr");
		$monitor("%d \t%b \t%b \t%b \t%b \t%b \t%b \t%b",
					$time, reg0, mem15, mem16, acc, pc, addr, instr);
	end
	
	initial begin
	
		start = 0;
		Input = 0;
		rst = 1;
		#20;
		start = 1;
		rst = 0;
		#10;
		start = 0;
		
	end
	
	always begin
		clk <= 1;
		#5;
		clk <= 0;
		#5;
	end
	
	always @ (negedge clk) begin
		reg0 <= dut.dp1.RF1.RegFile[0];
		mem15 <= dut.dp1.MEM1.RAM[15];
		mem16 <= dut.dp1.MEM1.RAM[16];
		pc <= dut.dp1.PC1.PCReg;
		instr <= dut.dp1.Instr;
		clr <= dut.dp1.IR1.clr;
		ld <= dut.dp1.IR1.ld;
		state <= dut.c1.state;
		nstate <= dut.c1.nstate;
		acc <= dut.dp1.Acc;
		addr <= dut.dp1.Addrsel;
		mematAddr <= dut.dp1.MEM1.RAM[addr];
		pcload <= dut.dp1.PCload;
		aeq0 <= dut.dp1.Aeq0;
	end

 endmodule
