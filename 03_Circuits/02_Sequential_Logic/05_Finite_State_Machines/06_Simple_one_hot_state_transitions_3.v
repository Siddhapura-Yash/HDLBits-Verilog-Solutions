module top_module(
    input in,
    input [3:0] state,
    output [3:0] next_state,
    output out); //

    parameter A=0, B=1, C=2, D=3;

    // State transition logic: Derive an equation for each state flip-flop.
    assign next_state[A] = ~in&state[A] | ~in&state[C];
    assign next_state[B] = in&state[A] | in&state[B] | in&state[D];
    assign next_state[C] = ~in&state[B] | ~in&state[D];
    assign next_state[D] = in&state[C];

    // Output logic: 
    assign out = (state[D] == 1)? 1 : 0;

endmodule
