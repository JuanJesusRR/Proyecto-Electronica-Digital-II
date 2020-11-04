
module	divisorfrec	(input  clk, output	reg	CLKOUT); // 100 MHz to 100 kHz

 
  parameter top=9'b111110100;// top=100MHz/100kHz=1000
  reg [8:0] count_500;
	//
	initial
	begin
		CLKOUT=1'b0;
		count_500=0;
	end
	//
	always @(posedge clk)
	begin
		count_500 <= count_500 + 1;
      if(count_500 == top)
		begin
			count_500<=0;
			CLKOUT <= ~CLKOUT;
		end
	end
	
	
	
endmodule