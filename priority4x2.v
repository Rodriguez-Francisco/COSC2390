module priority4x2(output [1:0] P, output Val, input [3:0] V);
    assign Val = V[3] | V[2] | V[1] | V[0];
    assign P[1] = V[3] | V[2];
     assign P[0] = V[3] | (~V[2] & V[1]);
endmodule