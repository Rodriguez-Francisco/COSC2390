
module minbe4bit (
    input wire [3:0] A,
    input wire [3:0] B,
    output wire [3:0] Min
);


    assign Min = (A < B) ? A : B;

endmodule
