# Name: Harry Luo
# Program status: Complete
# Promblem8. This program reads random numbers from a file, displays the total, the number of numbers, and the average.

def main():

#This function reads random numbers from a file, calculates the total, the count, and the average,and displays these values. It handles any potential exceptions.
   
    try:
        # Open the file to read the random numbers
        with open('random_numbers.txt', 'r') as file:
            numbers = file.readlines()

        # Convert the list of strings to a list of integers
        numbers = [int(num.strip()) for num in numbers]

        # Calculate the total, count, and average
        total = sum(numbers)
        count = len(numbers)
        average = total / count if count != 0 else 0

        # Display the results
        print("Time\tFalling Distance")
        print("-----------------------------")
        print(f"Total of the numbers: {total}")
        print(f"Number of random numbers read from the file: {count}")
        print(f"Average of the numbers: {average:.2f}")

    except FileNotFoundError:
        print("Error: The file random_numbers.txt does not exist.")
    except ValueError:
        print("Error: The file contains non-numeric data.")
    except IOError:
        print("Error: An error occurred while reading the file.")
    except Exception as e:
        print(f"An unexpected error occurred: {e}")

main()