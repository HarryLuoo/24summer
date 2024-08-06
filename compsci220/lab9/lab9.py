# Lab 9 - Dictionaries
# Harry Luo
# status: complete
# This program reads course numbers and prints the room number, instructor, and time for each course.

def create_dictionaries():
    rooms = {
        'CS101': '3004',
        'CS102': '4501',
        'CS103': '6755',
        'NT110': '1244',
        'CM241': '1411'
    }
    
    instructors = {
        'CS101': 'Haynes',
        'CS102': 'Alvarado',
        'CS103': 'Rich',
        'NT110': 'Burke',
        'CM241': 'Lee'
    }
    
    times = {
        'CS101': '8:00 a.m.',
        'CS102': '9:00 a.m.',
        'CS103': '10:00 a.m.',
        'NT110': '11:00 a.m.',
        'CM241': '1:00 p.m.'
    }
    
    return rooms, instructors, times

def get_course_details(course, rooms, instructors, times):
    if course in rooms:
        room = rooms[course]
        instructor = instructors[course]
        time = times[course]
        return f"Room: {room}\nInstructor: {instructor}\nTime: {time}"
    else:
        return f"{course} is an invalid course number."

def main():
    rooms, instructors, times = create_dictionaries()
    
    while True:
        course = input("Enter a course number (CASE SENSITIVE) or press enter to stop.: ")
        if course == "":
            break
        
        details = get_course_details(course, rooms, instructors, times)
        if "invalid" not in details:
            print(f"The details for course {course} are:")
            print(details)
        else:
            print(details)
        print()  # Print a blank line for readability

main()