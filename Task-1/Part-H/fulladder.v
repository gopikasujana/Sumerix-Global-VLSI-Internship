module fulladder(input fa,fb,fcin,output fs,fc);
assign fs = fa^fb^fcin;
assign fc = (fa&fb) | (fb&fcin) | (fcin&fa);
endmodule
