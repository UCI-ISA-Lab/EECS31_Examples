`timescale 1ns/1ps
`include "mux_4to1.v"

module test_mux4to1();
    reg [1:0] test_A, test_B, test_C, test_D;
    reg [1:0] test_S;
    wire [1:0] test_E;

    initial begin
        $dumpfile ("test_mux_4to1.vcd");
        $dumpvars (0, test_A);
        $dumpvars (0, test_B);
        $dumpvars (0, test_C);
        $dumpvars (0, test_D);
        $dumpvars (0, test_S);
        $dumpvars (0, test_E);

        #10
        test_A = 2'b00;
        test_B = 2'b01;
        test_C = 2'b10;
        test_D = 2'b11;
        test_S = 2'b00; // Select A
        #10
        test_S = 2'b01; // Select B
        #10
        test_S = 2'b10; // Select C
        #10
        test_S = 2'b11; // Select D
        #10
        $finish;
    end


    mux_4to1 # (
        .DATA_WIDTH(2)
    ) mux_2to1_under_test (
        .A(test_A),
        .B(test_B),
        .C(test_C),
        .D(test_D),
        .Select(test_S),
        .E(test_E)
    );


endmodule
