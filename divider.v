module divider(

		input A7,A6,A5,A4,A3,A2,A1,A0,B7,B6,B5,B4,B3,B2,B1,B0,
		output Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0

);


//a
Adder_subtractor adder_a(1,A7,0,0,0,0,0,0,0,B0,B1,B2,B3,B4,B5,B6,B7,sa0,sa1,sa2,sa3,sa4,sa5,sa6,sa7,C0);
multiplexer mux_a(0,0,0,0,0,0,0,A7,C0,sa7,sa6,sa5,sa4,sa3,sa2,sa1,sa0,ma7,ma6,ma5,ma4,ma3,ma2,ma1,ma0,Q7);

//b
Adder_subtractor adder_b(1,A6,ma0,ma1,ma2,ma3,ma4,ma5,ma6,B0,B1,B2,B3,B4,B5,B6,B7,sb0,sb1,sb2,sb3,sb4,sb5,sb6,sb7,C1);
multiplexer mux_b(ma6,ma5,ma4,ma3,ma2,ma1,ma0,A6,C1,sb7,sb6,sb5,sb4,sb3,sb2,sb1,sb0,mb7,mb6,mb5,mb4,mb3,mb2,mb1,mb0,Q6);


//c
Adder_subtractor adder_c(1,A5,mb0,mb1,mb2,mb3,mb4,mb5,mb6,B0,B1,B2,B3,B4,B5,B6,B7,sc0,sc1,sc2,sc3,sc4,sc5,sc6,sc7,C2);
multiplexer mux_c(mb6,mb5,mb4,mb3,mb2,mb1,mb0,A5,C2,sc7,sc6,sc5,sc4,sc3,sc2,sc1,sc0,mc7,mc6,mc5,mc4,mc3,mc2,mc1,mc0,Q5);


//d
Adder_subtractor adder_d(1,A4,mc0,mc1,mc2,mc3,mc4,mc5,mc6,B0,B1,B2,B3,B4,B5,B6,B7,sd0,sd1,sd2,sd3,sd4,sd5,sd6,sd7,C3);
multiplexer mux_d(mc6,mc5,mc4,mc3,mc2,mc1,mc0,A4,C3,sd7,sd6,sd5,sd4,sd3,sd2,sd1,sd0,md7,md6,md5,md4,md3,md2,md1,md0,Q4);


//e
Adder_subtractor adder_e(1,A3,md0,md1,md2,md3,md4,md5,md6,B0,B1,B2,B3,B4,B5,B6,B7,se0,se1,se2,se3,se4,se5,se6,se7,C4);
multiplexer mux_e(md6,md5,md4,md3,md2,md1,md0,A3,C4,se7,se6,se5,se4,se3,se2,se1,se0,me7,me6,me5,me4,me3,me2,me1,me0,Q3);


//f
Adder_subtractor adder_f(1,A2,me0,me1,me2,me3,me4,me5,me6,B0,B1,B2,B3,B4,B5,B6,B7,sf0,sf1,sf2,sf3,sf4,sf5,sf6,sf7,C5);
multiplexer mux_f(me6,me5,me4,me3,me2,me1,me0,A2,C5,sf7,sf6,sf5,sf4,sf3,sf2,sf1,sf0,mf7,mf6,mf5,mf4,mf3,mf2,mf1,mf0,Q2);


//g
Adder_subtractor adder_g(1,A1,mf0,mf1,mf2,mf3,mf4,mf5,mf6,B0,B1,B2,B3,B4,B5,B6,B7,sg0,sg1,sg2,sg3,sg4,sg5,sg6,sg7,C6);
multiplexer mux_g(mf6,mf5,mf4,mf3,mf2,mf1,mf0,A1,C6,sg7,sg6,sg5,sg4,sg3,sg2,sg1,sg0,mg7,mg6,mg5,mg4,mg3,mg2,mg1,mg0,Q1);


//h
Adder_subtractor adder_h(1,A0,mg0,mg1,mg2,mg3,mg4,mg5,mg6,B0,B1,B2,B3,B4,B5,B6,B7,sh0,sh1,sh2,sh3,sh4,sh5,sh6,sh7,C7);
multiplexer mux_h(mg6,mg5,mg4,mg3,mg2,mg1,mg0,A0,C7,sh7,sh6,sh5,sh4,sh3,sh2,sh1,sh0,mh7,mh6,mh5,mh4,mh3,mh2,mh1,mh0,Q0);



	
endmodule 