//binary to bcd
module BCD(
	input A,B,C,D,
	output a,b,c,d

);
	wire nA,nB,nC,nD;
	not not1(nA,A);
	not not2(nB,B);
	not not3(nC,C);
	not not4(nD,D);
	
	//output a
	wire a1,a2;
	and and1(a1,B,D);
	and and2(a2,B,C);
	or or1(a,a1,a2,A);
	
	//output b
	wire b1,b2;
	and and3(b1,A,D);
	and and4(b2,B,nC,nD);
	or or2(b,b1,b2);
	
	//output3 c
	wire c1,c2,c3;
	and and5(c1,C,D);
	and and6(c2,A,nD);
	and and7(c3,nB,C);
	or or3(c,c1,c2,c3);
	
	//output d
	wire d1,d2,d3;
	and and8(d1,A,nD);
	and and9(d2,nA,nB,D);
	and and10(d3,B,C,nD);
	or or4(d,d1,d2,d3);
	
endmodule                         