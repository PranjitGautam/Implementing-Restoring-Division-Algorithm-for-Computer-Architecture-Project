`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:44:34 07/16/2020
// Design Name:   divres
// Module Name:   C:/Users/Asus/Desktop/CSE_PRANJIT/Resources/Algorithms/divres/testdivres.v
// Project Name:  divres
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: divres
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testdivres;

	// Inputs
	reg [7:0] Q;
	reg [7:0] M;

	// Outputs
	wire [7:0] Quo;
	wire [7:0] Rem;

	// Instantiate the Unit Under Test (UUT)
	divres uut (
		.Q(Q), 
		.M(M), 
		.Quo(Quo), 
		.Rem(Rem)
	);

	initial begin
		// Initialize Inputs
		Q = 7;
		M = 3;

		// Wait 100 ns for global reset to finish
		#100;
		
		Q = -7;
		M = 3;

		// Wait 100 ns for global reset to finish
		#100;
		Q = 7;
		M = -3;

		// Wait 100 ns for global reset to finish
		#100;
		Q = -7;
		M = -3;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

