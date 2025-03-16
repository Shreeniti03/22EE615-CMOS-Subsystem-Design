`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.03.2025 11:35:16
// Design Name: 
// Module Name: cpa_tb
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

module CarryPropagateAdder_tb;
    reg [3:0] a, b;
    reg cin;
    wire [3:0] sum;
    wire cout;
    CarryPropagateAdder uut (.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));
    initial begin
        a = 4'b0001; b = 4'b0011; cin = 0; #10;
        a = 4'b1010; b = 4'b0101; cin = 1; #10;
        a = 4'b1111; b = 4'b0001; cin = 1; #10;
        a = 4'b0010; b = 4'b0010; cin = 0; #10;
        $finish;
    end
    initial begin
        $monitor("Time: %0d, a: %b, b: %b, cin: %b, sum: %b, cout: %b", 
                 $time, a, b, cin, sum, cout);
    end
endmodule

