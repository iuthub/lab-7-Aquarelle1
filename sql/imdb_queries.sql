-- 1
SELECT name FROM movies WHERE year = 1995;

-- 2
SELECT COUNT(actor_id) FROM roles WHERE movie_id = (SELECT id FROM movies WHERE name = "Lost in Translation");

-- 3
SELECT first_name FROM actors WHERE id IN (SELECT actor_id from roles where movie_id = (SELECT id FROM movies WHERE name = "Lost in Translation"));

--4
SELECT * FROM directors WHERE id = (SELECT director_id from movies_directors WHERE movie_id = (SELECT id FROM movies WHERE name = "Fight Club"));

--5
SELECT COUNT(id) FROM movies WHERE id = (SELECT movie_id from movies_directors WHERE director_id = (SELECT id FROM directors WHERE first_name = "Clint" AND last_name = "Eastwood"));

--6
SELECT name FROM movies WHERE id = (SELECT movie_id from movies_directors WHERE director_id = (SELECT id FROM directors WHERE first_name = "Clint" AND last_name = "Eastwood"));

--7
SELECT first_name, last_name FROM directors WHERE id IN (SELECT director_id from movies_directors WHERE movie_id IN (SELECT movie FROM movies_genres WHERE genre = "Horror"));

--8
SELECT first_name, last_name FROM actors WHERE id IN (SELECT actor_id from roles WHERE movie_id IN (SELECT movie_id FROM movies_directors WHERE director_id = (SELECT id FROM directors WHERE first_name = "Christopher" AND last_name = "Nolan")));

