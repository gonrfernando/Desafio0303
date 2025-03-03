def student_menu():
    while True:
        print("1. View Courses")
        print("2. View Grades")
        print("3. Exit")
        choice = input("Enter your choice: ")
        if choice == "1":
            view_courses()
        elif choice == "2":
            view_grades()
        elif choice == "3":
            break
        else:
            print("Invalid choice. Please try again.")

def view_courses():
    print("The student is currently enlisted in: Calculus 1, Physics 1, Chemistry 1.")

def view_grades():
    print("The student has the following grades: Calculus 1: 100, Physics 1: 90, Chemistry 1: 80.")
