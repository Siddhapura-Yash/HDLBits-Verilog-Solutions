module top_module( 
    input [254:0] in,
    output [7:0] out );
    
    reg [7:0]count;
    
    always@(*) begin
        count = 8'b0;
        for (int i = 0; i <=254 ; i++)
                count = count + in[i];
    end
    assign out = count;

endmodule