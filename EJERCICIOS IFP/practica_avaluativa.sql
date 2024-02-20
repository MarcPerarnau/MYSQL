use sakila;

select actor_id, first_name, last_name from actor order by first_name desc;

select * from address where district in('Buenos Aires', 'Alberta', 'California', 'Veracruz');

select district from address where district like '%-%';

select count(*) from address where district not like '% %' and district not like '%-%';

SELECT address, LENGTH(address) AS Longitud_Dirección, district, LENGTH(district) AS Longitud_Distrito 
FROM address ORDER BY address ASC;

select * from category where name like 'A%' or name like '%N' or name like '_R%';

select * from city where city not like '% %' or city like '%(%';

select upper(first_name) as Nombre, upper(last_name) as Apellido, lower(email) as Correo from customer;

select store_id as Tienda, first_name as Nombre, last_name as Apellido from customer order by store_id asc;

select count(*) from customer where active like 0;

select avg(rental_duration) from film;

select round(avg(rental_duration), 2) as Media from film;

select round(avg(rental_duration), 2) from film where description like '%Epic%'; 

select title, rental_duration, rating, rental_rate 
from film where rating in('PG', 'NC-17') and rental_rate >= 4.99 order by rental_duration desc limit 25;

SELECT store_id, COUNT(*) AS total_lines FROM inventory GROUP BY store_id;

SELECT store_id, COUNT(distinct film_id) AS films FROM inventory GROUP BY store_id;

select sum(amount) as recaudado from payment where customer_id = 8;

select amount, count(*) as total from payment group by amount;
