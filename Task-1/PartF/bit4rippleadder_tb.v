module bit4rippleadder_tb;
reg [3:0]a,b;
reg cin;
wire [3:0]s;
wire carry;
bit4rippleadder dut(a,b,cin,s,carry);
initial
begin
    $dumpfile("bit4rippleadder.vcd");
    $dumpvars(0,bit4rippleadder_tb);
    $monitor("A =%b B =%b cin =%b Sum = %b carry =%b",a,b,cin,s,carry);
    a = 4'b0000; b=4'b0000; cin = 0;
    #10 a =4'b0000; b = 4'b0001; cin =0;
    #10 a = 4'b0001; b =4'b0000; cin =0;
    #10 a=4'b0001; b =4'b0001; cin =0;
    #10 a = 4'b1000; b=4'b1000; cin = 0;
    #10 a  = 4'b1001; b=4'b1000; cin =0;
    #10 a = 4'b1000; b=4'b1001; cin =0;
    #10 a = 4'b1001; b =4'b1001; cin =0;
    #10 a = 4'b0000; b=4'b0000; cin = 1;
    #10 a =4'b0000; b = 4'b0001; cin =1;
    #10 a = 4'b0001; b =4'b0000; cin =1;
    #10 a=4'b0001; b =4'b0001; cin =1;
    #10 a = 4'b1000; b=4'b1000; cin = 1;
    #10 a  = 4'b1001; b=4'b1000; cin =1;
    #10 a = 4'b1000; b=4'b1001; cin =1;
    #10 a = 4'b1001; b =4'b1001; cin =1;
    #10 $finish;
end
endmodule

