
-- 1.SELECT all the data FROM the artist table.
SELECT * FROM artist;

-- 
SELECT first_name, last_name, country FROM employee;

-- 2.SELECT name,composer,milliseconds FROM track
WHERE milliseconds>299000;

-- 3.SELECT the count FROM the track table WHERE the milliseconds are greater than 299000.
SELECT count(*) FROM track 
WHERE milliseconds >299000;

-- 4.SELECT the count FROM the track table WHERE the milliseconds are greater than 299000.
SELECT COUNT(*) FROM track
WHERE milliseconds> 299000;

--BLACK DIAMOND

--1. Find the average length of all tracks in milliseconds
SELECT AVG(milliseconds) FROM track;

--2. Find the number of invoices in the USA
SELECT COUNT(total) FROM invoice
WHERE billing_country='USA';

--3. Make a list of all the First Names of Customers that contain an 'a'
SELECT first_name FROM customer
WHERE first_name LIKE '%a%';

-- 4. Make a list of the 10 longest tracks
SELECT * FROM track
ORDER BY  milliseconds DESC
LIMIT 10;

--5. Make a list of the 20 shortest tracks
SELECT * FROM track
ORDER BY  milliseconds ASC
LIMIT 20;

--6. Find all the customers that live in California or Washington
SELECT * FROM customer
WHERE state IN ('CA','WA');
--
SELECT * FROM customer
WHERE state='CA' or state='WA';

--7. Find all the customers that live in California, Washington, Utah, Florida, or Arizona (Use IN keyword
SELECT * FROM customer
WHERE state IN ('CA','WA','UT','FL','AZ');

--8. Insert an artist to the database
INSERT INTO artist (name)
VALUES ('Tarkan');

--9. Insert yourself as a customer to the databas

--10. Find a list of all Playlists that start with `Classical` 
SELECT * FROM playlist
WHERE name LIKE 'Classical%';

