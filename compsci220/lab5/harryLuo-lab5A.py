# Harry Luo
# Program status: Complete
# This program calculates the average rating for a restaurant based on five scores and displays the corresponding star rating.

def main():
    # Initialize variables
    total_score = 0
    num_critics = 5

    # Loop to get ratings from the user
    for i in range(num_critics):
        # Prompt the user for a score
        score = float(input(f"Enter critic's score between 0 and 10: "))

        # Keep asking until a valid score is entered
        while score < 0 or score > 10:
            print("Error: Enter critic's score between 0 and 10.")
            score = float(input(f"Enter critic's score between 0 and 10: "))

         # Add the valid score to the total score
        total_score += score
    # Calculate average score
    average_score = total_score / num_critics

    # Display the average score
    print(f"Your average score is {average_score:.2f}")

    # Determine and display the number of stars
    determine_stars(average_score)

def determine_stars(average_score):
  
    # This function displays the number of stars based on the average score.
 
    if average_score > 9:
        print("*****")
    elif 8.0 <= average_score <= 8.9:
        print("****")
    elif 7.0 <= average_score <= 7.9:
        print("***")
    elif 6.0 <= average_score <= 6.9:
        print("**")
    elif 5.0 <= average_score <= 5.9:
        print("*")
    else:
        print("No stars")

# Call the main function to run the program
main()