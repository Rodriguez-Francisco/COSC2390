module lab08machine (Y, A, clk, reset);
    output Y;
    input [1:0] A;
    input clk, reset;

    reg [1:0] current_state, next_state;

    always @(posedge clk) begin
        if (reset) current_state <= 2'b00;
        else current_state <= next_state;
    end

    always @(*) begin
        next_state = current_state; 
        case (current_state)
            2'b00: next_state = (A == 2'b00) ? 2'b00 : 2'b01;
            2'b01: next_state = (A == 2'b10 || A == 2'b11) ? 2'b11 : 2'b00;
            2'b11: next_state = (A == 2'b10) ? 2'b10 : 2'b00;
            2'b10: next_state = 2'b00;
            default: next_state = 2'b00;
        endcase
    end

    assign Y = (current_state == 2'b00) ? 1'b1 : 1'b0;

endmodule