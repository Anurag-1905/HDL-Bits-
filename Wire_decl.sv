`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
wire aband, cdand ;
    assign aband = a&b;
    assign cdand = c&d;
    assign out = aband||cdand;
    assign out_n = ~out;
endmodule