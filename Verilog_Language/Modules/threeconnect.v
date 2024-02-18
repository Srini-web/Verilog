module threeconnect ( input clk, input d, output q );
    wire w1,w2;
    my_dff inst1(.clk(clk),.d(d),.q(w1));
    my_dff inst2(.clk(clk),.d(w1),.q(w2));
    my_dff inst3(.clk(clk),.d(w2),.q(q));
	//follow either by name or order
    /*
    wire a,b
    my_dff d1 ( clk, d, a );
	my_dff d2 ( clk, a, b );
	my_dff d3 ( clk, b, q );
    */
endmodule
module my_dff ( input clk, input d, output q );
endmodule