from DBManager import dbConnection
from user import RoleManager, Admin, Teacher, Student

LINE = "------------------------------------------------------------\n"


if __name__ == '__main__':
    connection = dbConnection() # singleton
    if connection: 
        print(f"{LINE}Connection to database established")
    
    print(f"{LINE}Welcome to the school manager system")
    print("Enter username and password")
    username = input("Username: ")
    password = input("Password: ")
    print("Roles: 1. Admin, 2. Teacher, 3. Student")
    role = input("Role: ")
    menu = RoleManager(strategy=None) # Strategy
    if role == "1":
        menu.set_strategy(Admin)
    elif role == "2":
        menu.set_strategy(Teacher)
    elif role == "3":
        menu.set_strategy(Student)
    else:
        print("Invalid role")
        
    while True:
        if menu.show() == -1:
            break
        