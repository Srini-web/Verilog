module mod_a ( output out1, output out2, input a, input b, input c, input d);
endmodule
module modbypos ( 
    input a, 
    input b, 
    input c,
    input d,
    output out1,
    output out2
);
    //module mod_a inst( output, output, input, input, input, input );
    mod_a inst( out1, out2, a, b, c, d );

endmodule