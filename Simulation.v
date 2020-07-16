`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:40:28 07/16/2020 
// Design Name: 
// Module Name:    divres1 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module divres (Q,M,Quo,Rem);

	input [7:0] Q;
	input [7:0] M;
	output [7:0] Quo;
	output [7:0] Rem;
	reg [7:0] Quo =0;
	reg [7:0] Rem =0;
	reg [7:0] a1,b1;
	reg [7:0] p1;
	integer i;

	always@ (Q or M)
	begin
	
		a1 = Q;
		b1 = M;
		p1 = 0;

		if(a1[7]==1)
		a1 = 0-a1;
		if(b1[7]==1)
		b1 = 0-b1;
		if((b1[7]==1)&& (a1[7]==1)) begin
		b1 = 0-b1;
		a1 = 0-a1;
		end

	   for(i=0;i<8;i=i+1)   begin
		    p1 = {p1[6:0],a1[7]};
			 a1[7:1] = a1[6:0];
			 p1=p1-b1;
			 if(p1[7]==1)	begin
				  a1[0] = 0;
				  p1 = p1+b1;  end
			 else
				  a1[0] = 1;
	   end
		
		if((Q[7]==1)&&(M[7]==0))
		begin
		Quo = 0-a1;
		Rem = 0-p1;
		end
		
		else if((Q[7]==0)&&(M[7]==1))
		begin
		Quo = 0-a1;
		Rem = p1;
		end
		
		else if ((Q[7]==1)&&(M[7]==1))
		begin
		Quo = a1;
		Rem = 0-p1;
		end

		else
		begin
		Quo = a1;
		Rem = p1;
		end
 
 end
endmodule

	
