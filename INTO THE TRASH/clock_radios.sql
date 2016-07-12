USE db_test;

CREATE TABLE IF NOT EXISTS clock_radio
(
    code CHAR(8) PRIMARY KEY,
    make VARCHAR(25) NOT NULL,
    model VARCHAR(25) NOT NULL,
    price DECIMAL(4,2) NOT NULL
);

INSERT INTO clock_radio (code, make, model, price)
    VALUES ("512/4792", "Alba" "C2108", 6.75);
INSERT INTO clock_radio (code, make, model, price)
    VALUES ("512/4125", "Hitachi", "KC30", 8.99);
INSERT INTO clock_radio (code, make, model, price)
    VALUES ("512/1458", "Phillips", "A33010", 19.99);
INSERT INTO clock_radio (code, make, model, price)
    VALUES ("512/3669", "Morphy Richards", "28025", 19.99);
INSERT INTO clock_radio (code, make, model, price)
    VALUES ("512/1444", "Sony", "C253", 29.49);
    
SELECT * FROM clock_radio WHERE price < 19.99;

SELECT * FROM clock_radio WHERE price > 19.99;

SELECT * FROM clock_radio WHERE price <= 19.99;

SELECT * FROM clock_radio WHERE price BETWEEN 10 AND 20;

DROP TABLE IF EXISTS clock_radio;