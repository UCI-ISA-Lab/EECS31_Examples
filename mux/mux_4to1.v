`include "mux_2to1.v"

module mux_4to1  #(
    parameter DATA_WIDTH =32
) (
    input wire [DATA_WIDTH-1:0] A,
    input wire [DATA_WIDTH-1:0] B,
    input wire [DATA_WIDTH-1:0] C,
    input wire [DATA_WIDTH-1:0] D,
    input wire [1:0] Select,
    output wire [DATA_WIDTH-1:0] E
);

    wire [DATA_WIDTH-1: 0] mux00_out, mux01_out, mux02_out;

    mux_2to1 # (
        .DATA_WIDTH(DATA_WIDTH)
    ) mux_2to1_00 (
        .A(A),
        .B(B),
        .Select(Select[0]),
        .C(mux00_out)
    );

    mux_2to1 # (
        .DATA_WIDTH(DATA_WIDTH)
    ) mux_2to1_01 (
        .A(C),
        .B(D),
        .Select(Select[0]),
        .C(mux01_out)
    );

    mux_2to1 # (
        .DATA_WIDTH(DATA_WIDTH)
    ) mux_2to1_02 (
        .A(mux00_out),
        .B(mux01_out),
        .Select(Select[1]),
        .C(mux02_out)
    );    

    assign E = mux02_out;

endmodule 

