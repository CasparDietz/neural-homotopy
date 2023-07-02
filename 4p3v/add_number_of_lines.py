import sys

# Check if the filename was passed as an argument
if len(sys.argv) != 2:
    print('Usage: python script_name.py filename')
    sys.exit(1)

# Open the file in read mode
my_file = sys.argv[1]
with open(my_file, 'r') as file:
    lines = file.readlines()

# Calculate the number of lines
line_count = len(lines)

# Add line count at the start of the list
lines.insert(0, str(line_count) + '\n')

# Open the file in write mode and write the lines
with open(my_file, 'w') as file:
    file.writelines(lines)
