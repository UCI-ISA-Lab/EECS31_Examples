
module demux_1to2  #(
    parameter DATA_WIDTH =32
) (
    input wire [DATA_WIDTH-1:0] A,
    input wire Select,
    output wire [DATA_WIDTH-1:0] B,
    output wire [DATA_WIDTH-1:0] C
);

  assign B = (Select == 0)? A : 0;
  assign C = (Select == 1)? A : 0;


endmodule 

