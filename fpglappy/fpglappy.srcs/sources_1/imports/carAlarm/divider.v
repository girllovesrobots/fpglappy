`timescale 40ns/100ps

module divider #(parameter CLOCKS = 24999999) (
    input wire clock25mhz,
    output reg clock1hz
);

reg [26:0] i;

// Initialize things
initial begin
    i = 0;
    clock1hz = 0;
end


// Wait for 1s of clocks
always@(posedge clock25mhz)
begin
    if (i == CLOCKS)
    begin
        clock1hz <= 1;
        i <= 0;
    end
    else begin // Only keep on for 1 clock cycle
        clock1hz <= 0;
        i <= i + 1;
    end
end

endmodule

module dividerTester;
    // inputs
    reg clock25mhz;
    // output
    wire clock1hz;

    divider div1(.clock25mhz(clock25mhz), .clock1hz(clock1hz));

    always #1 clock25mhz = ~clock25mhz;

    initial begin
        clock25mhz = 0;
        #100
        clock25mhz = 0;
    end

endmodule
