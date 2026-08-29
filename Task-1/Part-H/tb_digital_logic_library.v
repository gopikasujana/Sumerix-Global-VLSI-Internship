module tb_digital_logic_library;
//for logic gates
reg a;
reg b;
reg c;
wire And,Or,Not_a,Nor,Nand,Xor,Xnor;
logic_gates dut1(a,b,c,And,Or,Not_a,Nor,Nand,Xor,Xnor);
//halfadder
reg ha;
reg hb;
wire hs;
wire hc;
halfadder dut2(ha,hb,hs,hc);
//for full adder
reg fa,fb;
reg fcin;
wire fs,fc;
fulladder dut3(fa,fb,fcin,fs,fc);
// mux4_1
reg [3:0]i;
reg [1:0]s;
wire y;
mux4_1 dut4(i,s,y);
//ripplecarry
reg [3:0]ra,rb;
reg rcin;
wire [3:0]rs;
wire rc;
ripplecarry dut5(ra,rb,rcin,rs,rc);
//
initial
begin
   $dumpfile("digital_logic_library.vcd");
   $dumpvars(0,tb_digital_logic_library);
   //logic gates
   $display("==============================================");
   $display(" LOGIC GATES / ADDER TEST");
   $display("==============================================");
   $monitor(" A = %b B = %b c = %b  And = %b , Or = %b Not_a = %b Nor = %b Nand = %b Xor = %b Xnor = %b",a,b,c,And,Or,Not_a,Nor,Nand,Xor,Xnor);
   a = 0;b=0;c =0;
   #10 a =0;b=0; c=1;
   #10 a= 0;b=1;c=0;
   #10 a=0;b=1;c=1;
   #10 a=1;b=0;c=0;
   #10 a=1;b=0;c=1;
   #10 a=1;b=1;c=0;
   #10 a=1;b=1;c=1;
   $display("");
   $display("==============================================");
   $display(" HAlf Adder TEST");
   $display("==============================================");
   $monitor(" A = %b  B =%b Sum = %b Carry =%b",ha,hb,hs,hc);
   #10 ha=0;hb=0;
   #10 ha =0;hb=1;
   #10 ha=1;hb=0;
   #10 ha=1;hb=1;
   $display("==============================================");
   $display(" Full Adder TEST");
   $display("==============================================");
   $monitor("A =%b B =%b Cin =%b Sum =%b Carry =%b",fa,fb,fcin,fs,fc);
   #10 fa =0;fb=0;fcin=0;
   #10 fa =0;fb=0;fcin =1;
   #10 fa =0;fb=1;fcin=0;
   #10 fa =0;fb=1;fcin=1;
   #10 fa =1;fb=0;fcin=0;
   #10 fa =1;fb=0;fcin=1;
   #10 fa =1; fb=1;fcin=0;
   #10 fa =1;fb=1;fcin =1;
    $display("==============================================");
   $display(" Multiplexer TEST");
   $display("==============================================");
   $monitor("I = %b ,s=%b,Y =%b",i,s,y);
   $monitor("I = %b ,s=%b,Y =%b",i,s,y);
#10 i = 4'b0001; s=2'b00;   // expect y = i[0] = 1
#10 i = 4'b0010; s=2'b00;   // expect y = i[0] = 0
#10 i = 4'b0010; s=2'b01;   // expect y = i[1] = 1
#10 i = 4'b0100; s=2'b01;   // expect y = i[1] = 0
#10 i = 4'b0100; s=2'b10;   // expect y = i[2] = 1
#10 i = 4'b1000; s=2'b10;   // expect y = i[2] = 0
#10 i = 4'b1000; s=2'b11;   // expect y = i[3] = 1
#10 i = 4'b0111; s=2'b11;   // expect y = i[3] = 0
  // let last $monitor fire before moving on
      $display("==============================================");
   $display(" ripple carry adder TEST");
   $display("==============================================");
   $monitor("A  =%b B =%b Cin =%b Sum =%b carry =%b",ra,rb,rcin,rs,rc);
   #10 ra = 4'b0000; rb=4'b0000; rcin = 0;
    #10 ra =4'b0000; rb = 4'b0001; rcin =0;
    #10 ra = 4'b0001; rb =4'b0000; rcin =0;
    #10 ra=4'b0001; rb =4'b0001; rcin =0;
    #10 ra = 4'b1000; rb=4'b1000; rcin = 0;
    #10 ra  = 4'b1001; rb=4'b1000; rcin =0;
    #10 ra = 4'b1000; rb=4'b1001; rcin =0;
    #10 ra = 4'b1001; rb =4'b1001; rcin =0;
    #10 ra = 4'b0000; rb=4'b0000; rcin = 1;
    #10 ra =4'b0000; rb = 4'b0001; rcin =1;
    #10 ra = 4'b0001; rb =4'b0000; rcin =1;
    #10 ra=4'b0001; rb =4'b0001; rcin =1;
    #10 ra = 4'b1000; rb=4'b1000; rcin = 1;
    #10 ra  = 4'b1001; rb=4'b1000; rcin =1;
    #10 ra = 4'b1000; rb=4'b1001; rcin =1;
    #10 ra = 4'b1001; rb =4'b1001; rcin =1;
    #10 $finish;
end
endmodule