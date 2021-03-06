 /*create table */
CREATE TABLE celebs (
   id INTEGER, 
   name TEXT, 
   age INTEGER
);

/*insert values*/
INSERT INTO celebs (id, name, age)
 VALUES 
 (1, 'Justin Bieber', 22), 
 (2, 'Beyonce Knowles', 33),
 (3, 'Jeremy Lin', 26),
 (4, 'Taylor Swift', 26);
 
SELECT * FROM celebs;

/*add a 'twitter_handle' column */
ALTER TABLE celebs 
ADD COLUMN twitter_handle TEXT; 

 /*set a value in the new column*/
UPDATE celebs 
SET twitter_handle = '@taylorswift13' 
WHERE id = 4; 


SELECT * FROM celebs; 
