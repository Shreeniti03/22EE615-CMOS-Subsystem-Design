`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.03.2025 11:59:29
// Design Name: 
// Module Name: cba_tb
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

module CarryBypassAdder_tb;
    reg [7:0] a, b;
    reg cin;
    wire [7:0] sum;
    wire cout;
    CarryBypassAdder uut (.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));
    initial begin
        a = 8'b00000001; b = 8'b00000010; cin = 0; #10;
        a = 8'b11110000; b = 8'b00001111; cin = 1; #10;
        a = 8'b10101010; b = 8'b01010101; cin = 0; #10;
        a = 8'b11111111; b = 8'b00000000; cin = 1; #10;
        $finish;
    end
    initial begin
        $monitor("Time: %0d, a: %b, b: %b, cin: %b, sum: %b, cout: %b", 
                 $time, a, b, cin, sum, cout);
    end
endmodule



