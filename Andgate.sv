module top_module( 
    input a, 
    input b, 
    output out );
assign out = a&b;
// & serves as bitwise AND Operation. 
// && serves as logical AND Operation.
endmodule
