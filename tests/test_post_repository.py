from lib.post_repository import PostRepository
from lib.posts import Post

def test_get_all_posts(db_connection):
    db_connection.seed("seeds/social_network.sql")
    post_repository = PostRepository(db_connection)
    posts = post_repository.all()

    assert posts == [
Post('Post 1', 'This is the first post. Short and sweet!', 50, 1),
Post('Post 2', 'Just sharing a quick update. Hope you enjoy!', 30, 2),
Post('Post 3', 'Exploring new ideas today. What do you think?', 42, 3),
Post('Post 4', 'Quick tip: Always backup your data before updates!', 65, 4),
Post('Post 5', 'Exciting news coming soon. Stay tuned!', 80, 5),
Post('Post 6', 'Reflecting on the past week. Grateful for the journey.', 55, 6),
Post('Post 7', 'Sharing my favorite recipe for a quick meal.', 75, 7),
Post('Post 8', 'Thoughts on the latest trends in technology?', 68, 5),
Post('Post 9', 'Trying out a new hobby. Any recommendations?', 40, 7),
Post('Post 10', 'Book recommendation: Just finished a great read!', 90, 7),
Post('Post 11', 'Happy Monday! Whats on your to-do list this week?', 62, 5),
Post('Post 12', 'Remember to take breaks and relax. Self-care matters!', 55, 4),
Post('Post 13', 'Looking forward to the weekend. Any plans?', 70, 4),
Post('Post 14', 'Quick coding challenge: Can you solve this problem?', 45, 6),
Post('Post 15', 'Reflecting on the importance of gratitude today.', 58, 1),
Post('Post 16', 'New project in the works. Excited to share more soon!', 48, 3),
Post('Post 17', 'Whats your favorite productivity hack?', 75, 3),
Post('Post 18', 'Just discovered a hidden gem in the city. Highly recommend!', 85, 5),
Post('Post 19', 'Feeling inspired after a nature walk. Nature is amazing!', 60, 2),
Post('Post 20', 'Discussing the impact of technology on daily life.', 72, 3)
]