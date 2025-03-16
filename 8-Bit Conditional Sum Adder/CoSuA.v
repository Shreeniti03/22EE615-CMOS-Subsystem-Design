`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2025 18:06:34
// Design Name: 
// Module Name: CoSuA
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ConditionalSumAdder8Bit (
    input [7:0] A,
    input [7:0] B,
    input Cin,
    output [7:0] Sum,
    output Cout
);
    wire [7:0] Sum0, Sum1;
    wire Carry0, Carry1;

    assign {Carry0, Sum0} = A + B;
    assign {Carry1, Sum1} = A + B + 8'b00000001;

    assign {Cout, Sum} = (Cin == 1'b0) ? {Carry0, Sum0} : {Carry1, Sum1};
endmodule
