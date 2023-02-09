module Adder_subtractor(
	input OP,A0,A1,A2,A3,A4,A5,A6,A7,B0,B1,B2,B3,B4,B5,B6,B7,
	output S0,S1,S2,S3,S4,S5,S6,S7,C

);
   wire xo0,xo1,xo2,xo3,xo4,xo5,xo6,xo7;
	xor xor1(xo0,OP,B0);
	xor xor2(xo1,OP,B1);
	xor xor3(xo2,OP,B2);
	xor xor4(xo3,OP,B3);
	xor xor5(xo4,OP,B4);
	xor xor6(xo5,OP,B5);
	xor xor7(xo6,OP,B6);
	xor xor8(xo7,OP,B7);

//1ST ADDER
wire C0;
ADDER ADD1(A0,xo0,OP,S0,C0);

//2ND ADDER
wire C1;
ADDER ADD2(A1,xo1,C0,S1,C1);

//3RD ADDER
wire C2;
ADDER ADD3(A2,xo2,C1,S2,C2);

//4TH ADDER
wire C3;
ADDER ADD4(A3,xo3,C2,S3,C3);

//5TH ADDER
wire C4;
ADDER ADD5(A4,xo4,C3,S4,C4);

//6TH ADDER
wire C5;
ADDER ADD6(A5,xo5,C4,S5,C5);

//7TH ADDER
wire C6;
ADDER ADD7(A6,xo6,C5,S6,C6);

//8TH ADDER
wire C7;
ADDER ADD8(A7,xo7,C6,S7,C7);
assign C = C7;

endmodule 