# Harry Luo
# Problem 2 of lab 4
#status: completed
# This program calculates the rise in sea level for each year over a period of 25 years.


# Constants
rise_per_year = 1.8  # millimeters per year
years = 25

# Output Header
print("Year\t\tRise (in millimeters)")
print("------------------------------------------")

# Calculate and display the rise for each year
for year in range(1, years + 1):
    rise = year * rise_per_year
    print(f"{year}\t\t{rise:.2f}")