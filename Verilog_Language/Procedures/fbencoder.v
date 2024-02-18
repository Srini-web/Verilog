// synthesis verilog_input_version verilog_2001
module fbencoder (
    input [3:0] in,
    output reg [1:0] pos  );
    always@(*)begin
        /*
        case(in)
            4'b0000:pos=1'd0;
            4'b0010:pos=1'd1;
            4'b0010:pos=1'd2;
            4'b1000:pos=1'd3;
            default:pos=1'd0;
        endcase
        */
        if (in[0]==1'b1)
            pos = 0;
        else if (in[1]==1'b1)
            pos = 1;
        else if (in[2]==1'b1)
            pos = 2;
        else if (in[3]==1'b1)
            pos = 3;
        else
            pos = 0;
    end            

endmodule
