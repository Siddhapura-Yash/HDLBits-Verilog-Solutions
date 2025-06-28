module top_module (input x, input y, output z);
    wire moduleA,moduleB,mid1,mid2;
    A DUT1(.x(x),.y(y),.z(moduleA));
    B DUT2(.x(x),.y(y),.z(moduleB));
    
     assign mid1 = moduleA | moduleB;
    assign mid2 = moduleA & moduleB;
    
    assign z = mid1 ^ mid2;
    
    
    
endmodule

module A (input x, input y, output z);
    assign  z = (x^y) & x;
endmodule

module B ( input x, input y, output z );
    assign z = ~(x ^ y);
endmodule

