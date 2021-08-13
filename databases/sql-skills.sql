INSERT INTO artist (name)
VALUES ('The Killers');

INSERT INTO artist (name)
VALUES ('LCD Soundsystem');

INSERT INTO artist (name)
VALUES ('The Strokes');

SELECT * FROM artist
ORDER BY name
LIMIT 5;

SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';

SELECT * FROM employee
WHERE reports_to = 2;

SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge';

SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA';

SELECT total FROM invoice
ORDER BY total DESC
LIMIT 1;

SELECT total FROM invoice
ORDER BY total
LIMIT 1;

SELECT * FROM invoice 
WHERE total > 5;

SELECT * FROM invoice 
WHERE total < 5;

SELECT SUM(total) FROM invoice;

SELECT * FROM invoice i
JOIN invoice_line il
ON i.invoice_id = il.invoice_id
WHERE unit_price > 0.99;

SELECT invoice_date, c.first_name, c.last_name FROM invoice i
JOIN customer c
ON i.customer_id = c.customer_id;

SELECT c.first_name, c.last_name, e.first_name, e.last_name FROM customer AS c
JOIN employee AS e
ON c.support_rep_id = e.employee_id;

SELECT al.title AS Album, ar.name AS Artist FROM album al
JOIN artist ar
ON al.artist_id = ar.artist_id;

-- Extra Credit

SELECT * FROM artist
ORDER BY name DESC
LIMIT 10;

SELECT * FROM artist
WHERE name LIKE 'Black%';

SELECT * FROM artist
WHERE name LIKE '%Black%';

SELECT * FROM employee
ORDER BY birth_date DESC
LIMIT 1;

SELECT * FROM employee
ORDER BY birth_date
LIMIT 1;

SELECT COUNT(*) FROM invoice 
WHERE billing_state IN ('CA', 'TX', 'AZ');

SELECT AVG(total) FROM invoice;

SELECT track_id FROM playlist_track pt
JOIN playlist p
ON pt.playlist_id = p.playlist_id
WHERE p.name = 'Music';

SELECT name FROM track t
JOIN playlist_track pt
ON t.track_id = pt.track_id
WHERE playlist_id = 5;

SELECT t.name AS track, p.name AS playlist FROM track t
JOIN playlist_track pt
ON t.track_id = pt.track_id
JOIN playlist p
ON pt.playlist_id = p.playlist_id;

SELECT t.name AS track, a.title AS album FROM track t
JOIN album a
ON t.album_id = a.album_id
JOIN genre g
ON t.genre_id = g.genre_id
WHERE g.name = 'Alternative & Punk';