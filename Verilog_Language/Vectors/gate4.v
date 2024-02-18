module gate4( 
    input [3:0] in,
    output out_and,
    output out_or,
    output out_xor
);
    wire w1,w2;
    assign out_and= in[0]&in[1]&in[2]&in[3];
    assign out_or= in[0]|in[1]|in[2]|in[3];
    assign w1= (~in[0]&in[1])+(in[0]&~in[1]);
    assign w2= (~in[2]&in[3])+(in[2]&~in[3]);
    assign out_xor= (~w1&w2)+(w1&~w2);

endmodule