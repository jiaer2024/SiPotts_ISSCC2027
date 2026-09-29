set_clock_latency -source -early -max -rise  -1.01464 [get_ports {clk}] -clock clk 
set_clock_latency -source -early -max -fall  -0.946648 [get_ports {clk}] -clock clk 
set_clock_latency -source -late -max -rise  -1.01464 [get_ports {clk}] -clock clk 
set_clock_latency -source -late -max -fall  -0.946648 [get_ports {clk}] -clock clk 
