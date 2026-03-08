`timescale 1ns / 1ps

module TB_lab5;

    reg [3:0] A;
    reg [3:0] B;
    wire [3:0] Min;
    integer i, j;

    minbe4bit uut (
        .A(A),
        .B(B),
        .Min(Min)
    );

    initial begin
        $monitor("Time=%0t | A=%d | B=%d | Min=%d", $time, A, B, Min);
        
        for (i = 0; i < 16; i = i + 1) begin
            for (j = 0; j < 16; j = j + 1) begin
                A = i;
                B = j;
                #10;
            end
        end
        
        $finish;
    end

endmodule