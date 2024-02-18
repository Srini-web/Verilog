module vectomodule ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output reg [7:0] q// When we say just output r[7:0] q, its just a wire, we need "reg"
);
    wire [7:0]w1,w2,w3;
    //notice how all wires are vectors
    my_dff8 inst1(.clk(clk), .d(d), .q(w1));
    my_dff8 inst2(.clk(clk), .d(w1), .q(w2));
    my_dff8 inst3(.clk(clk), .d(w2), .q(w3));
    
    always @ (*) begin //mux
        case(sel)
            0 : q <= d ; // Non-blocking assignment needed in 
            1 : q <= w1;
            2 : q <= w2;
            3 : q <= w3;
        endcase
    end
    /*
    wire [7:0] o1, o2, o3;		// output of each my_dff8
	
	// Instantiate three my_dff8s
	my_dff8 d1 ( clk, d, o1 );
	my_dff8 d2 ( clk, o1, o2 );
	my_dff8 d3 ( clk, o2, o3 );

	// This is one way to make a 4-to-1 multiplexer
	always @(*)		// Combinational always block
		case(sel)
			2'h0: q = d;
			2'h1: q = o1;
			2'h2: q = o2;
			2'h3: q = o3;
		endcase
    */

endmodule
module my_dff8 ( input clk, input [7:0] d, output [7:0] q );
endmodule