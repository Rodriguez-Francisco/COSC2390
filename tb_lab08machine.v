`timescale 1ns / 1ps


module tb_lab08machine;
    reg [1:0] A;
     reg clk;
    reg reset;
    wire Y;

    lab08machine uut (
        .Y(Y), 
        .A(A), 
        .clk(clk), 
        .reset(reset)

    );

    always #5 clk = ~clk; 

    initial begin
        $dumpfile("lab08_waveform.vcd");
        $dumpvars(0, tb_lab08machine);



        A = 2'b00;
        clk = 0;
        reset = 1;
        
        #15 reset = 0;

        #10 A = 2'b01;
        #10 A = 2'b10;
        #10 A = 2'b10;

        #10 A = 2'b00;

        #50 $finish;
    end
endmodule