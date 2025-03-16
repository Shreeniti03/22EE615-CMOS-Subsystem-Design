`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2025 18:08:11
// Design Name: 
// Module Name: CoSuA_tb
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


module Testbench;
    reg [7:0] A, B;
    reg Cin;
    wire [7:0] Sum;
    wire Cout;

    ConditionalSumAdder8Bit uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    initial begin
        A = 8'b00001111; B = 8'b00000001; Cin = 1'b0;
        #10 A = 8'b10101010; B = 8'b01010101; Cin = 1'b1;
        #10 A = 8'b11110000; B = 8'b00001111; Cin = 1'b0;
        #10 A = 8'b00000000; B = 8'b11111111; Cin = 1'b1;
        #10 $finish;
    end
endmodule
