-- Excercise 1 - Tasks:
-- Find the title of each film:
SELECT Title 
FROM movies;

-- Find the director of each film:
SELECT Director 
FROM movies;

-- Find the title and director of each film:
SELECT Title, Director 
FROM movies;

-- Find the title and year of each film:
SELECT Title, Year 
FROM movies;

-- Find all the information about each film:
SELECT * 
FROM movies;

-- Excercise 2 - Tasks:
-- Find the movie with a row id of 6:
SELECT * 
FROM movies
WHERE Id=6;

-- Find the movies released in the years between 2000 and 2010:
SELECT * 
FROM movies
WHERE Year BETWEEN 2000 AND 2010;

-- Find the movies not released in the years between 2000 and 2010:
SELECT * 
FROM movies
WHERE Year NOT BETWEEN 2000 AND 2010;

-- Find the first 5 Pixar movies and their release year:
SELECT * 
FROM movies
WHERE Year <= 2003;

-- Excrecise 3 - Tasks
-- Find all the Toy Story movies:
SELECT * 
FROM movies
WHERE Title LIKE "%Toy Story%";

-- Find all the movies directed by John Lasseter:
SELECT * 
FROM movies
WHERE Director = "John Lasseter";

-- Find all the movies (and director) not directed by John Lasseter:
SELECT Title, Director 
FROM movies
WHERE Director != "John Lasseter";

-- Find all the WALL-* movies:
SELECT * 
FROM movies
WHERE Title LIKE "%WALL-%";

-- Excercise 4 - Tasks
-- List all directors of Pixar movies (alphabetically), without duplicates:
SELECT DISTINCT Director 
FROM movies
ORDER BY Director ASC;

-- List the last four Pixar movies released (ordered from most recent to least):
SELECT *
FROM movies
ORDER BY Year DESC 
LIMIT 4; 

-- List the first five Pixar movies sorted alphabetically:
SELECT *
FROM movies
ORDER BY Title ASC
LIMIT 5; 

-- List the next five Pixar movies sorted alphabetically:
SELECT *
FROM movies
ORDER BY Title ASC
LIMIT 5 OFFSET 5; 

-- Excercise 5 - Tasks
-- List all the Canadian cities and their populations:
SELECT City, Population 
FROM north_american_cities
WHERE Country = "Canada";

-- Order all the cities in the United States by their latitude from north to south:
SELECT city, latitude 
FROM north_american_cities
WHERE Country LIKE "UNITED STATES"
ORDER BY latitude DESC;

-- List all the cities west of Chicago, ordered from west to east:
SELECT city, longitude 
FROM north_american_cities
WHERE longitude < -87.629798
ORDER BY longitude ASC;

-- List the two largest cities in Mexico (by population):
SELECT city, population 
FROM north_american_cities
WHERE country LIKE "mexico"
ORDER BY population DESC
LIMIT 2;

-- List the third and fourth largest cities (by population) in the United States and their population:
SELECT city, population 
FROM north_american_cities
WHERE country LIKE "united states"
ORDER BY population DESC
LIMIT 2 OFFSET 2;




