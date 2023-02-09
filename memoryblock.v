module memoryblock(
	input En,Key,reset,I7,I6,I5,I4,I3,I2,I1,I0,
	output Out15,Out14,Out13,Out12,Out11,Out10,Out9,Out8,Out7,Out6,Out5,Out4,Out3,Out2,Out1,Out0

);

not not1(set,Key);
and and1(en,En,set);
memory m1(en,reset,I7,I6,I5,I4,I3,I2,I1,I0,Out7,Out6,Out5,Out4,Out3,Out2,Out1,Out0);

not not2(notEn,En);
and and2(enbar,notEn,set);
memory m2(enbar,reset,I7,I6,I5,I4,I3,I2,I1,I0,Out15,Out14,Out13,Out12,Out11,Out10,Out9,Out8);

endmodule 