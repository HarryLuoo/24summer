#Lab 8 problem 1
# Name: Harry Luo
#status complete
# This program reads the contents of a file and counts the number of uppercase letters, lowercase letters, digits, and spaces in the file.

# Read the contents of the file
with open('text.txt', 'r') as file:
    content = file.read()

# Initialize counters
uppercase = 0
lowercase = 0
digits = 0
spaces = 0

# Analyze each character in the content
for char in content:
    if char.isupper():
        uppercase += 1
    elif char.islower():
        lowercase += 1
    elif char.isdigit():
        digits += 1
    elif char.isspace():
        spaces += 1

# Print the results
print(f"Uppercase letters: {uppercase}")
print(f"Lowercase letters: {lowercase}")
print(f"Digits: {digits}")
print(f"Spaces: {spaces}")