module xor_gatetb;
reg a,b,c;
wire y;
xor_gate dut(a,b,c,y);
initial
begin
  $dumpfile("xor.vcd");
  $dumpvars(0,xor_gatetb);
  $monitor("A =%b B = %b C =%b Out = %b",a,b,c,y);
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
