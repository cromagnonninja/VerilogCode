# VerilogCode
Verilog Codes for practice. 

#### 1. Hello World! 
A simple program to test whether Verilog is working or not. 

#### 2. Ripple Carry Counter 
This program implements a ripple carry counter - a simple 4 bit up counter which resets after a given time. 
It's based on deconstucting the counter as a series of connected T flipflops, which are a modified version of D flipflops, only with a single output instead of the two generally expected. 

These D flipflops are then set or reset based on the value of the reset input at either the positive edge of the clock or negative edge of the reset input. 

Then, we use a simple testbench to verify the working of the flipflop as expected, by giving a clock input which resets after every 5 time units. The reset signal is set, then unset, then set again. The process goes on for 200 time units. 
