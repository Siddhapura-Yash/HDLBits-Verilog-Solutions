module top_module (
    input clock,
    input a,
    output p,
    output q );
    reg state1,state2,next_state2;
    
    always@(*) begin
        if(clock)
            p<=a;
    end
    always@(negedge clock) begin
        q<=a;
    end

endmodule
