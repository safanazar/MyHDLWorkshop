// File: decode.v
// Generated by MyHDL 0.11.45
// Date: Tue Jul 30 19:51:10 2024


`timescale 1ns/10ps

module decode (
    clk,
    fetched_instruction,
    opcode,
    operand1,
    operand2
);


input clk;
input [31:0] fetched_instruction;
output [7:0] opcode;
reg [7:0] opcode;
output [7:0] operand1;
reg [7:0] operand1;
output [7:0] operand2;
reg [7:0] operand2;




always @(posedge clk) begin: DECODE_LOGIC
    opcode <= fetched_instruction[24-1:16];
    operand1 <= fetched_instruction[16-1:8];
    operand2 <= fetched_instruction[8-1:0];
end

endmodule
