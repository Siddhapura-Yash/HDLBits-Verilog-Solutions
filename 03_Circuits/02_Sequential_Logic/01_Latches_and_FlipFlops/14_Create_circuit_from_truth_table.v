module top_module (
    input clk,
    input j,
    input k,
    output Q); 
reg q;
    always@(posedge clk) begin
        case({j,k})
            2'b00 :q = Q;
            2'b01 :q = 0;
            2'b10 :q = 1;
            2'b11 :q = ~Q;
        endcase
    end
assign Q = q;
endmodule
