module top_module ( );
    reg clk;
    initial clk=0;
    always
        #5 clk = ~clk;
    dut any_name(clk);
    

endmodule
