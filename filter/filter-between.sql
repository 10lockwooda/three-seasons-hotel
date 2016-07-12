-- use the "my_database" database
USE db_test;

-- create a table called "treadmills"
CREATE TABLE IF NOT EXISTS treadmills
(
  code		CHAR(8)		PRIMARY KEY,
  make	 	VARCHAR(25)	NOT NULL,
  model		VARCHAR(25)	NOT NULL,	
  price		INT		NOT NULL
);

-- insert 5 records into the "treadmills" table
INSERT INTO treadmills (code, make, model, price) 
  VALUES ("335/1914", "York", "Pacer 2120", 159);
INSERT INTO treadmills (code, make, model, price) 
  VALUES ("335/1907", "York", "Pacer 2750", 349);
INSERT INTO treadmills (code, make, model, price) 
  VALUES ("335/1921", "York", "Pacer 3100", 499);
INSERT INTO treadmills (code, make, model, price) 
  VALUES ("335/2717", "Proform", "7.25Q", 799);
INSERT INTO treadmills (code, make, model, price) 
  VALUES ("335/2652", "Reebok", "TR1 Power Run", 895);
  
-- select everything between 200 and 400 price
SELECT * FROM treadmills WHERE price BETWEEN 200 AND 400;

-- select everything that has a make beginning with P and Y and inbetween
SELECT * FROM treadmills WHERE make BETWEEN "P" AND "Y";

DROP TABLE IF EXISTS treadmills;