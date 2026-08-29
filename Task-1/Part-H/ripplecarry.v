module ripplecarry(input [3:0]ra,rb,input rcin, output [3:0]rs,output rc);
wire [3:1]c;
fa f1(ra[0],rb[0],rcin,rs[0],c[1]);
fa f2(ra[1],rb[1],c[1],rs[1],c[2]);
fa f3(ra[2],rb[2],c[2],rs[2],c[3]);
fa f4(ra[3],rb[3],c[3],rs[3],rc);
endmodule
module fa(input a,fb,fcin,output fs,fc);
assign fs = a^fb^fcin;
assign fc = (a&fb) | (fb&fcin) | (fcin&a);
endmodule


