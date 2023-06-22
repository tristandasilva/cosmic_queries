SET search_path TO festival;

-- 1. Display which tickets the customer with the name Robert Johnson and date of birth November 21st, 1975 and
--    how much each ticket cost.

SELECT type, price
FROM customer
         inner join "order" o on customer.customer_id = o.customer_id
         inner join order_ticket ot on o.order_id = ot.order_id
         inner join ticket t on ot.ticket_id = t.ticket_id
WHERE first_name = 'Robert'
  AND last_name = 'Johnson'
  AND date_of_birth = '1975-11-21';

-- 2. Find all the artists whose set(s) start at or after 20h00 August 12th, 2023.
--    Display their full name, stage name, and start time of their set(s).

SELECT first_name, last_name, stage_name, start_time
FROM artist
    inner join artist_set a on artist.artist_id = a.artist_id
    inner join set s on a.set_id = s.set_id
WHERE start_time >= '20:00' AND date = '2023-08-12';

-- 3. Find the stages that have not been assigned production requirements yet.
--    List the stage name and genre.

SELECT name, genre
FROM stage
WHERE stage_id NOT IN (SELECT stage_id FROM stage_production);

-- 4. Find how many sets are being performed at each stage on August 13th, 2023
--    Display the stage name, genre, and number of sets performed there.
--    Only show the stages that have sets being performed that day.

SELECT name, genre, COUNT(s.stage_id) as nb_of_sets
FROM stage
    left join set s on s.stage_id = stage.stage_id
WHERE date = '2023-08-13'
GROUP BY name, genre;

-- 5. Find all the customer and staff who live in the United States.
--    List their full name and email address.

SELECT first_name, last_name, email
FROM customer
    inner join address a on a.address_id = customer.address_id
    inner join city c on c.city_id = a.city_id
    inner join country c2 on c2.country_id = c.country_id
WHERE country = 'United States'
UNION
SELECT first_name, last_name, email
FROM staff
    inner join address a on a.address_id = staff.address_id
    inner join city c on c.city_id = a.city_id
    inner join country c2 on c2.country_id = c.country_id
WHERE country = 'United States';