module top_module (
    input [3:0] SW,
    input [3:0] KEY,
    output [3:0] LEDR
); //9
    MUXDFF DUT1(.clk(KEY[0]),.w(KEY[3]),.R(SW[3]),.E(KEY[1]),.L(KEY[2]),.Q(LEDR[3]));
    MUXDFF DUT2(.clk(KEY[0]),.w(LEDR[3]),.R(SW[2]),.E(KEY[1]),.L(KEY[2]),.Q(LEDR[2]));
    MUXDFF DUT3(.clk(KEY[0]),.w(LEDR[2]),.R(SW[1]),.E(KEY[1]),.L(KEY[2]),.Q(LEDR[1]));
    MUXDFF DUT4(.clk(KEY[0]),.w(LEDR[1]),.R(SW[0]),.E(KEY[1]),.L(KEY[2]),.Q(LEDR[0]));
    
endmodule

module MUXDFF (
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
