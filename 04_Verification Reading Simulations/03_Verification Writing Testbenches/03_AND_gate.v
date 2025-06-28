module top_module();
    reg [1:0] a;
    wire out_and;
    andgate DUT(.in(a),.out(out_and));
    initial begin
        a[1] = 0;
        a[0] = 0;
        #10
        a[1] = 0;
        a[0] = 1;
        #10
        a[1] = 1;
        a[0] = 0;
        #10
        a[1] = 1;
        a[0] = 1;
    end
        
endmodule
