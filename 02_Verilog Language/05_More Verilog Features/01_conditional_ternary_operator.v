module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//
    wire [7:0]a1,a2;
    
   assign a1 = a<b ? a : b;
    assign a2 = c<d ? c : d;
    
    assign min = a1<a2? a1 : a2;

endmodule
