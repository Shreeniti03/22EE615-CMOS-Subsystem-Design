`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.03.2025 11:49:42
// Design Name: 
// Module Name: csa_tb
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


`timescale 1ns / 1ps

module CarrySaveAdder_tb;
    reg [7:0] a, b, cin;
    wire [7:0] sum, carry;
    CarrySaveAdder uut (.a(a), .b(b), .cin(cin), .sum(sum), .carry(carry));
    initial begin
        a = 8'b00000001; b = 8'b00000010; cin = 8'b00000011; #10;
        a = 8'b11110000; b = 8'b00001111; cin = 8'b10101010; #10;
        a = 8'b10101010; b = 8'b01010101; cin = 8'b11001100; #10;
        a = 8'b11111111; b = 8'b11111111; cin = 8'b11111111; #10;
        a = 8'b00000000; b = 8'b00000001; cin = 8'b00000010; #10;
        $finish;
    end
    initial begin
        $monitor("Time: %0d, a: %b, b: %b, cin: %b, sum: %b, carry: %b", 
                 $time, a, b, cin, sum, carry);
    end
endmodule

