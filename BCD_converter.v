//binary to bcd
module BCD_converter(
	input inp7,inp6,inp5,inp4,inp3,inp2,inp1,inp0,
	output FOUT7,FOUT6,FOUT5,FOUT4,FOUT3,FOUT2,FOUT1,FOUT0

);


//a binary_to_bcd
wire aout0,aout1,aout2,aout3;
BCD BCDa(0,inp7,inp6,inp5,aout3,aout2,aout1,aout0);

//b binary_to_bcd
wire bout0,bout1,bout2,bout3;
BCD BCDb(aout2,aout1,aout0,inp4,bout3,bout2,bout1,bout0);

//c binary_to_bcd
wire cout0,cout1,cout2,cout3;
BCD BCDc(bout2,bout1,bout0,inp3,cout3,cout2,cout1,cout0);

//d binary_to_bcd
wire dout0,dout1,dout2,dout3;
BCD BCDd(cout2,cout1,cout0,inp2,dout3,dout2,dout1,dout0);

//e binary_to_bcd
wire eout0,eout1,eout2,eout3;
BCD BCDe(dout2,dout1,dout0,inp1,eout3,eout2,eout1,eout0);

//f binary_to_bcd
wire fout0,fout1,fout2,fout3;
BCD BCDf(0,aout3,bout3,cout3,fout3,fout2,fout1,fout0);

//g binary_to_bcd
wire gout0,gout1,gout2,gout3;
BCD BCDg(fout2,fout1,fout0,dout3,gout3,gout2,gout1,gout0);

assign out9 = fout3;
assign out8 = gout3;
assign out7 = gout2;
assign out6 = gout1;
assign out5 = gout0;
assign out4 = eout3;
assign out3 = eout2;
assign out2 = eout1;
assign out1 = eout0;
assign out0 = inp0;
or or1(xtra,out9,out8);
or or2(FOUT7,xtra,out7);
or or3(FOUT6,xtra,out6);
or or4(FOUT5,xtra,out5);
or or5(FOUT4,xtra,out4);
or or6(FOUT3,xtra,out3);
or or7(FOUT2,xtra,out2);
or or8(FOUT1,xtra,out1);
or or9(FOUT0,xtra,out0);

endmodule 