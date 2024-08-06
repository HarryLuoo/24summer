#name: Harry Luo
#Status: Complete
# This program accepts two argumetns: a list of integers and an integer n. It then displays the list of integers that are greater than n.

def main():
    # Prompt the user to enter 10 integers
    print("Enter a list of 10 integers")
    numbers = []
    for i in range(10):
        num = int(input("Enter a number: "))
        numbers.append(num)
    
    # Prompt the user to enter the number n
    n = int(input("\nEnter the number you wish to test if the list elements are greater than: "))
    
    # Call display_larger function
    display_larger(numbers, n)

def display_larger(numbers, n):
    # Create a list of numbers greater than n
    greater_numbers = []
    for num in numbers:
        if num > n:
            greater_numbers.append(num)
    
    # Display the results
    print("\nNumber:", n)
    print("List of numbers:")
    print(numbers)
    print("List of numbers that are larger than {}:".format(n))
    print(greater_numbers)

# Run the main function

main()