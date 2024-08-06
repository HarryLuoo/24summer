#Lab 8 problem 2
# Name: Harry Luo
#status complete
# This program reads a date in the format mm/dd/yyyy and prints the date in the format Month dd, yyyy.


# Dictionary to map month numbers to names
month_names = {
    '01': 'January', '02': 'February', '03': 'March', '04': 'April',
    '05': 'May', '06': 'June', '07': 'July', '08': 'August',
    '09': 'September', '10': 'October', '11': 'November', '12': 'December'
}

# Get input from user
date_input = input("Enter a date in the format mm/dd/yyyy: ")

# Split the input into month, day, and year
month, day, year = date_input.split('/')

# Remove leading zero from day if present
day = day.lstrip('0')

# Format the date
formatted_date = f"{month_names[month]} {day}, {year}"

# Print the formatted date
print(formatted_date)