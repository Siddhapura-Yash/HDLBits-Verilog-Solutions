module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
    assign {cout[0],sum[0]} = a[0]+b[0]+cin;
    genvar i;
	generate begin
        for (i=1; i<=99; i++) begin : anyname
            fa DUT (.a(a[i]),.b(b[i]),.cin(cout[i-1]),.sum(sum[i]),.carry(cout[i]));
        end : anyname
   		end
        endgenerate
endmodule

module fa (input a,b,cin,output sum,carry);
    assign {carry,sum} = a+b+cin;
endmodule
