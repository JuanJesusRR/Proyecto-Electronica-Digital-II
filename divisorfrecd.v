
module	divisorfrecd(	input  clk,	output	reg	CLKOUTD	);// 100 MHz to 34.2/2 kHz

parameter top=12'b101101101100;// top=100MHz/34,2kHz=2924, error: 0.0132%
	reg [11:0] count_2924;
	
	initial
	begin
		CLKOUTD=1'b1;
		count_2924=0;
	end
	
	always @(posedge clk) 
	begin
		count_2924 <= count_2924 + 1;
		if(count_2924 == top)
		begin
			count_2924<=0;
			CLKOUTD <= ~CLKOUTD;
		end
	end
    
endmodule
