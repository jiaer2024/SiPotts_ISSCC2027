clearGlobalNets

################## Default power net ####################
# Global VSS connect (breaker cell does not break VSS ring)
globalNetConnect H_VDD -type pgpin -pin VDD -inst * -module {}
globalNetConnect VSS -type pgpin -pin VSS -inst * -module {}

