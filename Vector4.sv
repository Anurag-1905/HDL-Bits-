module top_module (
    input [7:0] in,
    output [31:0] out );//
	//This replicates vector by num times. num must be a constant. Both sets of braces are required, including to wrap the replication in one as well 
    // assign out = { replicate-sign-bit , the-input };
    assign out[31:0] = {{24{in[7]}}, in[7:0]};
endmodule