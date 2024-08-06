#Harry Luo
#Lab 10
# status Complete
# This program collects information for multiple employees and prints their details."""
from employee import Employee

def get_employee_info():
    name = input("Enter employee name: ")
    id_number = input("Enter employee ID: ")
    department = input("Enter department: ")
    job_title = input("Enter position: ")
    return Employee(name, id_number, department, job_title)
def main():
    
    employees = []
    for i in range(3):
        print(f"\nEnter information for Employee {i+1}:")
        employees.append(get_employee_info())
    
    print("\nEmployee Information:")
    for i, emp in enumerate(employees, 1):
        print(f"\nEmployee {i}:")
        print(emp)

if __name__ == "__main__":
    main()