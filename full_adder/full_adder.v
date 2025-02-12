
module full_adder (
    input wire A,
    input wire B,
    input wire C,
    output wire sum,
    output wire carry
);

  assign carry = (A & B) + (B & C) + (C & A);  
  assign sum = A ^ B ^ C;
  // assign sum = ~A &  ~B & C + ~A & B & ~C + A & ~B & ~C + A & B & C

endmodule 

