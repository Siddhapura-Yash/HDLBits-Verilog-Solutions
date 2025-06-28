module top_module(
    input clk,
    input reset,    // Active-high synchronous reset to 32'h1
    output [31:0] q
); 
    
    always@(posedge clk)
        if(reset)
            q<=32'h1;
    else begin
        for(int i=1;i<=32;i=i+1) 
            if(i==32)
                    q[i-1] <= q[0]^1'b0;
        else if(i==22 || i==2 || i==1)
            q[i-1]<=q[i]^q[0];
                else 
                    q[i-1] <= q[i];
         end
          
endmodule