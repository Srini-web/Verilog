module mod_a ( input in1, input in2, output out );
    // Module body
endmodule
module submod ( input a, input b, output out );
    mod_a instance1 (a ,b ,out);
    // instance names should match. A is a submodule of b 
    //for different port names
    //mod_a instance1 (.in1(a) ,.in2(b) ,.outa(out));
    //where in1 in 2 and out are port of mod_a
endmodule