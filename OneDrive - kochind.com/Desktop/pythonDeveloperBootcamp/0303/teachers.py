def teacher_menu():
    while True:
        print("1. View Courses")
        print("2. View Student Grades")
        print("3. Exit")
        choice = input("Enter your choice: ")
        if choice == "1":
            view_courses()
        elif choice == "2":
            student_id = input("Enter student ID: ")
            course_id = input("Enter course ID: ")
            view_student_grades(student_id, course_id)
        elif choice == "3":
            break
        else:
            print("Invalid choice. Please try again.")

def view_courses():
    print("You are currently enlisted for the following courses:")
    print("Chemistry 1")
    print("Physics 1")
    print("Calculus 1")

def view_student_grades(student_id, course_id):
    print(f"The grades for Andres Garcia Gonzalez, in Calculus 1 are:")
    print("First period -- 93")
    print("Homework 1: 100")
    print("Homework 2: 90")
    print("Exam: 85")
    print("Project: 92")
    