module top_module (
    input clk,
    input d,
    output q
);
    reg s1,s2;
    always@(posedge clk)
        s1<=d;
    always@(negedge clk)
        s2<=d;
    assign q = clk? s1:s2;
    
endmodule
