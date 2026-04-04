module tb_myHW5;
    
    reg w, x, y, z;
    wire F;
     integer i;

    myHW5 uut(F, w, x, y, z);

    initial begin
        for (i = 0; i < 16; i = i + 1) begin
            {w, x, y, z} = i;
            
            
            $display("%b %b %b %b %b", w, x, y, z, F);
        
        end
    end
endmodule