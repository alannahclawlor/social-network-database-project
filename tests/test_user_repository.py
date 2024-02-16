from lib.users import User
from lib.user_repository import UserRepository

def test_get_all_posts(db_connection):
    db_connection.seed("seeds/social_network.sql")
    user_repository = UserRepository(db_connection)
    users = user_repository.all()

    assert users == [
        User('cooluser123', 'cooluser123@example.com'),
        User('cookingMaster', 'chefmaster@emailprovider.com'),
        User('adventureExplorer', 'explorer@emailprovider.com'),
        User('musicLover88', 'musicfan88@example.com'),
        User('techGeek21', 'geek21@emailprovider.com'),
        User('fitnessFanatic', 'fitfanatic@emailprovider.com'),
        User('travelEnthusiast', 'travelbug@example.com')
        ]