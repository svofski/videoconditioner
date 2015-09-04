Simulation files
----------------

This is a sandbox for testing video sync detection code.

- [syncdetect.v](syncdetect.v) is both simulated and synthesizable.
- [simulation.v](simulation.v) is the testbench.

The testbench requires Icarus Verilog to run the simulation and GTKWave to display resulting waveforms. 
If everything is installed, typing ```make``` should run the current simulation. It will produce
```syncdetect.vcd```, which can be viewed with GTKWave. 

Interesting waveforms are cvbs (view as analog), hsync, vsync, porch.

![screenshot](/screenshots/gtkwave.png)

