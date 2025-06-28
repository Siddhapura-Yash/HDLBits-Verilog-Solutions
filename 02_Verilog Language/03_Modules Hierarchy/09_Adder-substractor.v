module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [15:0]sum1,sum2;
    wire [31:0]xorr;
    wire cout1;
    assign xorr = {32{sub}} ^ b;
    
    add16 DUT1(.a(a[15:0]),.b(xorr[15:0]),.cin(sub),.sum(sum1),.cout(cout1));
    add16 DUT2(.a(a[31:16]),.b(xorr[31:16]),.cin(cout1),.sum(sum2),.cout());
               
               assign sum = {sum2,sum1};
               
endmodule
