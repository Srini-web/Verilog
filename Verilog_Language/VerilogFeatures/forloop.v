module forloop( 
    input [99:0] in,
    output reg[99:0] out
);
    integer i; //don't use reg for it won't store value
    always@(*)begin       
            
        for(i=0;i<100;i = i+1)begin
            out[i]=in[99-i];
        end        
        
    end

endmodule