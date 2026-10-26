USE shopdb1;


-- Level 1 — Basic JOIN
-- 1. Display each customer's name and payment amount.
SELECT c.full_name, p.amount
FROM
customer AS c	
JOIN
payment AS p
ON c.customer_id = p.customer_id;


-- 2. Display customer names along with their payment mode.
SELECT c.full_name, p.mode
FROM
customer AS c
JOIN
payment AS p
ON c.customer_id = p.customer_id;


-- 3. Display customer names, payment amounts, and payment dates.
SELECT c.full_name, p.amount, p.payment_date
FROM
customer AS c
JOIN
payment AS p
ON c.customer_id = p.customer_id;


-- 4. Display customer names with their address.
SELECT c.full_name, a.address
FROM
customer AS c
JOIN
address AS a
ON c.address_id = a.address_id;


-- 5. Display customer names with their city.
SELECT c.full_name, co.city
FROM
customer AS c
JOIN
address AS a
ON c.address_id = a.address_id
JOIN
country AS co
ON a.city_id = co.city_id;


-- 6. Display customer names with their city and country.
SELECT c.full_name, co.city, co.country
FROM
customer AS c
JOIN
address AS a
ON c.address_id = a.address_id
JOIN
country AS co
ON a.city_id = co.city_id;


-- 7. Display customer names, phone numbers, and postal codes.
SELECT c.full_name, a.phone, a.postal_code
FROM customer AS c
INNER JOIN address AS a
ON c.address_id = a.address_id;


-- 8. Display customer names with their email and payment mode.
SELECT c.full_name, c.email, p.mode
FROM
customer AS c
JOIN
payment AS p
ON c.customer_id = p.customer_id;


-- 9. Display all payments with customer names, sorted by payment amount in descending order.
SELECT c.full_name, p.amount, p.payment_date
FROM
customer AS c
JOIN
payment AS p
ON c.customer_id = p.customer_id
ORDER BY p.amount DESC;


-- 10. Display customer names, city, payment amount, and payment date.
SELECT c.full_name, co.city, p.amount, p.payment_date
FROM
customer AS c
JOIN
address AS a
ON c.address_id = a.address_id
JOIN
country AS co
ON a.city_id = co.city_id
JOIN
payment AS p
ON c.customer_id = p.customer_id;


-- Level 2 — Filtering with JOIN
-- 11. Display customer names and payment amounts for UPI payments.
SELECT c.full_name, p.amount
FROM
customer AS c
JOIN
payment AS p
ON c.customer_id = p.customer_id
WHERE p.mode = 'UPI';


-- 12. Display customer names and payment details for payments greater than ₹3,000.
SELECT c.full_name, p.amount, p.mode, p.payment_date
FROM
customer AS c
JOIN
payment AS p
ON c.customer_id = p.customer_id
WHERE p.amount > 3000;


-- 13. Display customer names and payment dates for payments made during March 2026.
SELECT c.full_name, p.payment_date, p.amount
FROM
customer AS c
JOIN payment AS p
ON c.customer_id = p.customer_id
WHERE p.payment_date BETWEEN '2026-03-01' AND '2026-03-31';


-- 14. Display customers who paid using Card and whose age is greater than 30.
SELECT c.full_name, c.age, p.amount, p.mode
FROM
customer AS c
JOIN
payment AS p
ON c.customer_id = p.customer_id
WHERE p.mode = 'Card' AND c.age > 30;


-- 15. Display customer names and city names for customers living in India.
SELECT c.full_name, co.city, co.country
FROM
customer AS c
JOIN
address AS a
ON c.address_id = a.address_id
JOIN
country AS co
ON a.city_id = co.city_id
WHERE co.country = 'India';


-- 16. Display customer names and payment details for payments made after 31 March 2026.
SELECT c.full_name, p.amount, p.mode, p.payment_date
FROM
customer AS c
JOIN
payment AS p
ON c.customer_id = p.customer_id
WHERE p.payment_date > '2026-03-31';


-- 17. Display customers living in London with their payment details.
SELECT c.full_name, co.city, p.amount, p.mode
FROM
customer AS c
JOIN
address AS a
ON c.address_id = a.address_id
JOIN
country AS co
ON a.city_id = co.city_id
JOIN
payment AS p
ON c.customer_id = p.customer_id
WHERE co.city = 'London';


-- 18. Display customer names and payment details for Cash or Net Banking payments.
SELECT c.full_name, p.amount, p.mode, p.payment_date
FROM
customer AS c
JOIN
payment AS p
ON c.customer_id = p.customer_id
WHERE p.mode IN ('Cash', 'Net Banking');


-- 19. Display customers who live in India and have made a payment greater than ₹2,500.
SELECT c.full_name, co.city, p.amount
FROM
customer AS c
JOIN
address AS a
ON c.address_id = a.address_id
JOIN
country AS co
ON a.city_id = co.city_id
JOIN
payment AS p
ON c.customer_id = p.customer_id
WHERE co.country = 'India' AND p.amount > 2500;


-- 20. Display all payment records for customers whose names start with A.
SELECT c.full_name, p.amount, p.mode, p.payment_date
FROM
customer AS c
JOIN
payment AS p
ON c.customer_id = p.customer_id
WHERE c.full_name LIKE 'A%';



-- Level 3 — Aggregate Functions with JOIN
-- 21. Display each customer's name and total payment amount.
SELECT c.full_name, SUM(p.amount) AS total_payment
FROM customer AS c
INNER JOIN payment AS p
ON c.customer_id = p.customer_id
GROUP BY c.customer_id, c.full_name;


-- 22. Display each customer's name and number of payments.
SELECT c.full_name, COUNT(p.payment_id) AS total_transactions
FROM customer AS c
INNER JOIN payment AS p
ON c.customer_id = p.customer_id
GROUP BY c.customer_id, c.full_name;


-- 23. Display each customer's highest payment amount.
SELECT c.full_name, MAX(p.amount) AS highest_payment
FROM customer AS c
INNER JOIN payment AS p
ON c.customer_id = p.customer_id
GROUP BY c.customer_id, c.full_name;


-- 24. Display each customer's lowest payment amount.
SELECT c.full_name, MIN(p.amount) AS lowest_payment
FROM customer AS c
INNER JOIN payment AS p
ON c.customer_id = p.customer_id
GROUP BY c.customer_id, c.full_name;


-- 25. Display each payment mode and total amount collected.
SELECT p.mode, SUM(p.amount) AS total_collection
FROM payment AS p
GROUP BY p.mode;


-- 26. Display each city and total payment collected from its customers.
SELECT co.city, SUM(p.amount) AS total_collection
FROM country AS co
INNER JOIN address AS a
ON co.city_id = a.city_id
INNER JOIN customer AS c
ON a.address_id = c.address_id
INNER JOIN payment AS p
ON c.customer_id = p.customer_id
GROUP BY co.city;


-- 27. Display each country and total amount collected from its customers.
SELECT co.country, SUM(p.amount) AS total_collection
FROM country AS co
INNER JOIN address AS a
ON co.city_id = a.city_id
INNER JOIN customer AS c
ON a.address_id = c.address_id
INNER JOIN payment AS p
ON c.customer_id = p.customer_id
GROUP BY co.country;


-- 28. Display customers whose total payments exceed ₹4,000.
SELECT c.full_name, SUM(p.amount) AS total_payment
FROM customer AS c
INNER JOIN payment AS p
ON c.customer_id = p.customer_id
GROUP BY c.customer_id, c.full_name
HAVING SUM(p.amount) > 4000;


-- 29. Display each payment mode and its number of transactions.
SELECT p.mode, COUNT(p.payment_id) AS total_transactions
FROM payment AS p
GROUP BY p.mode;


-- 30. Display the average payment amount for each country.
SELECT co.country, AVG(p.amount) AS average_payment
FROM country AS co
INNER JOIN address AS a
ON co.city_id = a.city_id
INNER JOIN customer AS c
ON a.address_id = c.address_id
INNER JOIN payment AS p
ON c.customer_id = p.customer_id
GROUP BY co.country;


-- Teaching point: WHERE filters individual rows before grouping. HAVING filters groups after GROUP BY.

-- Level 4 — Advanced JOIN Questions
-- 31. Display all customers, including those who have not made any payment.
SELECT c.full_name, p.amount, p.mode, p.payment_date
FROM customer AS c
LEFT JOIN payment AS p
ON c.customer_id = p.customer_id;


-- 32. Display customers who have never made a payment.
SELECT c.customer_id, c.full_name
FROM customer AS c
LEFT JOIN payment AS p
ON c.customer_id = p.customer_id
WHERE p.payment_id IS NULL;


-- With your current data, this returns zero rows, because every customer has at least one payment.
-- 33. Display all cities, including cities without registered customers.
SELECT co.city, co.country, c.full_name
FROM country AS co
LEFT JOIN address AS a
ON co.city_id = a.city_id
LEFT JOIN customer AS c
ON a.address_id = c.address_id;


-- This retains every city, even if no customer is associated with it.
-- 34. Display customers who have made more than one payment.
SELECT c.full_name, COUNT(p.payment_id) AS total_transactions
FROM customer AS c
INNER JOIN payment AS p
ON c.customer_id = p.customer_id
GROUP BY c.customer_id, c.full_name
HAVING COUNT(p.payment_id) > 1;


-- 35. Display the customer who has made the highest total payment.
SELECT c.full_name, SUM(p.amount) AS total_payment
FROM customer AS c
INNER JOIN payment AS p
ON c.customer_id = p.customer_id
GROUP BY c.customer_id, c.full_name
ORDER BY total_payment DESC
LIMIT 1;


-- 36. Display customer name, city, and total amount paid, sorted highest to lowest.
SELECT
    c.full_name,
    co.city,
    SUM(p.amount) AS total_payment
FROM customer AS c
INNER JOIN address AS a
ON c.address_id = a.address_id
INNER JOIN country AS co
ON a.city_id = co.city_id
INNER JOIN payment AS p
ON c.customer_id = p.customer_id
GROUP BY c.customer_id, c.full_name, co.city
ORDER BY total_payment DESC;


-- 37. Display customers whose total payment is greater than the average total payment per customer.
SELECT c.full_name, SUM(p.amount) AS total_payment
FROM customer AS c
INNER JOIN payment AS p
ON c.customer_id = p.customer_id
GROUP BY c.customer_id, c.full_name
HAVING SUM(p.amount) > (
    SELECT AVG(customer_total)
    FROM (
        SELECT SUM(amount) AS customer_total
        FROM payment
        GROUP BY customer_id
    ) AS totals
);


-- How it works:
-- 1. The innermost query calculates the total payment for each customer.
-- 2. The next query calculates the average of those customer totals.
-- 3. The outer query calculates each customer's total and keeps only those above that average.
-- 38. Display the country with the highest total payment collection.
SELECT co.country, SUM(p.amount) AS total_collection
FROM country AS co
INNER JOIN address AS a
ON co.city_id = a.city_id
INNER JOIN customer AS c
ON a.address_id = c.address_id
INNER JOIN payment AS p
ON c.customer_id = p.customer_id
GROUP BY co.country
ORDER BY total_collection DESC
LIMIT 1;


-- 39. Display customers who have used more than one distinct payment mode.
SELECT
    c.full_name,
    COUNT(DISTINCT p.mode) AS different_modes
FROM customer AS c
INNER JOIN payment AS p
ON c.customer_id = p.customer_id
GROUP BY c.customer_id, c.full_name
HAVING COUNT(DISTINCT p.mode) > 1;


-- 40. Display each customer's name, city, country, total payments, transaction count, and most recent payment date.
SELECT
    c.full_name,
    co.city,
    co.country,
    SUM(p.amount) AS total_payments,
    COUNT(p.payment_id) AS transaction_count,
    MAX(p.payment_date) AS last_payment_date
FROM customer AS c
INNER JOIN address AS a
ON c.address_id = a.address_id
INNER JOIN country AS co
ON a.city_id = co.city_id
INNER JOIN payment AS p
ON c.customer_id = p.customer_id
GROUP BY
    c.customer_id,
    c.full_name,
    co.city,
    co.country
ORDER BY total_payments DESC;









SELECT c.full_name, p.amount, p.mode
FROM customer AS c
INNER JOIN payment AS p
ON c.customer_id = p.customer_id;



SELECT c.full_name, p.amount, p.mode
FROM customer AS c
LEFT JOIN payment AS p
ON c.customer_id = p.customer_id;


SELECT c.full_name, p.amount, p.mode
FROM customer AS c
RIGHT JOIN payment AS p
ON c.customer_id = p.customer_id;







SELECT c.customer_id, c.full_name, p.amount, p.mode
FROM customer AS c
LEFT JOIN payment AS p
ON c.customer_id = p.customer_id

UNION

SELECT c.customer_id, c.full_name, p.amount, p.mode
FROM customer AS c
RIGHT JOIN payment AS p
ON c.customer_id = p.customer_id;



INSERT INTO customer
(full_name, email, age, address_id)
VALUES
('Test Customer', 'test@example.com', 25, 1);


SELECT
    c.customer_id,
    c.full_name,
    p.payment_id,
    p.amount,
    p.mode
FROM customer AS c
LEFT JOIN payment AS p
ON c.customer_id = p.customer_id;





SELECT c.customer_id, c.full_name
FROM customer AS c
LEFT JOIN payment AS p
ON c.customer_id = p.customer_id
WHERE p.payment_id IS NULL;


INSERT INTO customer (full_name, email, age, address_id)
VALUES
('Amit Sharma', 'amit.sharma@example.com', 28, 2),
('Priya Verma', 'priya.verma@example.com', 25, 5),
('Rahul Singh', 'rahul.singh@example.com', 32, 10),
('Neha Gupta', 'neha.gupta@example.com', 26, 15),
('Karan Mehta', 'karan.mehta@example.com', 22, 20);



INSERT INTO country (city, country) VALUES
('Ajmer', 'India'),
('Doha', 'Qatar'),
('Tokyo', 'Japan');



INSERT INTO address (address, city_id, postal_code, phone) VALUES
('Civil Lines', 41, '305001', '9000000101'),
('West Bay', 42, '00000', '9000000102');


INSERT INTO customer (full_name, email, age, address_id) VALUES
('Dev Sharma', 'dev.join@example.com', 28, 41),
('Isha Kapoor', 'isha.join@example.com', 24, 42),
('Mohit Arora', 'mohit.join@example.com', 31, 41),
('Tara Joshi', 'tara.join@example.com', 27, 42);


SET FOREIGN_KEY_CHECKS = 0;

INSERT INTO payment (customer_id, amount, mode) VALUES
(41, 1500, 'UPI'),
(41, 2500, 'Card'),
(42, 3200, 'Cash');


SET FOREIGN_KEY_CHECKS = 1; 



SELECT c.customer_id, c.full_name, c.email FROM customer AS c
WHERE NOT EXISTS (SELECT 1 FROM payment AS p WHERE p.customer_id = c.customer_id);

SELECT c.customer_id, c.full_name, c.email FROM customer AS c
LEFT JOIN payment AS p ON c.customer_id = p.customer_id WHERE p.payment_id IS NULL;



SELECT p.payment_id, p.customer_id, p.amount, p.mode, p.payment_date
FROM customer AS c RIGHT JOIN payment AS p
ON c.customer_id = p.customer_id
WHERE c.customer_id IS NULL;

SELECT * FROM payment WHERE customer_id NOT IN ( SELECT customer_id FROM customer);



SELECT c.customer_id, c.full_name, p.payment_id, p.amount, p.mode
FROM customer AS c LEFT JOIN payment AS p
ON c.customer_id = p.customer_id

UNION ALL

SELECT c.customer_id, c.full_name, p.payment_id, p.amount, p.mode
FROM customer AS c RIGHT JOIN payment AS p
ON c.customer_id = p.customer_id
WHERE c.customer_id IS NULL;





SELECT c.customer_id, c.full_name, p.payment_id, p.amount, p.mode
FROM customer AS c, payment AS p
WHERE c.customer_id = p.customer_id

UNION ALL

SELECT c.customer_id, c.full_name, NULL AS payment_id, NULL AS amount, NULL AS mode
FROM customer AS c
WHERE NOT EXISTS (SELECT 1 FROM payment AS p WHERE p.customer_id = c.customer_id)

UNION ALL

SELECT NULL AS customer_id, NULL AS full_name, p.payment_id, p.amount, p.mode
FROM payment AS p
WHERE NOT EXISTS ( SELECT 1 FROM customer AS c WHERE c.customer_id = p.customer_id);