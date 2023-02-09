module Multplier(

	input A7,A6,A5,A4,A3,A2,A1,A0,B7,B6,B5,B4,B3,B2,B1,B0,
	output S14,S13,S12,S11,S10,S9,S8,s7,S6,S5,S4,S3,S2,S1,S0
	
);

//a adder
//B0*
and a_AND1 (S0,B0,A0);
and a_AND2 (n0,B0,A1);
and a_AND3 (n1,B0,A2);
and a_AND4 (n2,B0,A3);
and a_AND5 (n3,B0,A4);
and a_AND6 (n4,B0,A5);
and a_AND7 (n5,B0,A6);
and a_AND8 (n6,B0,A7);

//get inputs by B1*

and a_AND9 (a0,B1,A0);
and a_AND10 (a1,B1,A1);
and a_AND11 (a2,B1,A2);
and a_AND12 (a3,B1,A3);
and a_AND13 (a4,B1,A4);
and a_AND14 (a5,B1,A5);
and a_AND15 (a6,B1,A6);
and a_AND16 (a7,B1,A7);

Adder_subtractor a_adder(0,n0,n1,n2,n3,n4,n5,n6,0,a0,a1,a2,a3,a4,a5,a6,a7,S1,sa1,sa2,sa3,sa4,sa5,sa6,sa7);

//b adder
//get inputs by B2*
and b_AND1 (b0,B2,A0);
and b_AND2 (b1,B2,A1);
and b_AND3 (b2,B2,A2);
and b_AND4 (b3,B2,A3);
and b_AND5 (b4,B2,A4);
and b_AND6 (b5,B2,A5);
and b_AND7 (b6,B2,A6);
and b_AND8 (b7,B2,A7);

Adder_subtractor b_adder(0,sa1,sa2,sa3,sa4,sa5,sa6,sa7,0,b0,b1,b2,b3,b4,b5,b6,b7,S2,sb1,sb2,sb3,sb4,sb5,sb6,sb7);

//c adder
//get inputs by B3*

and c_AND1 (c0,B3,A0);
and c_AND2 (c1,B3,A1);
and c_AND3 (c2,B3,A2);
and c_AND4 (c3,B3,A3);
and c_AND5 (c4,B3,A4);
and c_AND6 (c5,B3,A5);
and c_AND7 (c6,B3,A6);
and c_AND8 (c7,B3,A7);

Adder_subtractor c_adder(0,sb1,sb2,sb3,sb4,sb5,sb6,sb7,0,c0,c1,c2,c3,c4,c5,c6,c7,S3,sc1,sc2,sc3,sc4,sc5,sc6,sc7);

//d adder
//get inputs by B4*

and d_AND1 (d0,B4,A0);
and d_AND2 (d1,B4,A1);
and d_AND3 (d2,B4,A2);
and d_AND4 (d3,B4,A3);
and d_AND5 (d4,B4,A4);
and d_AND6 (d5,B4,A5);
and d_AND7 (d6,B4,A6);
and d_AND8 (d7,B4,A7);


Adder_subtractor d_adder(0,sc1,sc2,sc3,sc4,sc5,sc6,sc7,0,d0,d1,d2,d3,d4,d5,d6,d7,S4,sd1,sd2,sd3,sd4,sd5,sd6,sd7);

//e adder 
//get inputs by B5*

and e_AND1 (e0,B5,A0);
and e_AND2 (e1,B5,A1);
and e_AND3 (e2,B5,A2);
and e_AND4 (e3,B5,A3);
and e_AND5 (e4,B5,A4);
and e_AND6 (e5,B5,A5);
and e_AND7 (e6,B5,A6);
and e_AND8 (e7,B5,A7);

Adder_subtractor e_adder(0,sd1,sd2,sd3,sd4,sd5,sd6,sd7,0,e0,e1,e2,e3,e4,e5,e6,e7,S5,se1,se2,se3,se4,se5,se6,se7);

//f adder
//get inputs by B6*

and f_AND1 (f0,B6,A0);
and f_AND2 (f1,B6,A1);
and f_AND3 (f2,B6,A2);
and f_AND4 (f3,B6,A3);
and f_AND5 (f4,B6,A4);
and f_AND6 (f5,B6,A5);
and f_AND7 (f6,B6,A6);
and f_AND8 (f7,B6,A7);

Adder_subtractor f_adder(0,se1,se2,se3,se4,se5,se6,se7,0,f0,f1,f2,f3,f4,f5,f6,f7,S6,sf1,sf2,sf3,sf4,sf5,sf6,sf7);

//g adder 
//get inputs by B7*

and g_AND1 (g0,B7,A0);
and g_AND2 (g1,B7,A1);
and g_AND3 (g2,B7,A2);
and g_AND4 (g3,B7,A3);
and g_AND5 (g4,B7,A4);
and g_AND6 (g5,B7,A5);
and g_AND7 (g6,B7,A6);
and g_AND8 (g7,B7,A7);

Adder_subtractor g_adder(0,sf1,sf2,sf3,sf4,sf5,sf6,sf7,0,g0,g1,g2,g3,g4,g5,g6,g7,S7,S8,S9,S10,S11,S12,S13,S14);



or or1(s7,S7,S8,S9,S10,S11,S12,S13,S14);

endmodule





