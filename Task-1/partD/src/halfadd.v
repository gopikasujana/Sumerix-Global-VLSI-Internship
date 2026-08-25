module halfadd(input a,b,output  reg sum,carry);
//assign sum = a^b;
//assign carry = a&b;
always@(*)
   begin
      sum = a^b;
      carry = a&b;
end
endmodule
