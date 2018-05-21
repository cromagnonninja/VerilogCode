  // Code your testbench here
// or browse Examples
module ripple_tb; 
reg clk;
reg reset; 
wire [3:0] q;   

ripple_carry_counter r1(.q(q), .clock(clock), .reset(reset));
initial 
clk = 1'b0; 
always 
#5 clk = ~clk;
initial 
begin 
reset = 1'b1; 
#20 reset = 1'b0; 
#180 reset = 1'b1; 
#20 reset = 1'b0; 
end
endmodule
