module top_module ();
    reg clock,resett,inputt;
    wire q_out;
    
    tff DUT(.clk(clock),.reset(resett),.t(inputt),.q(q_out));
    
    initial begin
        clock = 0;
        forever #5 clock = ~clock;
            end
    
    initial begin
        resett = 0;
        inputt = 0;
        #10 
        resett = 1;
        inputt = 0;
        #10
        resett = 0;
        inputt = 1;
    end
        
        

endmodule
