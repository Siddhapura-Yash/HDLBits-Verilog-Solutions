module top_module (
    input clk,
    input reset,
    output shift_ena
);

    reg [2:0] count;

    always @(posedge clk)
        if (reset)
            count <= 0;
        else if (count < 4)
            count <= count + 1;

    assign shift_ena = (count < 4);

endmodule
