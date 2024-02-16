from lib.posts import Post

def test_post_constucts():
    post = Post('Post 1', 'This is the first post. Short and sweet!', 50, 1)
    assert post.title == 'Post 1'
    assert post.content == 'This is the first post. Short and sweet!'
    assert post.view_count == 50
    assert post.user_id == 1