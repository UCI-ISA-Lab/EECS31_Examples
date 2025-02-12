`timescale 1ns/1ps
`include "mux_2to1.v"

module test_mux2to1();
    reg test_A, test_B, test_S;
    wire test_C;

    initial begin
        $dumpfile ("test_mux_2to1.vcd");
        $dumpvars (0, test_A);
        $dumpvars (0, test_B);
        $dumpvars (0, test_S);
        $dumpvars (0, test_C);

        #10
        test_A = 1'b0;
        test_B = 1'b1;
        test_S = 1'b0;
        #10
        test_S = 1'b1;
        #10
        test_A = 1'b1;
        test_B = 1'b0;
        test_S = 1'b0;
        #10
        test_S = 1'b1;
        #10

        $finish;
    end


    mux_2to1 # (
        .DATA_WIDTH(1)
    ) mux_2to1_under_test (
        .A(test_A),
        .B(test_B),
        .Select(test_S),
        .C(test_C)
    );


endmodule
