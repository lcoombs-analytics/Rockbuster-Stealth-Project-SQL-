# Top 10 revenue generating countries:

SELECT DISTINCT e.country, SUM(a.amount) AS total_revenue
FROM payment a
INNER JOIN customer b ON a.customer_id = b.customer_id
INNER JOIN address c ON b.address_id = c.address_id
INNER JOIN city d ON c.city_id = d.city_id
INNER JOIN country e ON d.country_id = e.country_id
GROUP BY e.country
ORDER BY total_revenue DESC
LIMIT 10;
