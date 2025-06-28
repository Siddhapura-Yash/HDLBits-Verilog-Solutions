module top_module (
    input clk,
    input reset,   // Synchronous active-high reset
    output [3:1] ena,
    output [15:0] q);

    bcd_count DUT1(.clk(clk),.reset(reset),.enable(1'b1),.q(q[3:0]));
    bcd_count DUT2(.clk(clk),.reset(reset),.enable(ena[1]),.q(q[7:4]));
    bcd_count DUT3(.clk(clk),.reset(reset),.enable(ena[2]),.q(q[11:8]));
    bcd_count DUT4(.clk(clk),.reset(reset),.enable(ena[3]),.q(q[15:12]));   
                   
	assign ena[1] = (q[3:0] == 4'd9) ? 1 : 0;
                   assign ena[2] =ena[1] && (q[7:4] == 4'd9) ? 1 : 0;                
                   assign ena[3] =ena[2] && (q[11:8] == 4'd9) ? 1 : 0;               
                  
    
endmodule

module bcd_count (
    input clk,
    input reset,        // Synchronous active-high reset
    output [3:0] q,
	input enable);

    always@(posedge clk) begin
        if(reset)
            q<=0;
       else begin
           if(enable) begin
           if(q<9)
           		 q<=q+1'b1;
   		 	else
        		q<=0;
           end
       end
    end
endmodule
        
