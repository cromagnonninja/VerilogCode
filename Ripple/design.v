// Code your design here
module ripple_carry_counter(q, clock, reset);
output [3:0] q; 
input clock, reset; 

T_FF tff0(q[0], clock, reset); 
T_FF tff1(q[1], clock, reset);   
T_FF tff2(q[2], clock, reset); 
T_FF tff3(q[3], clock, reset); 
endmodule

module T_FF(q, clk, reset); 
output q; 
input clk, reset;
wire d; 
D_FF d1(q, d, clk, reset); 
not n1(d, q); 
endmodule 

module D_FF(q, d, clk, reset);
output q; 
input d, clk, reset; 
reg q; 
always @ (posedge reset or negedge clk)  
if(reset)   
q = 1'b0; 
else  
q = d; 

initial begin
  $dumpvars(1);
  $dumpfile("dump.vcd");
end
endmodule
  
