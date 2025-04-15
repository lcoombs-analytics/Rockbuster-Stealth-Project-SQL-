# TOP 3 GENRES PER COUNTRY, making sure the countries are in the Top 10 Revenue generating countries
  # Used WINDOWS function for the first time here

SELECT * FROM(	
SELECT ROW_NUMBER() OVER (PARTITION BY m.country ORDER BY SUM(a.amount) DESC) AS ROW_NUMBER, F.name AS Genre, m.country,	
       SUM(A.amount) AS Total_Revenue	
FROM payment A	
INNER JOIN rental B ON A.rental_id = B.rental_id 	
INNER JOIN inventory C ON B.inventory_id = C.inventory_id	
INNER JOIN film D ON C.film_id = D.film_id	
INNER JOIN film_category E ON D.film_id = E.film_id	
INNER JOIN category F ON E.category_id = F.category_id	
	INNER JOIN (SELECT DISTINCT e.country, b.customer_id, SUM(a.amount) AS total_revenue
FROM payment a	
INNER JOIN customer b ON a.customer_id = b.customer_id	
INNER JOIN address c ON b.address_id = c.address_id	
INNER JOIN city d ON c.city_id = d.city_id	
INNER JOIN country e ON d.country_id = e.country_id	
GROUP BY e.country, b.customer_id	
) AS M ON M.customer_id = b.customer_id	
GROUP BY F.name, m.country	
ORDER BY 3,4 DESC	
	) WHERE row_number IN (1,2,3);
