# The name of all albums by Pink Floyd.
# The year Sgt. Pepper's Lonely Hearts Club Band was released
# The genre for Nevermind
# Which albums were released in the 1990s
# Which albums had less than 20 million certified sales
# All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
USE codeup_test_db;

SELECT artist, name
FROM codeup_test_db.albums
WHERE artist = 'Pink Floyd';

SELECT release_date
FROM albums
WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre
FROM albums
WHERE name = 'Thriller';

SELECT name, release_date
FROM albums
WHERE release_date BETWEEN 1989 and 1999;

SELECT artist, name, sales
FROM albums
WHERE sales < 20000000;

SELECT artist, name, genre
FROM albums
WHERE genre = 'Rock';