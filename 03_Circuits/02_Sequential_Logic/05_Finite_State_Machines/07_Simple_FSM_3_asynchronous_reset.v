module top_module(
    input clk,
    input in,
    input areset,
    output out); //
	
     parameter A=0, B=1, C=2, D=3;
    reg [1:0] state, next_state;
    // State transition logic
    always @(posedge clk or posedge areset) begin
        if (areset)
            state <= A;
        else
            state <= next_state;
    end
    // State flip-flops with asynchronous reset
always @(*) begin
        case (state)
            A: next_state = (in == 0) ? A : B;
            B: next_state = (in == 0) ? C : B;
            C: next_state = (in == 0) ? A : D;
            D: next_state = (in == 0) ? C : B;
            default: next_state = A;  // default safety
        endcase
    end
    // Output logic
assign out = (state == D);
endmodule
