class Course:
    def __init__(self, name, area):
        self.name = name
        self.area = area
        self.grading_criteria = []
        materials = []
        
    def add_grading_criteria(self, criteria):
        self.grading_criteria.append(criteria)
        
    def add_material(self, material):
        self.materials.append(material)

class CourseBuilder:
    def __init__(self, name, area):
        self.course = Course(name, area)
        
    def add_grading_criteria(self, criteria):
        self.course.add_grading_criteria(criteria)
        return self
        
    def add_material(self, material):
        self.course.add_material(material)
        return self
        
    def build(self):
        return self.course

class Manager():
    def __init__(self, name, area):
        self.builder = CourseBuilder(name, area)
        
    def build(self, ponderation_type):
        if ponderation_type == "1":
            self.builder.add_grading_criteria("Exams 50%").add_grading_criteria("Homework 50%")
        elif ponderation_type == "2":
            self.builder.add_grading_criteria("Exams 50%").add_grading_criteria("Project 30%").add_grading_criteria("Homework 20%")
        elif ponderation_type == "3":
            self.builder.add_grading_criteria("Exams 40%").add_grading_criteria("Project 30%").add_grading_criteria("Homework 30%")
        else:
            print("Invalid ponderation type")
            
        if self.area == "Mechanical":
            self.builder.add_material("Mechanical book").add_material("Basic set of tools").add_material("Boots").add_material("Gloves")
        elif self.area == "Electrical":
            self.builder.add_material("Electrical book").add_material("Multimeter").add_material("Soldering iron").add_material("Wires")
        elif self.area == "Software":
            self.builder.add_material("Laptop")
            
        return self.builder.build()
            