# Top ten movies by revenue

SELECT D.title,
       SUM(A.amount) AS Total_Revenue
FROM film D
INNER JOIN inventory C ON D.film_id = C.film_id
INNER JOIN rental B ON C.inventory_id = B.inventory_id
INNER JOIN payment A ON B.rental_id = A.rental_id
GROUP BY D.title
ORDER BY Total_Revenue DESC
LIMIT 10;

# Bottom ten movies by revenue

SELECT D.title,
       SUM(A.amount) AS Total_Revenue
FROM film D
INNER JOIN inventory C ON D.film_id = C.film_id
INNER JOIN rental B ON C.inventory_id = B.inventory_id
INNER JOIN payment A ON B.rental_id = A.rental_id
GROUP BY D.title
ORDER BY Total_Revenue ASC
LIMIT 10;
