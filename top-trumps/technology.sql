-- select top trumps database
USE top_trumps;

-- select everything from characters, order from biggest tech to lowest
SELECT * FROM characters ORDER BY technology desc;

-- find the amount of occurances of each tech rating
SELECT COUNT(*), technology FROM characters GROUP BY technology ORDER BY technology desc;