`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.08.2023 12:46:27
// Design Name: 
// Module Name: 8bitFA
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
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.08.2023 10:57:48
// Design Name: 
// Module Name: fulladder_8
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


module fulladder_8(A,B,cin,sum,cout);
input [7:0] A,B;
input cin;
output [7:0]sum;
output cout;
wire [7:0]c;
FA1 f1 (A[0],B[0],cin,sum[0],c[0]);
genvar i;
generate 
for (i=1;i<=7;i=i+1)
begin
FA1 f2 (A[i],B[i],c[i-1],sum[i],c[i]);
end
endgenerate
assign cout=c[7];
endmodule

