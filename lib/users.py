
class User:

    def __init__(self,username,email_address):
        self.username = username
        self.email_address = email_address

    def __eq__(self, other):
        return self.__dict__ == other.__dict__
    
    def __repr__(self):
        return f"User({self.username}, {self.email_address})"
    