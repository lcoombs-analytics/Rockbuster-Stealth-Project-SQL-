# Statistical Analysis – Customer Numerical

# Finding the MIN, MAX, AVG, COUNT of active customers:
SELECT MIN(active) AS Minimum_Active_Customers,
MAX(active) AS Maximum_Active_Customers,
AVG(active) AS Average_Active_Customers,
COUNT(active) AS Count_of_Active_Customers,
COUNT (*) as Count_Rows
FROM customer;
# There are 599 customers and the average active customer is approx. 1.  The “active” column is comprised of 1’s, meaning active and 0’s meaning not active. 


# Statistical Analysis – Customer Non-Numerical
# There are 15 inactive customers in the database.
SELECT customer_id, first_name, last_name, email, active
FROM customer
WHERE active = 0;
