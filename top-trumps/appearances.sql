-- select top trumps database
USE top_trumps;

-- select the hero name and apperances for everyone, order by appearances highest to lowest
SELECT hero_name, appearances FROM characters ORDER BY appearances desc;

-- find out total number of appearances between all character
SELECT SUM(appearances) AS total_no_of_appearances FROM characters;