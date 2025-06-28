module top_module( 
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum );
    
    wire c1,c2;
    fa DUT1(.a(a[0]),.b(b[0]),.cin(cin),.sum(sum[0]),.carry(cout[0]));
    fa DUT2(.a(a[1]),.b(b[1]),.cin(cout[0]),.sum(sum[1]),.carry(cout[1]));
    fa DUT3(.a(a[2]),.b(b[2]),.cin(cout[1]),.sum(sum[2]),.carry(cout[2]));
    
endmodule

module fa (input a,b,cin , output sum,carry);
    assign {carry,sum} = a+b+cin;
endmodule
