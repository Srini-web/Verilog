// synthesis verilog_input_version verilog_2001
module alwaysclk(
    input clk,
    input a,
    input b,
    output wire out_assign,
    output reg out_always_comb,
    output reg out_always_ff   );
    
    assign out_assign=a^b; // continous assignment always outside procedure
    
    always@(*)begin
        out_always_comb=a^b; //blocking assignments always used in combinational procedure
    end
    always@(posedge clk)begin
        out_always_ff<=a^b; //non-blocking in clocked procedure
    end
         

endmodule
