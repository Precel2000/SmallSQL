/*create table*/
CREATE TABLE friends (
  id INTEGER, 
  name TEXT, 
  birthday DATE
);

/*insert data*/
INSERT INTO friends (id, name, birthday)
VALUES (1, 'Jane Doe', '1990-05-30'),
(2, 'Mary Chmas', '2000-07-06'),
(3, 'Luca Galecki', '2000-05-09');

/*updata Jane Doe's surname*/
UPDATE friends
SET name = 'Jane Smith'
WHERE name = 'Jane Doe';

/*create 'email' column*/
ALTER TABLE friends
ADD COLUMN email TEXT;

/*add the email addresses into the table*/
UPDATE friends
SET email = 'jane@codecademy.com'
where id = 1;
UPDATE friends
SET email = 'mary.chmas@gmail.com'
where id = 2;
UPDATE friends
SET email = 'luca.gal@hotmail.com'
where id = 3;

/* delete Jane Smith from the table*/
DELETE FROM friends
WHERE name = 'Jane Smith';

SELECT * 
FROM friends;
