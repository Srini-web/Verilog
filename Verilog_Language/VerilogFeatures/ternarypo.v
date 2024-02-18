module ternaryop (
    input [7:0] a, b, c, d,
    output [7:0] min);//
    wire [7:0]w1,w2;
    assign w1=a>b?b:a;
    assign w2=w1>c?c:w1;
    assign min=w2>d?d:w2;
endmodule
