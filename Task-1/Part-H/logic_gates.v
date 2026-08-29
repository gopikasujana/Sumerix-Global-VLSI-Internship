module logic_gates(input a,b,c, output And,Or,Not_a,Nor,Nand,Xor,Xnor);
assign And = a & b & c;
assign Or = a | b | c;
assign Not_a = ~a;
assign Nor = ~(a|b|c);
assign Nand = ~(a&b&c);
assign Xor = a ^b^c;
assign Xnor = ~(a^b^c);
endmodule 