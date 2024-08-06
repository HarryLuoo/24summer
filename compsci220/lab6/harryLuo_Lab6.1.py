# Name: Harry Luo
# Program status: Complete
# problem7. This program writes a series of random numbers to a file. The user specifies how many random numbers to generate.

import random

def main():
    
# This function prompts the user for the number of random numbers to generate,writes these numbers to a file, and handles any potential exceptions.
  
    try:
        # Prompt the user for the number of random numbers
        num_numbers = int(input("Enter the number of random numbers to generate: "))

        # Open the file to write the random numbers
        with open('random_numbers.txt', 'w') as file:
            for _ in range(num_numbers):
                number = random.randint(1, 500)
                file.write(f"{number}\n")

        print(f"{num_numbers} random numbers have been written to random_numbers.txt.")
    
    except ValueError:
        print("Error: Please enter a valid integer.")
    except IOError:
        print("Error: An error occurred while writing to the file.")
    except Exception as e:
        print(f"An unexpected error occurred: {e}")

main()