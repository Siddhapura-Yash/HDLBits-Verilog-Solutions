module top_module(
    input clk,
    input reset,    // Synchronous reset to OFF
    input j,
    input k,
    output out); //  

    parameter OFF=0, ON=1; 
    reg state, next_state;

    always @(*) begin
        // S-tate transition logic
        next_state <= ~k&state | j&~state;
    end

    always @(posedge clk) begin
        if(reset)
            state <= OFF;
        else
            state <= next_state;
        // State flip-flops with synchronous reset
    end

    // Output logic
    // assign out = (state == ...);
    assign out = state;

endmodule
