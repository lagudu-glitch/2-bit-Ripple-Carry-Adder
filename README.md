# 2 BIT RIPPLE CARRY ADDER

This an implementation of a 2 - bit ripple carry adder in system verilog. Contains a module that that a full adder and hence can be modified to be used as an n - bit adder. The diagrams for the adder can be found in the adder.drawio. The R_ADDER module cannot do subtraction at the moment because the carry in bit of the least significant value is hard coded to 0. If the carry in bit is modified is made variable then the module can be used as subtractor as well. Test bench for verification is also available (adder_tb.sv)

Compiling the verilog code
```
iverilog -g2012 adder_tb.sv adder.sv -o sim.vvp
```

Creates a simulation file 'sim.vvp'

To run the simulation
```
vvp sim.vvp
```