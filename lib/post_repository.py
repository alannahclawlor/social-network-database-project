from lib.posts import Post

class PostRepository:
    def __init__(self,_connection):
        self._connection = _connection 

    def all(self):
        rows = self._connection.execute('SELECT * from posts')
        posts = []
        for row in rows:
            item = Post(row['title'], row['content'], row['view_count'], row['user_id'])
            posts.append(item)
        return posts
