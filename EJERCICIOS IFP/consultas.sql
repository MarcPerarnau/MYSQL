use sakila; /*Utilizamos el use para conectarnos a la tabla*/

/*1. ¿Cuántos actores hay en la tabla actor?*/
SELECT count(actor_id) FROM actor;

/*¿Cuántos actores hay cuyo nombre empiece por ‘M’?*/
SELECT * FROM actor WHERE first_name LIKE 'M%';

/*¿Cuántos actores hay cuyo apellido contiene una “O”?*/
SELECT * FROM actor WHERE last_name LIKE '%o%';

/*¿Cuántas ciudades hay con un nombre que empieza por “A”?*/
SELECT * FROM city WHERE city LIKE 'A%';

/*¿Cuántos países hay con un nombre que no acabe en “A”?*/
SELECT * FROM city WHERE city NOT LIKE '%A';

/*¿Cuántas películas hay con una duración mayor a 60
minutos?*/
SELECT * FROM film WHERE length >= 60;

/*¿Cuántas películas hay con una duración entre 80 y 100
minutos?*/
SELECT * FROM film WHERE length BETWEEN 80 and 100;

/*¿Cuál es la media de duración de todas las películas?*/
SELECT AVG(length) as DURACIO_PROMEDIA FROM film;

/*¿Cuál es la suma de la duración de todas las películas?*/
SELECT SUM(length) as SUMA_DURACION FROM film;

/*¿Cuál es la película con la duración más corta?*/
SELECT film_id, title, description, release_year, language_id, original_language_id, rental_duration, rental_rate, min(length), replacement_cost, rating, special_features, last_update FROM film;
SELECT min(length) FROM film;

/*¿Cuál es la película con la duración más larga?*/
SELECT film_id, title, description, release_year, language_id, original_language_id, rental_duration, rental_rate, max(length), replacement_cost, rating, special_features, last_update FROM film;
SELECT max(length) FROM film;

/*Muestra el nombre, apellido y el correo de los empleados
(tabla staff) de los 10 empleados con una fecha de
actualización (last_update) de datos más reciente.*/
SELECT first_name, last_name, email FROM staff ORDER BY last_update DESC LIMIT 10;

/*Realiza una consulta que muestre todos los datos de las
diferentes categorías (tabla film_category), sin que
aparezcan categorías repetidas.*/
SELECT distinct * FROM film_category;  

/*Realiza una consulta que muestre City_id y City, ordenado
por nombre de ciudad de la Z a la A.*/
SELECT city_id, city FROM city ORDER BY city DESC;

/*¿Cuánto dinero ha gastado el cliente con customer_id=4 en
alquiler de películas (tabla payment)?*/
SELECT sum(amount) as total from payment where customer_id = 4;

/*Realiza una consulta que muestre Customer_id (debe
aparecer como “Cliente”), payment_id (debe aparecer como
“pago”) y amount (debe aparecer como “coste”) de la tabla
payment y que se encuentre ordenado por “payment_id”*/
select customer_id as Cliente, payment_id as pago, amount as coste from payment order by payment_id ASC;
select customer_id as Cliente, payment_id as pago, amount as coste from payment order by payment_id DESC;

/*Listar los nombres de los actores ordenados alfabéticamente
por apellido.*/
select first_name, last_name from actor order by last_name ASC;
select first_name, last_name from actor order by last_name DESC;

/*Mostrar los títulos de las películas ordenados
alfabéticamente.*/
select title from film order by title asc;
select title from film order by title desc;

/*Obtener los nombres de los clientes ordenados por su
nombre.*/
select first_name from customer order by first_name asc;
select first_name from customer order by first_name desc;

/*Listar las categorías de películas ordenadas por su ID de
categoría.*/
select * from film_category order by category_id desc;
select * from film_category order by category_id asc;

/*Mostrar los nombres de los países ordenados
alfabéticamente.*/
select * from country order by country asc;
select * from country order by country desc;

/*Muestra el número de películas de cada rating.*/
SELECT rating, COUNT(*) AS num_peliculas FROM film GROUP BY rating;

/*Muestra cuántas películas ha realizado el actor ED CHASE.*/
SELECT COUNT(*) AS num_peliculas FROM film_actor WHERE actor_id = (SELECT actor_id FROM actor WHERE first_name = 'ED' AND last_name = 'CHASE');

/*Muestra la media de duración de las películas cada categoría.*/
SELECT c.category_id, AVG(f.length) AS duracion_media FROM film_category c JOIN film f ON c.film_id = f.film_id GROUP BY c.category_id;

/*Muestra el número de alquileres por cliente.*/
SELECT customer_id, COUNT(*) AS num_alquileres FROM rental GROUP BY customer_id;

/*Muestra los ingresos totales por película.*/


/*Muestra la cantidad de películas por categoría.*/
SELECT category_id, COUNT(*) AS cantidad_peliculas FROM film_category GROUP BY category_id; 

/*Muestra el promedio de duración de películas por clasificación de edad.*/
SELECT rating, AVG(length) AS duracion_promedio FROM film GROUP BY rating;

/*Muestra la cantidad de actores por película.*/
SELECT film_id, COUNT(*) AS cantidad_actores FROM film_actor GROUP BY film_id;

/*Muestra la lista de clasificaciones únicas de películas.*/
SELECT DISTINCT rating FROM film;

/*Muestra la lista de categorías únicas de películas.*/
SELECT DISTINCT category_id FROM film_category;

/*Muestra la lista de fechas de alquiler únicas.*/
SELECT DISTINCT rental_date FROM rental;
