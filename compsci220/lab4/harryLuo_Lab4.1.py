# Harry Luo
# Problem 1 of lab 4
#Status: complete
# This program calculates the total expenses for the month and determines if the user is over or under budget.

#initialize variables
budget =  float(input("Enter amount budgeted for the month: "))
total_expense = 0
expense = float(input("Enter an amount spent (0 to quit): "))

#loop to get the total expenses
while expense != 0:
    total_expense += expense
    expense = float(input("Enter an amount spent (0 to quit): "))

# Display the results
print(f"Budgeted: ${budget:.2f}")
print(f"Spent: ${total_expense:.2f}")

# Determine if the user is over or under budget
difference = budget - total_expense

if difference > 0:
    print(f"You are ${difference:.2f} under budget. WELL DONE!")
else:
    print(f"You are ${-difference:.2f} over budget. PLAN BETTER NEXT TIME!")