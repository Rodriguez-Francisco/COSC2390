`timescale 1ns / 1ps

module ringoffive (gout, ctrl);
    output [1:5] gout;
    input ctrl;
    nand #10 g1 (gout[1], ctrl, gout[5]);
    not #10 g2 (gout[2], gout[1]);
    not #10 g3 (gout[3], gout[2]);
    not #10 g4 (gout[4], gout[3]);
    not #10 g5 (gout[5], gout[4]);

endmodule