`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.05.2026 15:08:56
// Design Name: 
// Module Name: ahb_apb_bridge
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


module ahb_apb_bridge(
    input clk,
    input [31:0] haddr,
    input [31:0] hwdata,

    output [31:0] pwdata,
    output psel,
    output penable
);

wire [31:0] addr;
wire [31:0] data;
wire psel_int;

ahb_bus U1(
    .clk(clk),
    .haddr(haddr),
    .hwdata(hwdata),
    .addr(addr),
    .data(data)
);

decoder U2(
    .addr(addr),
    .psel(psel_int)
);

fsm U3(
    .clk(clk),
    .start(psel_int),
    .psel_out(psel),
    .penable(penable)
);

apb_bus U4(
    .data(data),
    .pwdata(pwdata)
);

endmodule
