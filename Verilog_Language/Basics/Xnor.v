module Xnor( 
    input a, 
    input b, 
    output out );

    assign out= (a&b)+(~a&~b);
endmodule