`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.05.2026 15:11:17
// Design Name: 
// Module Name: testbench
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



module testbench;

// Inputs
reg clk;
reg [31:0] haddr;
reg [31:0] hwdata;

// Outputs
wire [31:0] pwdata;
wire psel;
wire penable;


ahb_apb_bridge uut (
    .clk(clk),
    .haddr(haddr),
    .hwdata(hwdata),
    .pwdata(pwdata),
    .psel(psel),
    .penable(penable)
);

// Clock Generation
always #5 clk = ~clk;

// Test Cases
initial
begin
    // Initialize
    clk = 0;
    haddr = 0;
    hwdata = 0;

    // Test Case 1
    #10;
    haddr = 32'h00000050;
    hwdata = 32'hAAAA5555;

    // Test Case 2
    #20;
    haddr = 32'h00000800;
    hwdata = 32'h12345678;

    // Test Case 3
    #20;
    haddr = 32'h00002000;
    hwdata = 32'h87654321;

    // End Simulation
    #20;
    $finish;
end


initial
begin
    $monitor(
        "Time=%0t | HADDR=%h | HWDATA=%h | PSEL=%b | PENABLE=%b | PWDATA=%h",
        $time, haddr, hwdata, psel, penable, pwdata
    );
end

endmodule
