`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.08.2023 12:50:53
// Design Name: 
// Module Name: 8FA_test
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


module Testbench_FullAdder_8bit;

reg [7:0] A, B;
reg cin;
wire [7:0] sum;
wire cout;

fulladder_8 FA8 (.A(A),.B(B),.cin(cin),.sum(sum),.cout(cout));
initial
 begin
   A = 8'b00000110;
   B = 8'b00001011;
   cin = 0;
   #10;
    
   A = 8'b11001010;
   B = 8'b11110001;
   cin = 1;
   #10;  
end

endmodule

