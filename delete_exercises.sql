/*Write SELECT statements for:
Albums released after 1991
Albums with the genre 'disco'
    Albums by 'Whitney Houston' (...or maybe an artist of your choice)

Make sure to put appropriate captions before each SELECT.
    Convert the SELECT statements to DELETE.
    Use the MySQL command line client to make sure your records really were removed.*/

USE codeup_test_db;

SELECT * FROM albums
WHERE release_date > 1991;

DELETE FROM albums
WHERE release_date > 1991;

SELECT * FROM albums
WHERE genre = 'Disco';

DELETE FROM albums
WHERE genre = 'Disco';

SELECT * FROM albums
WHERE artist = 'The Beatles';

DELETE FROM albums
WHERE artist = 'The Beatles';