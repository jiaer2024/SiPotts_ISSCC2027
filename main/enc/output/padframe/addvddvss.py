import re

def process_verilog(infile, outfile):
	with open(infile, "r") as f:
	    lines = f.readlines()
	
	result = []
	
	for line in lines:
		m = re.match(r'^(\s*)(\w+)\s+\w+\s*\(', line)
		if m:
			base_indent = m.group(1)
			current_cell = m.group(2)
			indent = base_indent + "    "
			result.append(line)
			
			if current_cell in ["PVDD1DGZ"]:
			    result.append(indent + ".VDD(VDD) \n")
			elif current_cell in ["PVSS1DGZ"]:
			    result.append(indent + ".VSS(VSS) \n")
			elif current_cell in ["PVSS2DGZ"]:
			    result.append(indent + ".VSSPST(VSSPST) \n")
			elif current_cell in ["PVDD2DGZ", "PVDD2POC"]:
			    result.append(indent + ".VDDPST(VDDPST) \n")
			elif current_cell in ["PVDD3AC"]:
			    result.append(indent + ".TACVDD(TACVDD)\n")
			elif current_cell in ["PVDD3A"]:
			    result.append(indent + ".TAVDD(TAVDD)\n")
			continue
		
		result.append(line)
	
	with open(outfile, "w") as f:
	    f.writelines(result)

if __name__ == "__main__":
    process_verilog("padframe_enc_lvs.v", "padframe_enc_lvs_vddvss.v")
