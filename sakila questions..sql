USE SAKILA;
SHOW TABLES;
DESCRIBE FILM;
SELECT * FROM FILM;
SELECT TITLE , RELEASE_YEAR FROM FILM;
SELECT TITLE AS MOVIENAME , RELEASE_YEAR AS MOVIEYEAR FROM FILM;

SELECT TITLE , RELEASE_YEAR, RENTAL_RATE, RATING
FROM FILM
/*
WHERE RATING IN ('PG-13' , 'G', 'R') ;
WHERE  RENTAL_RATE BETWEEN 2 AND 4
ORDER BY RENTAL_RATE DESC;
*/

-- 1. List all actors
;

SELECT * FROM actor;

-- 2. Find the surname of the actor with the forename 'John'.

SELECT last_name FROM actor WHERE first_name ='John';

-- 3.Find all actors with surname 'Neeson'.

SELECT * FROM actor WHERE last_name ='Neeson';

-- 4. Find all actors with ID numbers divisible by 10.

SELECT * FROM actor WHERE actor_id % 10 = 0;

-- 5.What is the description of the movie with an ID of 100?

SELECT * FROM  FILM ; 

SELECT description FROM FILM WHERE film_id = 100;

-- 6. Find every R-rated movie.

SELECT * FROM film WHERE rating ='R';

-- 7. Find every non-R-rated movie.

SELECT * FROM film WHERE NOT rating = 'R';

-- 8. Find the ten shortest movies.

SELECT * FROM film order by length limit 10 ; 

-- 9. Find the movies with the longest runtime, without using LIMIT.

SELECT * FROM film WHERE length = (SELECT MAX(length) from film);

-- 10. Find all movies that have deleted scenes.

SELECT * FROM film WHERE special_features = 'Deleted Scenes';

-- 11. Using HAVING, reverse-alphabetically list the last names that are not repeated.

SELECT last_name FROM actor 
group by last_name 
HAVING count(last_name)=1
order by last_name desc

-- 12. Using HAVING, list the last names that appear more than once, from highest to lowest frequency.
;

SELECT last_name, count(last_name) FROM actor 
group by last_name
HAVING count(last_name) > 1
order by count(last_name) desc

-- 13.Which actor has appeared in the most films?
;

SELECT actor.first_name, actor.last_name, actor.actor_id FROM actor 
JOIN film_actor ON film_actor.actor_id = actor.actor_id
group by actor.actor_id
order by count(actor.actor_id)  desc
limit 1
;

-- 14. When is 'Academy Dinosaur' due?

SELECT release_year FROM film WHERE title='ACADEMY DINOSAUR';
 
 -- 15. What is the average runtime of all films?
 
 SELECT avg(length) FROM film 
 
 -- 16.List the average runtime for every film category.
 ;
 SELECT film_id,category_id FROM film_category
 ;
 
 -- 17.List all movies featuring a robot.
SELECT * FROM film WHERE description like  '%Robot%'; 
 
 
 
 
 
 



