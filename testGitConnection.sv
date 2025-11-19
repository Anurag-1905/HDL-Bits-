module and_gate(
    input  logic a,
    input  logic b,
    output logic y
);
    assign y = a & b;
endmodule

module test;
    logic a, b;
    logic y;

    // DUT instantiation
    and_gate uut (
        .a(a),
        .b(b),
        .y(y)
    );

    // Dump setup for waveform
    initial begin
        $dumpfile("dump.vcd");   // Name of the dump file
        $dumpvars(0, test);      // Capture all variables inside module "test"
    end

    // Stimulus generation
    initial begin
        $display("Starting AND gate test...");
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
        $display("Simulation complete!");
        $finish;
    end
endmodule
