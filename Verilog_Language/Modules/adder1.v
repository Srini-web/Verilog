module adder1(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire w1,w2;
    add16 inst1(.a(a[15:0]),.b(b[15:0]),.cin(1'b0),.sum(sum[15:0]),.cout(w1));
    add16 inst2(.a(a[31:16]),.b(b[31:16]),.cin(w1),.sum(sum[31:16]),.cout(w2));
    

endmodule
module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
endmodule