-- The job of this file is to reset all of our important database tables.
-- And add any data that is needed for the tests to run.
-- This is so that our tests, and application, are always operating from a fresh
-- database state, and that tests don't interfere with each other.

-- First, we must delete (drop) all our tables
DROP TABLE IF EXISTS posts CASCADE;
DROP SEQUENCE IF EXISTS posts_id_seq;
DROP TABLE IF EXISTS users CASCADE;
DROP SEQUENCE IF EXISTS users_id_seq;



-- Then, we recreate them
CREATE SEQUENCE IF NOT EXISTS users_id_seq;
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(255),
    email_address VARCHAR(255)
);

CREATE SEQUENCE IF NOT EXISTS posts_id_seq;
CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    content VARCHAR (255),
    view_count INTEGER,
    user_id INTEGER,
    constraint fk_user foreign key(user_id)
    references users(id)
    ON DELETE CASCADE
);

-- Finally, we add any records that are needed for the tests to run
INSERT INTO users (username, email_address) VALUES ('cooluser123', 'cooluser123@example.com');
INSERT INTO users (username, email_address) VALUES ('cookingMaster', 'chefmaster@emailprovider.com');
INSERT INTO users (username, email_address) VALUES ('adventureExplorer', 'explorer@emailprovider.com');
INSERT INTO users (username, email_address) VALUES ('musicLover88', 'musicfan88@example.com');
INSERT INTO users (username, email_address) VALUES ('techGeek21', 'geek21@emailprovider.com');
INSERT INTO users (username, email_address) VALUES ('fitnessFanatic', 'fitfanatic@emailprovider.com');
INSERT INTO users (username, email_address) VALUES ('travelEnthusiast', 'travelbug@example.com');


INSERT INTO posts (title, content, view_count,user_id) VALUES ('Post 1', 'This is the first post. Short and sweet!', 50, 1);
INSERT INTO posts (title, content, view_count,user_id) VALUES ('Post 2', 'Just sharing a quick update. Hope you enjoy!', 30, 2);
INSERT INTO posts (title, content, view_count,user_id) VALUES ('Post 3', 'Exploring new ideas today. What do you think?', 42, 3);
INSERT INTO posts (title, content, view_count,user_id) VALUES ('Post 4', 'Quick tip: Always backup your data before updates!', 65, 4);
INSERT INTO posts (title, content, view_count,user_id) VALUES ('Post 5', 'Exciting news coming soon. Stay tuned!', 80, 5);
INSERT INTO posts (title, content, view_count,user_id) VALUES ('Post 6', 'Reflecting on the past week. Grateful for the journey.', 55, 6);
INSERT INTO posts (title, content, view_count,user_id) VALUES ('Post 7', 'Sharing my favorite recipe for a quick meal.', 75, 7);
INSERT INTO posts (title, content, view_count,user_id) VALUES ('Post 8', 'Thoughts on the latest trends in technology?', 68, 5);
INSERT INTO posts (title, content, view_count,user_id) VALUES ('Post 9', 'Trying out a new hobby. Any recommendations?', 40, 7);
INSERT INTO posts (title, content, view_count,user_id) VALUES ('Post 10', 'Book recommendation: Just finished a great read!', 90, 7);
INSERT INTO posts (title, content, view_count,user_id) VALUES ('Post 11', 'Happy Monday! Whats on your to-do list this week?', 62, 5);
INSERT INTO posts (title, content, view_count,user_id) VALUES ('Post 12', 'Remember to take breaks and relax. Self-care matters!', 55, 4);
INSERT INTO posts (title, content, view_count,user_id) VALUES ('Post 13', 'Looking forward to the weekend. Any plans?', 70, 4);
INSERT INTO posts (title, content, view_count,user_id) VALUES ('Post 14', 'Quick coding challenge: Can you solve this problem?', 45, 6);
INSERT INTO posts (title, content, view_count,user_id) VALUES ('Post 15', 'Reflecting on the importance of gratitude today.', 58, 1);
INSERT INTO posts (title, content, view_count,user_id) VALUES ('Post 16', 'New project in the works. Excited to share more soon!', 48, 3);
INSERT INTO posts (title, content, view_count,user_id) VALUES ('Post 17', 'Whats your favorite productivity hack?', 75, 3);
INSERT INTO posts (title, content, view_count,user_id) VALUES ('Post 18', 'Just discovered a hidden gem in the city. Highly recommend!', 85, 5);
INSERT INTO posts (title, content, view_count,user_id) VALUES ('Post 19', 'Feeling inspired after a nature walk. Nature is amazing!', 60, 2);
INSERT INTO posts (title, content, view_count,user_id) VALUES ('Post 20', 'Discussing the impact of technology on daily life.', 72, 3);