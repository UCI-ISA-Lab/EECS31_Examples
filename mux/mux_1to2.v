
module mux_2to1  #(
    parameter DATA_WIDTH =32
) (
    input wire [DATA_WIDTH-1:0] A,
    input wire [DATA_WIDTH-1:0] B,
    input wire Select,
    output wire [DATA_WIDTH-1:0] C
);

  assign C = (Select == 0)? A : B;

endmodule 

