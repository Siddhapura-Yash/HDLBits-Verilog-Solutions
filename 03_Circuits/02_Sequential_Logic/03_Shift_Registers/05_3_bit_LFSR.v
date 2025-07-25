module top_module (
	input [2:0] SW,      // R
	input [1:0] KEY,     // L and clk
	output [2:0] LEDR);  // Q
    
    sub DUT1 (.clk(KEY[0]),.L(KEY[1]),.r_in(SW[0]),.q_in(LEDR[2]),.Q(LEDR[0]));
    sub DUT2 (.clk(KEY[0]),.L(KEY[1]),.r_in(SW[1]),.q_in(LEDR[0]),.Q(LEDR[1]));
    sub DUT3 (.clk(KEY[0]),.L(KEY[1]),.r_in(SW[2]),.q_in(LEDR[1]^LEDR[2]),.Q(LEDR[2]));


endmodule

module sub (
	input clk,
	input L,
	input r_in,
	input q_in,
	output reg Q);
    always@(posedge clk) begin
        if(L)
            Q<=r_in;
        else
            Q<=q_in;
    end
endmodule
