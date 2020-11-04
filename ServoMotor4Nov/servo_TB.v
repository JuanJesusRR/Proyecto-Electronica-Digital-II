`timescale 1ns / 1ps

module servo_TB;

	// Inputs
	reg	clk;
	reg [7:0] dutty;

	// Outputs
	wire	PWM;
	wire   CLKOUT;
    wire   CLKOUT2;

	// Instantiate the Unit Under Test (UUT)
	servo uut (
	    .clk(clk),
		.dutty(dutty),
		.CLKOUT(CLKOUT),
        .CLKOUT2(CLKOUT2),
		.PWM(PWM)
	);
	
	always  // Reloj de 100MHz      Periodo=10ns
	begin
		clk =1'b0;
		#5;
		clk =1'b1;
		#5;
	end

	initial
	begin
		//Initialize Inputs
		dutty= 0;
		#1000;
        dutty=8'b10110100 ;  //180 grados //10110100 //90 grados  8'b01011010
	    #1000;

	end


	initial
	begin: TEST_CASE
		     $dumpfile("servo_TB.vcd");
		     $dumpvars(-1, uut);
		     #(50000000) $finish;
	end
      
endmodule

