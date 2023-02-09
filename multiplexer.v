module multiplexer(

		input a7,a6,a5,a4,a3,a2,a1,a0,c,sa7,sa6,sa5,sa4,sa3,sa2,sa1,sa0,
		output Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0,cc

);
not not1(sc,c);
assign cc=c;
and and0(b7,a7,sc);
and and1(b6,a6,sc);
and and2(b5,a5,sc);
and and3(b4,a4,sc);
and and4(b3,a3,sc);
and and5(b2,a2,sc);
and and6(b1,a1,sc);
and and7(b0,a0,sc);



and and8(sb7,sa7,c);
and and9(sb6,sa6,c);
and and10(sb5,sa5,c);
and and11(sb4,sa4,c);
and and12(sb3,sa3,c);
and and13(sb2,sa2,c);
and and14(sb1,sa1,c);
and and15(sb0,sa0,c);

or or1(Q7,sb7,b7);
or or2(Q6,sb6,b6);
or or3(Q5,sb5,b5);
or or4(Q4,sb4,b4);
or or5(Q3,sb3,b3);
or or6(Q2,sb2,b2);
or or7(Q1,sb1,b1);
or or8(Q0,sb0,b0);

	
endmodule 