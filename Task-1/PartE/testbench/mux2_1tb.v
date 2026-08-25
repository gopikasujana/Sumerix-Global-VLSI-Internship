`timescale 1ns/1ps

module mux2_1tb;
reg [1:0]i;
reg s;
wire y;
mux2_1 uut(.i(i),.s(s),.y(y));
initial
begin 
$dumpfile("mux2_1.vcd");
$dumpvars(0,mux2_1tb);
s =0;i = 2'b00;
#5 s=0;i=2'b01;
#5 s=0;i=2'b10;
#5 s=0;i=2'b11;
#5 s=1;i=2'b00;
#5 s=1;i=2'b01;
#5 s=1;i=2'b10;
#5 s=1;i=2'b11;

#10 $finish;
end

endmodule

    

