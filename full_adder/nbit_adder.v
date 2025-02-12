`include "full_adder.v"


module nbit_adder #(
    parameter ADDER_WIDTH=32
) (
    input wire [ADDER_WIDTH-1:0] A,
    input wire [ADDER_WIDTH-1:0] B,
    output wire [ADDER_WIDTH-1:0] sum
);

    wire [ADDER_WIDTH-1:0] intermediate_carry;

    assign intermediate_carry = 0;

    full_adder adder_0 (
        .A(A[0]),
        .B(B[0]),
        .C(1'b0),
        .sum(sum[0]),
        .carry(intermediate_carry[0])
    );

    genvar i;
    generate
        for (i=1; i < ADDER_WIDTH; i = i +1) begin
            full_adder adder_i (
                .A(A[i]),
                .B(B[i]),
                .C(intermediate_carry[i-1]),
                .sum(sum[i]),
                .carry(intermediate_carry[i])
            );
        end
    endgenerate

endmodule

