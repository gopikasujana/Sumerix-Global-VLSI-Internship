module bit4rippleadder(input [3:0]a,b,input cin, output [3:0]s,output carry);
wire [3:1]c;
fulladder1 f1(a[0],b[0],cin,s[0],c[1]);
fulladder1 f2(a[1],b[1],c[1],s[1],c[2]);
fulladder1 f3(a[2],b[2],c[2],s[2],c[3]);
fulladder1 f4(a[3],b[3],c[3],s[3],carry);
endmodule
module fulladder1(input a,b,c,output sum,carry);
assign sum = a^b^c;
assign carry = (a&b)|(b&c)|(c&a);
endmodule