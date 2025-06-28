module top_module();
    reg clock,inputt;
    reg [2:0]select;
    wire q7out;
  
    q7 DUT(.clk(clock),.in(inputt),.s(select),.out(q7out));
    
    initial begin
        clock = 0;
    forever #5 clock=~clock;
    end
    
    initial begin
        #0 inputt=0; select=3'd2;
        #10 inputt=0; select=3'd6;
        #10 inputt=1; select=3'd2;
        #10 inputt=0; select=3'd7;
        #10 inputt=1; select=3'd0;
        #30 inputt=0; select=3'd0;
    end

endmodule
