module top_module (
    input clk,
    input slowena,
    input reset,
    output [3:0] q);
    always@(posedge clk)
        begin
            if(reset)
                q<=0;
            else if(q<9 && slowena)
                q<=q+1'b1;
            else if(q==9 && slowena)
                q<=0;
        end
    
endmodule
