module ADDER(
input A,B,Z,
output s,c

);

	wire AandB,AxorB,AxorBandZ,carry,AxorBxorZ;
   and and1(AandB,A,B);
   xor xor1(AxorB,A,B);
	and and2(AxorBandZ,AxorB,Z);
	or or1(carry,AandB,AxorBandZ);
	xor xor2(AxorBxorZ,A,B,Z);
	assign c = carry;
	assign s = AxorBxorZ;
	
endmodule 