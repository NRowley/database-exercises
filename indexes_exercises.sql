# USE your employees database.
# DESCRIBE each table and inspect the keys and see which columns have indexes and keys.
# USE your codeup_test_db database.
# Add an index to make sure all album names combined with the artist are unique. Try to add duplicates to test the constraint.

USE employees;
DESCRIBE employees.employees;
DESCRIBE employees.titles;
DESCRIBE employees.salaries;
DESCRIBE employees.dept_emp;
DESCRIBE employees.departments;
DESCRIBE employees.dept_manager;

USE codeup_test_db;
DESCRIBE codeup_test_db.albums;

ALTER TABLE albums
ADD UNIQUE (name, artist);

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Michael Jackson', 'Thriller', 1982, 51200000, 'Pop, post-disco, funk, rock');