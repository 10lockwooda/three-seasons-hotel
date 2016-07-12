-- use the "my_database" database
USE db_test;

-- create a table called "office_chairs"
CREATE TABLE IF NOT EXISTS office_chairs
(
  code		CHAR(8)		PRIMARY KEY,
  model		VARCHAR(25)	NOT NULL,
  fabric	VARCHAR(25)	DEFAULT "Cloth",	
  price		DECIMAL(6,2)	NOT NULL
);

-- insert 5 records into the "office_chairs" table
INSERT INTO office_chairs (code, model, price) 
  VALUES ("617/9148", "Clerk", 19.99);
INSERT INTO office_chairs (code, model, price) 
  VALUES ("617/8156", "Secretary", 34.99);
INSERT INTO office_chairs (code, model, fabric, price) 
  VALUES ("617/9131", "Manager", "Leather", 49.99);
INSERT INTO office_chairs (code, model, fabric, price) 
  VALUES ("621/0258", "Captain", "Wood", 99.99);
INSERT INTO office_chairs (code, model, fabric, price) 
  VALUES ("619/6444", "Executive", "Leather", 124.99);
  
SELECT * FROM office_chairs WHERE fabric = "Leather";

SELECT * FROM office_chairs WHERE fabric != "Leather";

DROP TABLE IF EXISTS office_chairs;