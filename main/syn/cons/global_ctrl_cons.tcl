###################################
#                                 #
#   CLEAN-UP                      #
#                                 #
###################################

# Remove any existing constraints and attributes
#
reset_design

###################################
#                                 #
#   CLOCK DEFINITION              #
#                                 #
###################################

# create clock clk = 100MHz
create_clock -period [expr 10*0.95] -name clk -waveform "0 [expr 5*0.95]" [get_ports "clk"]

# False paths
set_false_path -from "rstn"

# Don't touch networks
set_dont_touch_network "rstn"
set_dont_touch_network [all_clocks]

# Setup uncertainty is not main problem here because clock is very slow. Hold uncertainty set to 3~5 FO4 delay.
set_clock_uncertainty -setup 0.2 [all_clocks]
set_clock_uncertainty -hold 0.15 [all_clocks]

# The maximum clock transition is 1ns
set_clock_transition -min 0.15 [all_clocks]
set_clock_transition -max 0.4 [all_clocks]

###################################
#                                 #
#   SPECIAL CLOCK DEFINITION      #
#                                 #
###################################

group_path -name INPUTS -from [all_inputs]
group_path -name OUTPUTS -to [all_outputs]
group_path -name COMBO -from [all_inputs] -to [all_outputs]

group_path -name INPUTS -weight 1 -critical 1
group_path -name OUTPUTS -weight 1 -critical 1
group_path -name COMBO -weight 1 -critical 1

###################################
#                                 #
#   INPUT/OUTPUT TIMING           #
#                                 #
###################################

# in/out is consists of board(switch,led), memory, UART
# Delay is estimated like below

set_input_delay -min 0.5 -clock clk [all_inputs]
set_input_delay -max 5.0 -clock clk [all_inputs]

remove_input_delay [get_ports "clk"]

set_output_delay -min 0.5 -clock clk [all_outputs]
set_output_delay -max 5.0 -clock clk [all_outputs] 

###################################
#                                 #
#   DESIGN AREA                   #
#                                 #
###################################

# Area Constraint
#
set_max_area 0.0

###################################
#                                 #
#   ENVIRONMENTAL ATTRIBUTES      #
#                                 #
###################################

#set_input_transition
set_input_transition -min 0.15 [all_inputs]
set_input_transition -max 0.2 [all_inputs]

set_max_transition 0.4 [all_outputs]

#####################
####### DRC  ########
set_load 0.1 [all_outputs]

# there is no need to be the numerous buffers on RESETn network during synthesis
set_ideal_network "clk rstn"

