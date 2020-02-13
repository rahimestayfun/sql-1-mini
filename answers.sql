-- SELECT all the data FROM the artist table.
SELECT * FROM artist;

-- SELECT the first_name, last_name, and country FROM the employee table.
SELECT first_name,last_name,country FROM employee;

-- SELECT the name, composer, and milliseconds FROM the track table WHERE the milliseconds are greater than 299000.
SELECT name,composer FROM track
WHERE milliseconds > 299000;

-- SELECT the count FROM the track table WHERE the milliseconds are greater than 299000.
SELECT COUNT(*) FROM track
WHERE milliseconds > 299000;


-- BLACK DIAMOND
-- Find the average length of all tracks in milliseconds
SELECT AVG(milliseconds) FROM track;

-- Find the number of invoices in the USA
SELECT COUNT(total) from invoice
WHERE billing_country IN ('USA');

-- Make a list of all the First Names of Customers that contain an 'a'
SELECT first_name FROM customer
WHERE first_name LIKE '%a%';

-- Make a list of the 10 longest tracks
SELECT * FROM track
ORDER BY milliseconds DESC
LIMIT 10;

-- Make a list of the 20 shortest tracks
SELECT * FROM track
ORDER BY milliseconds ASC
LIMIT 20;

-- Find all the customers that live in California or Washington
SELECT * FROM customer
WHERE state IN ('CA', 'WA');
-- WHERE state='CA' OR state='WA';

-- Find all the customers that live in California, Washington, Utah, Florida, or Arizona (Use IN keyword)
SELECT * FROM customer
WHERE state IN ('CA', 'WA','UT','FL','AZ');

-- Insert an artist to the database
INSERT INTO artist(name)
  VALUES ('Emily');
SELECT * FROM artist;

-- Insert yourself as a customer to the database
INSERT INTO artist(name)
  VALUES ('Rahime Tayfun');
SELECT * FROM artist;

-- Find a list of all Playlists that start with Classical
SELECT * FROM playlist
WHERE name LIKE 'Classical%';
