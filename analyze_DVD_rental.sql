--Identify the top 10 customers and their email so we can reward them

SELECT first_name ||' '|| last_name AS Name,email, SUM(amount) AS Payment
FROM customer AS c
JOIN payment AS p
ON p.customer_id = c.customer_id
GROUP BY first_name, last_name, email
ORDER BY payment DESC
LIMIT 10;

--Identify the bottom 10 customers and their emails

SELECT first_name ||' '|| last_name AS Name,email, SUM(amount) AS Payment
FROM customer AS c
JOIN payment AS p
ON p.customer_id = c.customer_id
GROUP BY first_name, last_name, email
ORDER BY payment
LIMIT 10;

--What are the most profitable movie genres?

SELECT name AS category, COUNT(r.customer_id) AS total_rented,
SUM(p.amount) AS total_payment
FROM category AS c
JOIN film_category AS fc ON fc.category_id = c.category_id
JOIN film AS f ON f.film_id = fc.film_id
JOIN inventory AS i ON i.film_id = f.film_id
JOIN rental AS r ON r.inventory_id = i.inventory_id
JOIN payment AS p ON p.rental_id = r.rental_id
GROUP BY category
ORDER BY total_payment DESC;

--What is the customer base in the countries where we have a presence?

SELECT country, COUNT(customer_id) AS total_number_of_customers
FROM country AS c
JOIN city AS ci ON ci.country_id = c.country_id
JOIN address AS a ON a.city_id = ci.city_id
JOIN customer AS cu ON cu.address_id = a.address_id
GROUP BY country
ORDER BY total_number_of_customers DESC;

--Which country is the most profitable for the business?

SELECT country,COUNT(p.customer_id) AS total_number_of_customers,SUM(amount) AS total_payment
FROM country AS c
JOIN city AS ci ON ci.country_id = c.country_id
JOIN address AS a ON a.city_id = ci.city_id
JOIN customer AS cu ON cu.address_id = a.address_id
JOIN payment AS p ON p.customer_id = cu.customer_id
GROUP BY country
ORDER BY total_payment DESC;

--What is the average rental rate per movie genre?

SELECT name AS category, ROUND(AVG(rental_rate),2) AS average_rental_rate
FROM category AS c
JOIN film_category AS fc ON fc.category_id = c.category_id
JOIN film AS f ON f.film_id = fc.film_id
GROUP BY category
ORDER BY average_rental_rate DESC;

--How many rented films were returned late, early and on time?

with t1 AS(SELECT *,DATE_PART('day', return_date - rental_date) AS difference
                  FROM rental),
     t2 AS(SELECT rental_duration, difference,
                  CASE WHEN rental_duration > difference THEN ' returned early'
                       WHEN rental_duration= difference THEN 'returned on time'
                       ELSE 'returned late'
                  END AS return_status
            FROM film AS f
            JOIN inventory AS i ON f.film_id= i.film_id
            JOIN t1 ON t1.inventory_id=i.inventory_id)
SELECT return_status, COUNT(*) AS total_number_of_films
FROM t2
GROUP BY return_status
ORDER BY total_number_of_films DESC;
