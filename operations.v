module operations(
   
	input A,B,C,D,IN15,IN14,IN13,IN12,IN11,IN10,IN9,IN8,IN7,IN6,IN5,IN4,IN3,IN2,IN1,IN0,
	output OUT7,OUT6,OUT5,OUT4,OUT3,OUT2,OUT1,OUT0

);


not not1(notA,A);
and and1(AORS,notA,B);
or or1(AANDS,B,A);

Adder_subtractor AS1(AORS,IN8,IN9,IN10,IN11,IN12,IN13,IN14,IN15,IN0,IN1,IN2,IN3,IN4,IN5,IN6,IN7,o0,o1,o2,o3,o4,o5,o6,o7);
and  and0(oas7,AANDS,o7); 
and  and2(oas6,AANDS,o6); 
and  and3(oas5,AANDS,o5);
and  and4(oas4,AANDS,o4); 
and  and5(oas3,AANDS,o3); 
and  and6(oas2,AANDS,o2); 
and  and7(oas1,AANDS,o1); 
and  and8(oas0,AANDS,o0);  

Multplier Mul(IN15,IN14,IN13,IN12,IN11,IN10,IN9,IN8,IN7,IN6,IN5,IN4,IN3,IN2,IN1,IN0,o14,o13,o12,o11,o10,o9,o8,o23,o22,o21,o20,o19,o18,o17,o16);
and  and9(om7,D,o23); 
and  and10(om6,D,o22); 
and  and11(om5,D,o21);
and  and12(om4,D,o20); 
and  and13(om3,D,o19); 
and  and14(om2,D,o18); 
and  and15(om1,D,o17); 
and  and16(om0,D,o16); 



divider div(IN15,IN14,IN13,IN12,IN11,IN10,IN9,IN8,IN7,IN6,IN5,IN4,IN3,IN2,IN1,IN0,o33,o32,o31,o30,o29,o28,o27,o26);
and  and17(od7,C,o33); 
and  and18(od6,C,o32); 
and  and19(od5,C,o31);
and  and20(od4,C,o30); 
and  and21(od3,C,o29); 
and  and22(od2,C,o28); 
and  and23(od1,C,o27); 
and  and24(od0,C,o26); 


or or2(OUT7,oas7,om7,od7);
or or3(OUT6,oas6,om6,od6);
or or4(OUT5,oas5,om5,od5);
or or5(OUT4,oas4,om4,od4);
or or6(OUT3,oas3,om3,od3);
or or7(OUT2,oas2,om2,od2);
or or8(OUT1,oas1,om1,od1);
or or9(OUT0,oas0,om0,od0);

endmodule
