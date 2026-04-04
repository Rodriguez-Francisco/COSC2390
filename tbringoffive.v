`timescale 1ns / 1ps

module tbringoffive;
    
    wire [1:5] gout;
    reg ctrl;

   
    ringoffive uut (
        .gout(gout),
        .ctrl(ctrl)
    );

    initial begin
        
        $dumpfile("waveform.vcd");
        $dumpvars(0, tbringoffive);

        
        ctrl = 0;
        #100; 
        
        ctrl = 1;
        #500;
        
        $display("Simulation complete.");
        $finish;
    end
endmodule