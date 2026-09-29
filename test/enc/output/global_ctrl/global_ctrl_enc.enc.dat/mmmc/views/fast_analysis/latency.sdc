set_clock_latency -source -early -max -rise  -0.0760306 [get_ports {clk}] -clock clk 
set_clock_latency -source -early -max -fall  -0.0838788 [get_ports {clk}] -clock clk 
set_clock_latency -source -late -max -rise  -0.0760306 [get_ports {clk}] -clock clk 
set_clock_latency -source -late -max -fall  -0.0838788 [get_ports {clk}] -clock clk 
