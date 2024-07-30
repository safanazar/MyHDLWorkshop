// File: execute.v
// Generated by MyHDL 0.11.45
// Date: Tue Jul 30 19:51:10 2024


`timescale 1ns/10ps

module execute (
    clk,
    opcode,
    operand1,
    operand2,
    result
);


input clk;
input [7:0] opcode;
input [7:0] operand1;
input [7:0] operand2;
output [7:0] result;
reg [7:0] result;




always @(posedge clk) begin: EXECUTE_LOGIC
    case (opcode)
        'h1: begin
            result <= (operand1 + operand2);
        end
        'h2: begin
            result <= (operand1 - operand2);
        end
        'h3: begin
            result <= (operand1 * operand2);
        end
        'h4: begin
            result <= (operand1 / operand2);
        end
        'h5: begin
            result <= (operand1 % operand2);
        end
    endcase
end

endmodule
