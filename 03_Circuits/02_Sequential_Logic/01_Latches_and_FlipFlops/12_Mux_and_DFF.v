module top_module (
    input clk,
    input w, R, E, L,
    output reg Q
);
    reg temp,fina;
    always@(*) begin
        if(E)
            temp <= w;
		else
            temp<=Q;
    end
    always@(*) begin
        if(L)
            fina<=R;
        else
            fina<=temp;
    end
    always@(posedge clk) begin
        Q<=fina;
    end
            
endmodule
