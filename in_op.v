module in_op(
	input memo,INP7,INP6,INP5,INP4,INP3,INP2,INP1,INP0,
	output OUT15,OUT14,OUT13,OUT12,OUT11,OUT10,OUT9,OUT8,OUT7,OUT6,OUT5,OUT4,OUT3,OUT2,OUT1,OUT0

);

not not1(ope,memo);
and and1(OUT7,memo,INP7);
and and2(OUT6,memo,INP6);
and and3(OUT5,memo,INP5);
and and4(OUT4,memo,INP4);
and and5(OUT3,memo,INP3);
and and6(OUT2,memo,INP2);
and and7(OUT1,memo,INP1);
and and8(OUT0,memo,INP0);
and and9(OUT15,ope,INP7);
and and10(OUT14,ope,INP6);
and and11(OUT13,ope,INP5);
and and12(OUT12,ope,INP4);
and and13(OUT11,ope,INP3);
and and14(OUT10,ope,INP2);
and and15(OUT9,ope,INP1);
and and16(OUT8,ope,INP0);

endmodule
