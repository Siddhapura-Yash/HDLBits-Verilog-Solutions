module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
    
    wire cout1,cout2,cout3;
    
     fa DUT1(.a(x[0]),.b(y[0]),.cin(1'b0),.sum(sum[0]),.carry(cout1));
    fa DUT2(.a(x[1]),.b(y[1]),.cin(cout1),.sum(sum[1]),.carry(cout2));
    fa DUT3(.a(x[2]),.b(y[2]),.cin(cout2),.sum(sum[2]),.carry(cout3));
    fa DUT4(.a(x[3]),.b(y[3]),.cin(cout3),.sum(sum[3]),.carry(sum[4]));
    

endmodule

module fa (input a,b,cin , output sum,carry);
    assign {carry,sum} = a+b+cin;
endmodule
