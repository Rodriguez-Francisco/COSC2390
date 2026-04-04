module myHW5(output F, input w, x, y, z);
    assign F = (~y & z) | (y & ~z) | (~x & y);
endmodule