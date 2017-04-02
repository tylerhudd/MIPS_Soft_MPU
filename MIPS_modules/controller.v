module controller
	(
	input Aeq0, Apos, clkin, start, restart,
	input [7:0] IR,
	
	output reg IRload, MRload, PCload, MemInst, MemWr,
		Aload, RFwr, outen, rst,
	output reg [1:0] JMPsel, Asel, SHsel,
	output reg [2:0] ALUsel,
	output reg stop
	);
	
	reg [2:0] state, nstate;
	
	initial begin
		stop = 1'b0;
		state = 3'd0;
		nstate = 3'd0;
	end
	
	always @ (*) begin
		IRload = 0; MRload = 0; PCload = 0;
		MemInst = 0; MemWr = 0; Aload = 0;
		RFwr = 0; outen = 0; SHsel = 2'b11; 
		ALUsel = 3'b111;
		case (state)
			0: begin
				rst = 1;
				if (start) begin
					nstate = 3'd1;
					stop = 3'd0;
					rst = 0;
				   end
				end
			1: begin  // fetch cycle 0
				IRload = 1;
				PCload = 1;
				JMPsel = 2'b00;
				nstate = 3'd2;
			end
			2: begin // decode
				case (IR[7:4])
					default: nstate = 3'd1;
					4'b0000: nstate = 3'd1;		// NOP
					4'b0001: begin 				// LDA
						Asel = 2'b01;
						Aload = 1;
						nstate = 3'd1;
						end
					4'b0010: begin 				// STA
						RFwr = 1;
						nstate = 3'd1;
						end
					4'b0011:	begin					// LDM cycle 1
						MRload = 1;
						PCload = 1;
						JMPsel = 2'b00;
						nstate = 3'd3;
						end
					4'b0100: begin					// STM cycle 1
						MRload = 1;
						PCload = 1;
						JMPsel = 2'b00;
						nstate = 3'd4;
						end
					4'b0101: begin					// LDI
						JMPsel = 2'b00;
						PCload = 1;
						Asel = 2'b11;
						Aload = 1;
						nstate = 3'd1;
						end
					4'b1010: begin					// AND
						Asel = 2'b00;
						Aload = 1;
						ALUsel = 3'b000;
						nstate = 3'd1;
						end
					4'b1011: begin					// OR
						Asel = 2'b00;
						Aload = 1;
						ALUsel = 3'b001;
						nstate = 3'd1;
						end
					4'b1100: begin					// ADD
						Asel = 2'b00;
						Aload = 1;
						ALUsel = 3'b010;
						nstate = 3'd1;
						end
					4'b1101: begin					// SUB
						Asel = 2'b00;
						Aload = 1;
						ALUsel = 3'b011;
						nstate = 3'd1;
						end
					4'b1110: begin
						case (IR[3:0])
							4'b0000: begin			// NOT
								Asel = 2'b00;
								Aload = 1;
								ALUsel = 3'b100;
								nstate = 3'd1;
								end
							4'b0001: begin			// INC
								Asel = 2'b00;
								Aload = 1;
								ALUsel = 3'b101;
								nstate = 3'd1;
								end
							4'b0010: begin			// DEC
								Asel = 2'b00;
								Aload = 1;
								ALUsel = 3'b110;
								nstate = 3'd1;
								end
							4'b0011: begin			// SHFL
								Asel = 2'b00;
								Aload = 1;
								SHsel = 2'b00;
								nstate = 3'd1;
								end
							4'b0100: begin			// SHFR
								Asel = 2'b00;
								Aload = 1;
								SHsel = 2'b01;
								nstate = 3'd1;
								end
							4'b0101: begin			// ROTR
								Asel = 2'b00;
								Aload = 1;
								SHsel = 2'b10;
								nstate = 3'd1;
								end
						endcase
					end
					4'b1111: begin
						case (IR[3:0])
							4'b0000: begin			// IN
								Asel = 2'b10;
								Aload = 1;
								end
							4'b0001: begin 		// OUT
								outen = 1;
								end
							4'b0010: stop = 1'b1;	// HALT
						endcase
						nstate = 3'd1;
					end
					4'b0110: begin
						if (IR[3:0] == 4'b0000) begin // JMP
							JMPsel = 2'b01;
							PCload = 1;
							end
						else begin 					// JMPR
							PCload = 1;
							if (IR[3] == 0) JMPsel = 2'b11;
							else JMPsel = 2'b10;
							end
						nstate = 3'd1;
					end
					4'b0111: begin
						if (Aeq0) begin
							PCload = 1;
							if (IR[3:0] == 4'b0000) // JZ
								JMPsel = 2'b01;
							else begin 				// JZR
								if (IR[3] == 0) JMPsel = 2'b11;
								else JMPsel = 2'b10;
							end
						end
						nstate = 3'd1;
					end
					4'b1000: begin
						if (~Aeq0) begin
							PCload = 1;
							if (IR[3:0] == 4'b0000) // JNZ
								JMPsel = 2'b01;
							else begin				// JNZR
								if (IR[3] == 0) JMPsel = 2'b11;
								else JMPsel = 2'b10;
							end
						end
						nstate = 3'd1;
						end
					4'b1001: begin
						if (Apos) begin
							PCload = 1;
							if (IR[3:0] == 4'b0000) // JP
								JMPsel = 2'b01;
							else begin
								if (IR[3] == 0) JMPsel = 2'b11;
								else JMPsel = 2'b10;
								end
							end
						nstate = 3'd1;
						end
				endcase
			end
			3: begin // LDM cycle 2
				MemInst = 1;
				Asel = 2'b11;
				Aload = 1;
				nstate = 3'd1;
				end
			4: begin // STM cycle 2
				MemInst = 1;
				MemWr = 1;
				nstate = 3'd1;
				end
		endcase
	end
	
	always @ (*) begin
		if (restart) begin
			state <= 3'd0;
		end
	end
	
	always @ (negedge clkin) begin
		state <= nstate;
	end
	
endmodule
