`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.03.2025 11:57:58
// Design Name: 
// Module Name: cba
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


module CarryBypassAdder(a, b, cin, sum, cout);
    input [7:0] a, b;
    input cin;
    output [7:0] sum;
    output cout;
    wire [7:0] p, g, c;
    wire bypass;
    assign p = a ^ b;
    assign g = a & b;
    assign c[0] = cin;
    assign bypass = &p;
    assign c[7:1] = bypass ? {7{c[0]}} : (g[6:0] | (p[6:0] & c[6:0]));
    assign sum = p ^ {c[6:0], cin};
    assign cout = g[7] | (p[7] & c[7]);
endmodule

