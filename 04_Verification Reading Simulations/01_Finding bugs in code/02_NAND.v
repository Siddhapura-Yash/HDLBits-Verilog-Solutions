module top_module (input a, input b, input c, output out);//
	wire temp;
    andgate inst1 (.a(a), .b(b), .c(c), .out(temp),.d(1),.e(1) );
    assign out = ~temp;
   

endmodule
