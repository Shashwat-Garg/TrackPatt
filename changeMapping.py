import os
apps = ["0 subl", "1 nautilus", "2 gedit", "3 libreoffice_writer", "4 calculator"]
indices = ['0','1','2','3','4']
shapes = ["triangle", "horizontal line", "vertical line"]
out = ["", "", ""]

for i in range(len(out)):
	while out[i] not in indices:
		out[i] = raw_input("Select app num for \n\t" + shapes[i] + "\n" + "\n".join(apps) + "\n")

# for i in range(len(out)):
# 	out[i] = os.popen("which "+ out[i]).read()[:-1]

with open("/proc/pattern",'w') as procf:
	for i in range(len(out)):
		procf.write(out[i] + "\n")
	procf.flush()