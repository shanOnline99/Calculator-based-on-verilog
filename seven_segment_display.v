//seven segment display
module seven_segment_display(
	input A,B,C,D,
	output seg_a,seg_b,seg_c,seg_d,seg_e,seg_f,seg_g,segh

);

	wire nA,nB,nC,nD;
	not not1(nA,A);
	not not2(nB,B);
	not not3(nC,C);
	not not4(nD,D);
	
	//seg_a
	wire a1,a2;
	and and1(a1,nA,nB,nC,D);
	and and2(a2,nA,B,nC,nD);
	or or1(seg_a,a1,a2);
	
	//seg_b
	wire b1,b2,b3,b4;
	and and3(b1,A,B);
	and and4(b2,A,C);
	and and5(b3,B,nC,D);
	and and6(b4,B,C,nD);
	or or2(seg_b,b1,b2,b3,b4);
	
	//seg_c
	wire c1,c2,c3;
	and and7(c1,A,B);
	and and8(c2,A,C);
	and and9(c3,nB,C,nD);
	or or3(seg_c,c1,c2,c3);
	
	//seg_d
	wire d1,d2,d3;
	and and10(d1,nA,B,nC,nD);
	and and11(d2,nA,nB,nC,D);
	and and12(d3,nA,B,C,D);
	or or4(seg_d,d1,d2,d3);
	
	//seg_e
	wire e1,e2,e3;
	and and13(e1,nA,D);
	and and14(e2,nA,B,nC);
	and and15(e3,nB,nC,D);
	or or5(seg_e,e1,e2,e3);
	
	
	//seg_f
	wire f1,f2,f3;
	and and16(f1,nA,C,D);
	and and17(f2,nA,nB,D);
	and and18(f3,nA,nB,C);
	or or6(seg_f,f1,f2,f3);
	
	//seg_g
	wire g1,g2;
	and and19(g1,nA,nB,nC);
	and and20(g2,nA,B,C,D);
	or or7(seg_g,g1,g2);
	
	assign segh = 1;
endmodule 