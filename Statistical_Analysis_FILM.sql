# Statistical Analysis - FILM

# Statistical Analysis – Film Numerical
Finding the MIN, MAX, AVG and COUNT of rental_rates:
SELECT MIN(rental_rate) AS Minimum_Rental_Rate,
MAX(rental_rate) AS Maximum_Rental_Rate,
AVG(rental_rate) AS Average_Rental_Rate,
COUNT(rental_rate) AS Count_Rental_Values,
COUNT (*) as Count_Rows
FROM film;


# Finding the MIN, MAX, AVG, COUNT of film length:
SELECT MIN(length) AS Minimum_Film_Running_Time,
MAX(length) AS Maximum_ Film_Running_Time,
AVG(length) AS Film_Running_Time,
COUNT(length) AS Count_Film_Running_Time,
COUNT (*) as Count_Rows
FROM film;


# Finding the MIN, MAX, AVG, COUNT of number of days rented:
SELECT MIN(rental_duration) AS Minimum_Days_Rented,
MAX(rental_duration) AS Maximum_Days_Rented,
AVG(rental_duration) AS Average_Number_of_Days_Rented,
COUNT(rental_duration) AS Count_Rental_Values,
COUNT (*) AS Count_Rows
FROM film;


# Finding the MIN, MAX, AVG, COUNT of replacement costs:
SELECT MIN(replacement_cost) AS Minimum_Replacement_Cost,
MAX(replacement_cost) AS Maximum_Replacement_Cost,
AVG(replacement_cost) AS Average_Replacement_Cost,
COUNT(replacement_cost) AS Count_Replacement_Values,
COUNT (*) AS Count_Rows
FROM film;


# Statistical Analysis – Film Non-Numerical
The MODE syntax below found that PG-13 is the most common occurring film rating.
SELECT MODE ()
WITHIN GROUP (ORDER BY rating)
AS modal_value
FROM film;

# The MODE syntax below found that Academy Dinosaur is the most common occurring film title.
SELECT MODE ()
WITHIN GROUP (ORDER BY title)
AS modal_value
FROM film;

# The MODE syntax below found that Afganistan is the most common occurring country.
SELECT MODE ()
WITHIN GROUP (ORDER BY country)
AS Most_Common_Country
FROM country;

# The MODE syntax below found that London is the most common occurring city.
SELECT MODE ()
WITHIN GROUP (ORDER BY city)
AS Most_Common_City
FROM city;
			
