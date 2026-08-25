module fulladd_tb;
reg a,b,cin;
wire sum,carry;
fulladd dut(a,b,cin,sum,carry);
initial
   begin
      $dumpfile("fulladd.vcd");
      $dumpvars(0,fulladd_tb);
      $monitor($time,"a= %b,b = %b, cin= %b , sum = %b , carry = %b",a,b,cin,sum,carry);
      #5;
      a = 0; b = 0; cin=0;
      #5;
      a = 0; b=0; cin=1;
      #5;
      a = 0; b=1; cin=0;
      #5;
      a =0; b=1;cin =1;
      #5;
      a =1;b=0; cin=0;
      #5;
      a=1;b=0; cin=1;
      #5;
      a=1;b=1;cin=0;
      #5;
      a= 1;b=1;cin=1;
      #5;
      $finish;
end
endmodule