`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.05.2026 15:03:05
// Design Name: 
// Module Name: ahb_bus
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


module ahb_bus(
 input clk,
    input [31:0] haddr,
    input [31:0] hwdata,

    output reg [31:0] addr,
    output reg [31:0] data

    );
    always @(posedge clk)
begin
    addr <= haddr;
    data <= hwdata;
end
endmodule
