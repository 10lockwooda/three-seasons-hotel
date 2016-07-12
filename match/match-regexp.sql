-- use the "my_database" database
USE db_test;

-- create a table called "glass_sets"
CREATE TABLE IF NOT EXISTS glass_sets
(
  id	INT		AUTO_INCREMENT PRIMARY KEY,
  name	VARCHAR(25)	NOT NULL, 
  price DECIMAL(6,2)	NOT NULL
);

-- insert 5 records into the "glass_sets" table
INSERT INTO glass_sets (name, price) 
  VALUES ("Monaco", 6.99);
INSERT INTO glass_sets (name, price) 
  VALUES ("Cavendish", 4.99);
INSERT INTO glass_sets (name, price) 
  VALUES ("Mosaic", 6.99);
INSERT INTO glass_sets (name, price) 
  VALUES ("Blue Reef", 8.99);
INSERT INTO glass_sets (name, price) 
  VALUES ("Silver Swirl", 14.99);

-- show records where the name contains a "W"
SELECT * FROM glass_sets WHERE name REGEXP "W";

-- show records where the name contains a "W" or a "N"
SELECT * FROM glass_sets WHERE name REGEXP "[WN]";

-- show records where the name begins with a "B"
SELECT * FROM glass_sets WHERE name REGEXP "^B";

-- show records where the name ends with a "H"
SELECT * FROM glass_sets WHERE name REGEXP "H$";

-- show records where the name begins with a "B" or "C"
SELECT * FROM glass_sets WHERE name REGEXP "^[BC]";

-- show records where the name has 6 characters
SELECT * FROM glass_sets WHERE name REGEXP "^......$";
-- alternatively this query could use REGEXP "^.{6}$";

-- delete this sample table
DROP TABLE IF EXISTS glass_sets;