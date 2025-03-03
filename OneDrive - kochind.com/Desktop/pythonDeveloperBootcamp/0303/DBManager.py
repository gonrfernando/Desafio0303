class dbConnection:
    _instance = None 
    def __new__(cls, *args, **kwargs):
        if not cls._instance:
            cls._instance = super().__new__(cls)
            cls._instance.address = "postgresql://postgres:koch123@localhost/institution"
            return cls._instance