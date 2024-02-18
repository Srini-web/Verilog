`default_nettype none     // Disable implicit nets. Reduces some types of bugs.
module part_select ( 
    input wire [15:0] in,
    output wire [7:0] out_hi,
    output wire [7:0] out_lo );
    
    assign out_lo= in[7:0];
    assign out_hi= in[15:8];

endmodule