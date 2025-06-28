module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire cout1;
    wire [15:0]sum1,sum2,sum3,sum4;
    add16 DUT1 (.a(a[15:0]),.b(b[15:0]),.cin(1'b0),.cout(cout1),.sum(sum1));
    add16 DUT2 (.a(a[31:16]),.b(b[31:16]),.cin(1'b0),.sum(sum2));
    add16 DUT3 (.a(a[31:16]),.b(b[31:16]),.cin(1'b1),.sum(sum3));
    
    always@(*) begin
        case (cout1)
            1'b0 : sum4 = sum2;
            1'b1 : sum4 = sum3;
        endcase
    end
    assign sum={sum4,sum1};
endmodule
