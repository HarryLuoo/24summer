# harryLuo_Lab5B.py
# Name: Harry Luo
# Program status: Complete
# This program calculates the distance an object falls in meters for times ranging from 1 to 10 seconds.


GRAVITY = 9.8  # gravitational constant in m/s^2
    
    
def falling_distance(time):
    #calculates and returns the distance an object falls in a given time due to gravity.
    distance = 0.5 * GRAVITY * time ** 2
    return distance


def main():
    #This function calls the falling_distance function in a loop, passing it the values 1 – 10 as arguments.
    #It displays the returned distance for each time period.

    print("Time\tFalling Distance")
    print("-----------------------------")
    
    # Loop through times 1 to 10 seconds
    for time in range(1, 11):
        # Calculate the falling distance
        dist = falling_distance(time)
        
        # Display the time and falling distance
        print(f"{time}\t{dist:.2f}")


# Call the main function to run the program
main()
