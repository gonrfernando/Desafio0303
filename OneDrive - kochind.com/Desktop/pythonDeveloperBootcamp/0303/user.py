from abc import ABC, abstractmethod
from admins import admin_menu
from teachers import teacher_menu
from students import student_menu

class StrategyMenu(ABC):
    @abstractmethod
    def show():
        pass
    
class Admin(StrategyMenu):
    def show():
        return admin_menu()
        
class Teacher(StrategyMenu):
    def show():
        return teacher_menu()
        
class Student(StrategyMenu):
    def show():
        return student_menu()
        
class RoleManager:
    def __init__(self, strategy=None):
        if strategy:
            self.strategy = strategy
        else:
            self.strategy = None
    
    def set_strategy(self, strategy):
        self.strategy = strategy
    
    def show(self):
        return self.strategy.show()