module tb ();
    logic [1:0] tb_X;
    logic [1:0] tb_Y;
    logic [1:0] tb_S;
    logic tb_CO;

    // instance of DUT
    R_ADDER test (.X (tb_X), .Y (tb_Y), .CO (tb_CO), .S (tb_S));

    // Functional Part of the TB
    initial begin

        $monitor (tb_X, tb_Y, tb_S, tb_CO);
        
        #1
        tb_X = 0;
        tb_Y = 0;

        #1
        tb_X = 1;
        tb_Y = 0;

        #1
        tb_X = 2;
        tb_Y = 1;

        #1
        tb_X = 2;
        tb_Y = 3;

        #1
        tb_X = 3;
        tb_Y = 3;

        #1
        $display("TEST COMPLETE");
        $finish();
    end

    // To dump signals to waveform
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars; 
    end

endmodule