module or_tb;
reg a;
reg b;
reg c;
wire y;
or_gate uut(.a(a), .b(b), .c(c), .y(y));
initial
begin
   $dumpfile("or.vcd");
   $dumpvars(0,or_tb);
   $monitor("A = %b B = %b C = %b Out = %b",a,b,c,y);
   a = 0; b=0;c=0;
   #10 a =0;b=0;c=1;
   #10 a =0;b=1;c=0;
   #10 a=0;b=1;c=1;
   #10 a=1;b=0;c=0;
   #10 a =1;b=0;c=1;
   #10 a =1;b=1;c=0;
   #10 a=1;b=1;c=1;
   #10 $finish;
end
endmodule


