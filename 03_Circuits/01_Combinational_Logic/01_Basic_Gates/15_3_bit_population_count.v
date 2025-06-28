module top_module( 
    input [2:0] in,
    output [1:0] out );
    integer count;
    always@(*) begin
        count = 0;
        for (int i=0; i<3; i++) 
            if(in[i])
                count = count + 1;
    end
    assign out = count;
endmodule
