

module	divisorfrec1	(input  clk, output	reg	CLKOUT2); // 100 MHz to 180 kHz

parameter top=9'b100010101;// top=100MHz/180kHz=555,55
  reg [8:0] count_277;
	//
	initial
	begin
		CLKOUT2=1'b0;
		count_277=0;
	end
	//
	always @(posedge clk)
	begin
		count_277 <= count_277 + 1;
      if(count_277 == top)
		begin
			count_277<=0;
			CLKOUT2 <= ~CLKOUT2;
		end
	end
 
 endmodule