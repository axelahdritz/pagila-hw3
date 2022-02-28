/*
 * Compute the number of customers who live outside of the US.
 */

SELECT COUNT(customer_id) AS count
FROM customer
JOIN address USING (address_id)
JOIN city USING (city_id)
JOIN country USING (country_id)
WHERE country_id != 103;
