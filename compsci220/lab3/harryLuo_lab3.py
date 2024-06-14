#Harry Luo
#Lab 3
#Status: completed
#This program calculates the discount amount and total amount after discount based on the number of packages purchased.

PACKAGE_PRICE = 149

# Define discount rates
def percent_price(num_packages):
    if 10 <= num_packages <= 49:
        return 0.9
    elif 50 <= num_packages <= 99:
        return 0.8
    elif 100 <= num_packages <= 149:
        return 0.7
    elif num_packages >= 150:
        return 0.6
    else:
        return 1

# Get the number of packages from the user
num_packages = int(input("Enter the number of packages purchased: "))

# Calculate the discount rate
percent_price = percent_price(num_packages)

# Calculate the discount amount
discount_amount = num_packages * PACKAGE_PRICE * (1 - percent_price)

# Calculate the total amount after discount
total_amount = num_packages * PACKAGE_PRICE * percent_price

# Display the results
print(f"Discount Amount: $ {discount_amount:,.2f}")
print(f"Total Amount: $ {total_amount:,.2f}")