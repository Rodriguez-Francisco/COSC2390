module tb_priority4x2;
    wire [1:0] P;
    wire Val;
    reg [3:0] V;
    integer i;

    priority4x2 uut(P, Val, V);

    initial begin
        for (i = 0; i < 16; i = i + 1) begin
            V = i;
            

            
            $display("%b %b %b %b %b %b %b", V[3], V[2], V[1], V[0], P[1], P[0], Val);
        end
    end
endmodule

