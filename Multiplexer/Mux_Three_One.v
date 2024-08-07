// File: Mux_Three_One.v
// Generated by MyHDL 0.11.45
// Date: Fri Jul 19 18:01:25 2024


`timescale 1ns/10ps

module Mux_Three_One (
    z,
    a,
    b,
    c,
    sel
);


output [7:0] z;
reg [7:0] z;
input [7:0] a;
input [7:0] b;
input [7:0] c;
input [2:0] sel;




always @(sel, a, c, b) begin: MUX_THREE_ONE_COMBLOGIC
    case (sel)
        'h1: begin
            z = a;
        end
        'h2: begin
            z = b;
        end
        'h3: begin
            z = c;
        end
        default: begin
            z = 0;
        end
    endcase
end

endmodule
