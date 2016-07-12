-- select database
USE db_test;

-- create new table if the table doesn't exist
CREATE TABLE IF NOT EXISTS critters
(
    critter_id INT PRIMARY KEY,
    name VARCHAR(20) NOT NULL
);

-- insert values into critters
INSERT INTO critters (critter_id, name) 
    VALUES (3, "Beaver");
INSERT INTO critters (critter_id, name) 
    VALUES (1, "Duck");
INSERT INTO critters (critter_id, name) 
    VALUES (4, "Aardvark");
INSERT INTO critters (critter_id, name) 
    VALUES (2, "Elephant");
INSERT INTO critters (critter_id, name) 
    VALUES (5, "Camel");

-- select everything in order of its id
SELECT * FROM critters ORDER BY critter_id asc;

-- select everything in descending order of its name
SELECT * FROM critters ORDER BY name desc;

-- drop the table
DROP TABLE critters;