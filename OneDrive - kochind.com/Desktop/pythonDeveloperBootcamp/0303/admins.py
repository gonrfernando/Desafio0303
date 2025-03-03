from course import Manager

def admin_menu():
    print("**** ADMIN MENU ****")
    print("1. Add student")
    print("2. Add teacher")
    print("3. Add course")
    print("4. Add student to course")
    print("5. Add teacher to course")
    print("6. Show students")
    print("7. Show teachers")
    print("8. Show courses")
    print("9. Show students in course")
    print("10. Show teachers in course")
    print("11. Exit")
    
    option = input("Option: ")
    if option == "1":
        print("Adding student")
    elif option == "2":
        print("Adding teacher")
    elif option == "3":
        print("Adding course")
        name = input("Course name: ")
        area = input("Course area: ")
        ponderation_type = input("Ponderation type: 1. 50-50, 2. 50-30-20, 3. 40-30-30")
        manager = Manager(name, area) #Builders
        course = manager.build(ponderation_type)
        print(f"Course {course.name} in area {course.area}")
        print("Grading criteria:")
        for criteria in course.grading_criteria:
            print(criteria)
        print("Materials:")
        for material in course.materials:
            print(material)
    elif option == "4":
        print("Adding student to course")
    elif option == "5":
        print("Adding teacher to course")
    elif option == "6":
        print("Showing students")
    elif option == "7":
        print("Showing teachers")
    elif option == "8":
        print("Showing courses")
    elif option == "9":
        print("Showing students in course")
    elif option == "10":
        print("Showing teachers in course")
    elif option == "11":
        return -1
    