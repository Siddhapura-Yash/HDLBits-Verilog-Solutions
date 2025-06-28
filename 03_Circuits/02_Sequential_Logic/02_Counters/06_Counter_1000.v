module top_module (
    input clk,
    input reset,
    output OneHertz,
    output [2:0] c_enable
); //

   // bcdcount counter0 (clk, reset, c_enable[0]/*, ... */);
    //bcdcount counter1 (clk, reset, c_enable[1]/*, ... */);
    wire [3:0]q1,q2,q3;
    
    bcdcount counter1 (.clk(clk),.reset(reset),.enable(c_enable[0]),.Q(q1));
    bcdcount counter2 (.clk(clk),.reset(reset),.enable(c_enable[1]),.Q(q2));
    bcdcount counter3 (.clk(clk),.reset(reset),.enable(c_enable[2]),.Q(q3));

                 assign c_enable[0] = ~reset;
                 assign c_enable[1] = ~reset && q1 == 4'd9;
                 assign c_enable[2] = ~reset && q1 == 4'd9 && q2 == 4'd9;
    assign OneHertz = (q1 == 4'd9 && q2 == 4'd9 && q3 == 4'd9) ? 1'b1 : 0 ;


endmodule
