# Find the top revenue generating customer by city and by country:

Fixed my query with ChatGPT help
SELECT total_amount_paid, customer_id, first_name, last_name, city, country  
FROM (
    SELECT 
        a.customer_id,                    
        b.first_name,                         
        b.last_name,                         
        e.country,                         
        d.city,                         
        SUM(a.amount) AS total_amount_paid                        
    FROM                         
        payment a                        
    INNER JOIN customer b ON a.customer_id = b.customer_id
    INNER JOIN address c ON b.address_id = c.address_id
    INNER JOIN city d ON c.city_id = d.city_id
    INNER JOIN country e ON d.country_id = e.country_id
    WHERE                         
        e.country IN (                        
            SELECT D.country
            FROM country D
            INNER JOIN city C ON D.country_id = C.country_id
            INNER JOIN address B ON C.city_id = B.city_id
            INNER JOIN customer A ON B.address_id = A.address_id
            GROUP BY D.country                        
            ORDER BY COUNT(A.customer_id) DESC                        
            LIMIT 10                        
        )                   
    GROUP BY 
        a.customer_id,                    
        b.first_name,                         
        b.last_name,                         
        e.country,                         
        d.city                         
    ORDER BY total_amount_paid DESC 
    LIMIT 10
) AS top_customers;  
