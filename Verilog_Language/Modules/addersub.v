module addersub(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [31:0]w1;
    wire [15:0]w2,w3;
    wire w4,cout;
    assign w1= b^{32{sub}};
    add16 inst1( a[15:0], w1[15:0], sub, sum[15:0], w4 );
    add16 inst2( a[31:16], w1[31:16], w4, sum[31:16], cout );
    //assign sum={{w2},{w3}}; this is wrong it is not a simple concatenation

endmodule

module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
endmodule