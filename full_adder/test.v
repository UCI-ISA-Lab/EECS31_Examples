`include "full_adder.v"
//`include "nbit_adder.v"

module test();
    reg test_A, test_B, test_C;
    wire test_sum, test_carry;

    initial begin
        $dumpfile ("test.vcd");
        $dumpvars (0, test_A);
        $dumpvars (0, test_B);
        $dumpvars (0, test_C);
        $dumpvars (0, test_sum);
        $dumpvars (0, test_carry);


        #10
        test_A = 1'b0;
        test_B = 1'b0;
        test_C = 1'b0;
        #10
        test_A = 1'b0;
        test_B = 1'b0;
        test_C = 1'b1;
        #10
        test_A = 1'b0;
        test_B = 1'b1;
        test_C = 1'b0;
        #10
        test_A = 1'b0;
        test_B = 1'b1;
        test_C = 1'b1;

        #10
        test_A = 1'b1;
        test_B = 1'b0;
        test_C = 1'b0;
        #10
        test_A = 1'b1;
        test_B = 1'b0;
        test_C = 1'b1;
        #10
        test_A = 1'b1;
        test_B = 1'b1;
        test_C = 1'b0;
        #10
        test_A = 1'b1;
        test_B = 1'b1;
        test_C = 1'b1;


        $finish;
    end


    full_adder adder_under_test (
        .A(test_A),
        .B(test_B),
        .C(test_C),
        .sum(test_sum),
        .carry(test_carry)
    );

/*
    nbit_adder nbit_adder_under_test (

    );
*/

endmodule
