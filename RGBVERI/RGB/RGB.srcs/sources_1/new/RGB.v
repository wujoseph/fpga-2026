`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/08/29 15:43:17
// Design Name: CHUNG-CHUAN HOU
// Module Name: RGB
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


module RGB(CLK, led, led4, led5);
    input CLK;
    output [3:0] led;
    output [2:0] led4;
    output [2:0] led5;
    
    wire [3:0] NUM;
    
    reg [35:0] DIV;
    reg [3:0] led;
    reg [2:0] led4; // [r,g.b]
    reg [2:0] led5; // [r,g,b]

    always @(posedge CLK)
        begin
            DIV <= DIV + 1'b1;
	end

    assign NUM = DIV[27:24];                                            
    always @(posedge CLK)
        begin
            led <= NUM;		
        end

    always @(posedge CLK)
        begin
            led4 <= DIV[30:28];		
        end

    always @(posedge CLK)
        begin
            led5 <= DIV[33:31];		
        end

endmodule
