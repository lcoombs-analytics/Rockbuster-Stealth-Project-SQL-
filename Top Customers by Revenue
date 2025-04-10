# Top 10 customers by  - REVENUE
SELECT DISTINCT A.first_name, A.last_name, SUM(B.amount) AS total_amount_paid
FROM customer A
INNER JOIN payment B ON A.customer_id = B.customer_id
GROUP BY A.first_name, A.last_name, A.customer_id
ORDER BY total_amount_paid DESC
LIMIT 10;
