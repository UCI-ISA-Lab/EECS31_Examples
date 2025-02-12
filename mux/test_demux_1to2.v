`timescale 1ns/1ps
`include "demux_1to2.v"

module test_demux1to2();
    reg [1:0] test_A;
    reg test_S;
    wire [1:0] test_B;
    wire [1:0] test_C;

    initial begin
        $dumpfile ("test_demux_1to2.vcd");
        $dumpvars (0, test_A);
        $dumpvars (0, test_B);
        $dumpvars (0, test_S);
        $dumpvars (0, test_C);

        #10
        test_A = 2'b10;
        test_S = 1'b0;
        #10
        test_S = 1'b1;
        #10
        test_A = 2'b01;
        test_S = 1'b0;
        #10
        test_S = 1'b1;
        #10

        $finish;
    end


    demux_1to2 # (
        .DATA_WIDTH(2)
    ) demux_1to2_under_test (
        .A(test_A),
        .Select(test_S),
        .B(test_B),
        .C(test_C)
    );


endmodule
