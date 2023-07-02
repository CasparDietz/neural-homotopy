import numpy as np
import torch
from torch.autograd import Variable
import torch.nn as nn
import torch.nn.functional as F
import torch.optim as optim
from torch.utils.data import TensorDataset, DataLoader
import os
import time
import gc
import sys
import copy

def generate(input_folder, output_file, goal_samples):
	mode = "1"
	
	#find the number of samples
	first_eval = "./bin/data_sampler " + input_folder + " 10 " + mode + " 1 " + " > " + output_file
	print("#################################################")
	print("######### Calling Executable with: ", first_eval)
	print("#################################################")

	first_samples = os.system(first_eval)
	first_samples = sum(1 for line in open(output_file))
	print("#################################################")
	print("######### ", type(first_samples), first_samples, type(goal_samples), goal_samples)
	print("#################################################")
	samples = 10*int(goal_samples) / first_samples
	
	#generate the problems
	second_eval = "./bin/data_sampler " + input_folder + " " + str(int(samples)+1) + " " + mode + " 1 " + " > " + output_file
	print("#################################################")
	print("######### Calling Executable with: ", second_eval)
	print("#################################################")

	#return
	final_samples = os.system(second_eval)
	final_samples = sum(1 for line in open(output_file))
	
	#add the number of samples to the beginning of the file
	sed_eval = "sed -i'.original' -e '1s/^/" + str(final_samples) + "\\n/' " + output_file
	print("#################################################")
	print("sed_eval command: ", sed_eval)
	print("#################################################")
	os.system(sed_eval)
	
 	# # Read the contents of the file into a variable
	# with open(output_file, "r") as file:
	# 	original_content = file.read()
	# # Open the file in write mode, write the number and original content back
	# with open(output_file, "w") as file:
	# 	file.write(f"{final_samples}\n{original_content}")
	# print(final_samples)
	
	
	#print the result
	print(str(final_samples) + " p-s pairs generated")

if __name__ == "__main__":
	argc = len(sys.argv)
	if argc < 3:
		print("Run as:")
		print("python3 sample_data.py COLMAP_folder output_file num_samples")
		exit()
	input_folder = sys.argv[1]+"/"
	output_file = sys.argv[2]
	goal_samples = sys.argv[3]#+"/"
	generate(input_folder, output_file, goal_samples)
	
	
