from lib.users import User

class UserRepository:
    def __init__(self,_connection):
        self._connection = _connection

    def all(self):
        rows = self._connection.execute('SELECT * from users')
        users = []
        for row in rows:
            item = User(row['username'], row['email_address'])
            users.append(item)
        return users