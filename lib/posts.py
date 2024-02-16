class Post:
    
    def __init__(self, title, content, view_count, user_id):
        self.title = title
        self.content = content
        self.view_count = view_count
        self.user_id = user_id

    def __eq__(self, other):
        return self.__dict__ == other.__dict__

    def __repr__(self):
        return f"Post({self.title}), {self.content}, {self.view_count}, {self.user_id}"
