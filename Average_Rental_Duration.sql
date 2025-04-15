# Average Rental Duration by - RATING
SELECT 
    D.rating AS Rating,
    AVG(B.return_date - B.rental_date) AS avg_rental_duration
FROM 
    rental B
INNER JOIN inventory C ON B.inventory_id = C.inventory_id
INNER JOIN film D ON C.film_id = D.film_id
GROUP BY 
    D.rating
ORDER BY 
    avg_rental_duration DESC;

# Average Rental Duration by - GENRE

SELECT 
    c.name AS Genre,
    AVG(r.return_date - r.rental_date) AS avg_rental_duration
FROM 
    rental r
INNER JOIN inventory i ON r.inventory_id = i.inventory_id
INNER JOIN film f ON i.film_id = f.film_id
INNER JOIN film_category fc ON f.film_id = fc.film_id
INNER JOIN category c ON fc.category_id = c.category_id
GROUP BY 
    c.name
ORDER BY 
    avg_rental_duration DESC;
