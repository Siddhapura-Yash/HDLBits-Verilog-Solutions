module top_module (
    input clk,
    input reset,      // Synchronous reset
    input data,
    output start_shifting);
    
    parameter A=3'b000,B=3'b001,C=3'b010,D=3'b011,E=3'b100,shift=3'b111;
    reg [2:0]state,next_state;
    
    always@(*) begin
        case(state) 
                A : next_state = (data==1) ? B : A;
                B : next_state = (data==1) ? C : A;
                C : next_state = (data==1) ? C : D;
            	D : next_state = (data==1) ? shift : A;
            	shift : next_state = reset==1? A : shift;
               // E : next_state = (data==1) ? C : A;
                default : next_state = 0;
            endcase
        
    end
    always@(posedge clk) begin
        if(reset)
            state <= A;
        else begin
            state <= next_state;
            
    end
    end
            
    assign start_shifting = (state == shift);
            

endmodule
