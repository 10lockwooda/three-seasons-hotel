-- select the db_test database;
USE db_test;

-- create the table employees if not present
CREATE TABLE IF NOT EXISTS employees
(
    employee_id     INT AUTO_INCREMENT,
    first_name      VARCHAR(20) NOT NULL,
    last_name       VARCHAR(20) NOT NULL,
    PRIMARY KEY (employee_id)
);

-- insert values into the table
INSERT INTO employees (first_name, last_name) VALUES ("Arthur", "Smith");
INSERT INTO employees (first_name, last_name) VALUES ("Peter", "Jones");
INSERT INTO employees (first_name, last_name) VALUES ("Ann", "Smith");
INSERT INTO employees (first_name, last_name) VALUES ("Sandre", "Williams");
INSERT INTO employees (first_name, last_name) VALUES ("Paul", "Jones");

-- select everything, order by first name in descending order
SELECT * FROM employees ORDER BY first_name desc;

-- select id and last name, order by last name (column 2) in ascending order
SELECT employee_id, last_name FROM employees ORDER BY 2 asc;

-- drop the table
DROP TABLE employees;