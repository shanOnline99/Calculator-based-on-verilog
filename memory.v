module memory(
	input en,reset,A7,A6,A5,A4,A3,A2,A1,A0,
	output Out7,Out6,Out5,Out4,Out3,Out2,Out1,Out0

);

d_latch D1(A7,en,reset,Out7);
d_latch D2(A6,en,reset,Out6);
d_latch D3(A5,en,reset,Out5);
d_latch D4(A4,en,reset,Out4);
d_latch D5(A3,en,reset,Out3);
d_latch D6(A2,en,reset,Out2);
d_latch D7(A1,en,reset,Out1);
d_latch D8(A0,en,reset,Out0);
 
endmodule 