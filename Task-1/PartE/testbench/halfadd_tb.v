module halfadd_tb;
reg a,b;
wire sum,carry;
halfadd dut(a,b,sum,carry);
initial
   begin
      {a,b}=0;
      $dumpfile("halfadd.vcd");
      $dumpvars(0,halfadd_tb);
      $monitor($time,"a= %b,b=%b,sum = %b,carry= %b",a,b,sum,carry);
      a= 0;
      b=0;
      #5;
      a =0;
      b=1;
      #5;
      a=1;
      b=0;
      #5;
      a=1;
      b=1;
      #5;
      $finish;
end
endmodule