DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS likes;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS followers;

CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_name TEXT,
    real_name TEXT,
    location TEXT
);

INSERT INTO users (
    user_name,
   real_name,
    location
)

Values ("kbrown","Kelsey Brown","Cambridge"), ("bblock", "Ben Block", "Chicago");

CREATE TABLE posts (
     id INTEGER PRIMARY KEY AUTOINCREMENT,
     user_id INTEGER,
     created_at TEXT,
     image_file TEXT
);

CREATE TABLE likes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    post_id INTEGER,
    user_id INTEGER
);

CREATE TABLE comments (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    post_id INTEGER,
    user_id INTEGER,
    comment_body TEXT
);

CREATE TABLE followers (
     id INTEGER PRIMARY KEY AUTOINCREMENT,
     followed_user_id INTEGER,
     follower_user_id INTEGER
);

SELECT * from users;