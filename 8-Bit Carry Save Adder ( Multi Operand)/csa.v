`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.03.2025 11:46:47
// Design Name: 
// Module Name: csa
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


module CarrySaveAdder(a, b, cin, sum, carry);
    input [7:0] a, b, cin;
    output [7:0] sum, carry;
    assign sum = a ^ b ^ cin;
    assign carry = (a & b) | (b & cin) | (cin & a);
endmodule

