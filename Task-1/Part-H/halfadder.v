module halfadder(input ha,hb,output  hs,hc);
assign hs = ha^hb;
assign hc = ha&hb;

endmodule