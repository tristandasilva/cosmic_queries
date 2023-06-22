SET search_path TO festival;

INSERT INTO country (country)
VALUES ('Canada'),
       ('United States');

INSERT INTO city (city, country_id)
VALUES ('Toronto', 1),
       ('Montreal', 1),
       ('Vancouver', 1),
       ('Ottawa', 1),
       ('Los Angeles', 2),
       ('San Francisco', 2),
       ('Miami', 2),
       ('San Diego', 2);

INSERT INTO address (address_line1, address_line2, district, postal_code, phone, city_id)
VALUES ('2529 Victoria Park Ave', null, 'Ontario', 'M4A 2M5', '416-612-5210', 1),
       ('2446 Carling Avenue', null, 'Ontario', 'K1Z 7B5', '613-864-4938', 4),
       ('1648 Bay Street', null, 'Ontario', 'M5J 2R8', '416-879-4398', 1),
       ('1563 Hastings Street', 'Apartment 21', 'British Columbia', 'V6C 1B4', '778-883-4062', 3),
       ('792 Avenue Papineau', 'Lower Level', 'Quebec', 'H2K 4J5', '514-924-7149', 2),
       ('132 Main Street', null, 'West Hollywood', '90012', '213-557-1234', 2),
       ('124 Elm Street', null, 'North Park', '92101', '619-555-1234', 8),
       ('5678 Pine Avenue', 'Apt 3C', 'Hillcrest', '92103', '619-555-5678', 8),
       ('456 Oak Avenue', 'Apt 2B', 'Beverly Hills', '90210', '213-535-5678', 5),
       ('789 Maple Boulevard', null, 'Westwood', '90024', '323-555-9012', 5),
       ('3972 Ridenour Street', null, 'Florida', '33169', '305-245-2469', 7),
       ('13 Beverly Street', null, 'California', '90012', '217-555-1224', 5),
       ('421 Heartwood Avenue', 'Apartment 402', 'California', '90210', '213-555-5678', 5),
       ('789 Maple Boulevard', null, 'California', '90024', '217-555-9012', 5),
       ('101 Collins Avenue', null, 'Florida', '33139', '305-555-3456', 7),
       ('234 Ocean Drive', null, 'Florida', '33139', '305-555-6789', 7);


INSERT INTO customer (first_name, last_name, email, date_of_birth, emerg_contact_firstname, emerg_contact_lastname,
                      emerg_contact_phone, address_id)
VALUES ('Emily', 'Davis', 'emilydavis@example.com', '1990-01-01', 'Samantha', 'Jones', '555-123-456', 1),
       ('David', 'Taylor', 'davidtaylor@example.com', '1988-05-12', 'Michael', 'Smith', '555-234-567', 2),
       ('Melanie', 'Anderson', 'melanieanderson@example.com', '1975-11-21', 'Emily', 'Brown', '555-345-678', 3),
       ('Jason', 'Moore', 'jasonmoore@example.com', '1995-03-07', 'David', 'Johnson', '555-456-789', 4),
       ('John', 'Doe', 'johndoe@example.com', '1990-01-01', 'Samantha', 'Jones', '555-123-456', 5),
       ('Jane', 'Doe', 'janedoe@example.com', '1988-05-12', 'Michael', 'Smith', '555-234-567', 6),
       ('Robert', 'Johnson', 'robertjohnson@example.com', '1975-11-21', 'Emily', 'Davis', '555-345-678', 7),
       ('Sarah', 'Wilson', 'sarahwilson@example.com', '1995-03-07', 'David', 'Taylor', '555-456-789', 8),
       ('Jessica', 'Clark', 'jessicaclark@example.com', '1982-09-15', 'Jason', 'Moore', '555-567-890', 9),
       ('Alex', 'Garcia', 'alexgarcia@example.com', '1990-02-14', 'Sophia', 'Nguyen', '555-123-456', 10);


INSERT INTO ticket (type, price)
VALUES ('Single-day', 180.00),
       ('General admission - early bird', 280.00),
       ('General admission - Tier 1', 320.00),
       ('General admission - Tier 2', 380.00),
       ('VIP - early bird', 400),
       ('VIP', 500),
       ('Artist pass', null),
       ('Staff pass', null),
       ('Camping pass', 200.00),
       ('Backstage pass', 550.00);

INSERT INTO "order"(subtotal, tax, shipping_cost, total, payment_method, customer_id)
VALUES (320.00 + 200.00, 67.60, 15.00, 602.60, 'Visa', 1),
       (400.00 + 550.00, 117.00, 15.00, 1032.00, 'Visa', 2),
       (280.00, 36.4, 0, 316.4, 'Mastercard', 3),
       (280.00 + 200.00, 62.4, 0, 542.40, 'Paypal', 4),
       (280, 62.4, 15, 357.40, 'Amex', 5),
       (180.00, 23.40, 15, 218.40, 'Interact', 6),
       (320.00 + 200.00 + 550.00, 132.60, 15, 1167.60, 'Mastercard', 7),
       (500.00, 65.00, 0, 565.00, 'Visa', 8),
       (380.00, 57.00, 0, 437.00, 'Mastercard', 9),
       (180.00 + 550.00, 94.90, 15, 839.90, 'Paypal', 10);

INSERT INTO order_ticket(order_id, ticket_id)
VALUES (1, 3),
       (1, 9),
       (2, 5),
       (2, 10),
       (3, 2),
       (4, 2),
       (4, 9),
       (5, 2),
       (6, 1),
       (7, 3),
       (7, 9),
       (7, 10),
       (8, 6),
       (9, 4),
       (10, 1),
       (10, 10);

INSERT INTO staff(first_name, last_name, date_of_birth, email, role, hourly_pay, address_id, ticket_id)
VALUES ('Joel', 'Smith', '1990-01-01', 'joelsmith@example.com', 'Volunteer', 0, 10, 8),
       ('Jenna', 'Martin', '1988-05-12', 'jennamartin@example.com', 'Medical', 15.0, 11, 8),
       ('Robert', 'Jenkins', '1975-11-21', 'robertjohnson@example.com', 'Production', 20.0, 12, 8),
       ('Sarah', 'Watson', '1995-03-07', 'sarahwatson@example.com', 'Management', 25.0, 13, null),
       ('Jessica', 'Clinton', '1982-09-15', 'jessicaclinton@example.com', 'General', 10.0, 14, null),
       ('Timothy', 'James', '1971-12-05', 'timothyjames@example.com', 'Production', 20.0, 15, 8),
       ('Patricia', 'Jackson', '1991-02-10', 'patriciajackson@example.com', 'Management', 25.0, 16, 8);

INSERT INTO artist(first_name, last_name, date_of_birth, email, stage_name, address_id, ticket_id)
VALUES ('Aria', 'Patel', '1985-03-23', 'johnsmith@example.com', null, null, 7),
       ('Maria', 'Garcia', '1990-07-12', 'mariagarcia@example.com', 'Mystic Mari', null, 7),
       ('Robert', 'Lee', '1995-11-04', 'robertlee@example.com', 'Bobby Beats', null, 7),
       ('Lisa', 'Kim', '1988-09-15', 'lisakim@example.com', 'DJ Lisa Love', null, 7),
       ('David', 'Choi', '1992-04-30', 'davidchoi@example.com', 'Electric Dave', null, 7),
       ('Savannah', 'Johnson', '1991-02-03', 'savannahjohnson@example.com', 'Skye Siren', null, 7),
       ('Landon', 'Garcia', '1992-06-14', 'landongarcia@example.com', 'Lunar Lights', null, 7),
       ('Avery', 'Lee', '1994-09-19', 'averylee@example.com', 'Astro Avery', null, 7),
       ('Owen', 'Kim', '1988-11-05', 'owenkim@example.com', 'Cosmic Owl', null, 7),
       ('Violet', 'Singh', '1990-04-22', 'violetsingh@example.com', 'Nova Violette', null, 7),
       ('Jasmine', 'Bowles', '1993-08-12', 'jasminebowles@example.com', 'Electra', null, 7),
       ('Aiden', 'Martinez', '1997-01-30', 'aidenmartinez@example.com', 'Neon Phoenix', null, 7),
       ('Evelyn', 'Wong', '1996-05-04', 'evelynwong@example.com', 'Galactic Girl', null, 7),
       ('Isaac', 'Chen', '1990-12-20', 'isaacchen@example.com', 'Nebula Nate', null, 7),
       ('Hazel', 'Grigos', '1995-02-14', 'hazelgrigos@example.com', 'Cosmic Kitten', null, 7),
       ('Nina', 'Gonzalez', '1994-11-21', 'ninagonzalez@example.com', 'Starry Night', null, 7),
       ('Ethan', 'Liu', '1993-03-05', 'ethanliu@example.com', 'Galactic Groove', null, 7),
       ('Sophie', 'Chang', '1998-09-17', 'sophiechang@example.com', 'Cosmic Symphony', null, 7),
       ('Jacob', 'Nguyen', '1991-07-28', 'jacobnguyen@example.com', 'Solar Serenade', null, 7),
       ('Olivia', 'Wang', '1996-01-16', 'oliviawang@example.com', 'Aurora Borealis', null, 7);

INSERT INTO amenity(type)
VALUES ('Restroom'),
       ('Water station'),
       ('Shade structure'),
       ('Medical tent'),
       ('Info booth'),
       ('Charging station'),
       ('ATM');

INSERT INTO vendor(name, type)
VALUES ('Smoking BBQ', 'Food truck'),
       ('Asian Sensation', 'Food truck'),
       ('Waffle Love', 'Food truck'),
       ('Kogi BBQ', 'Food truck'),
       ('Smoothiez', 'Food truck'),
       ('Artist merch tent', 'Merchandise tent'),
       ('General merch tent', 'Merchandise tent'),
       ('VIP Bar', 'Beverage stand'),
       ('General bar', 'Beverage stand'),
       ('Gemstone Grotto', 'Artisan'),
       ('Radiance', 'Artisan'),
       ('Dazzle & Delight', 'Artisan');

INSERT INTO production(type)
VALUES('Spotlight'),
      ('Laser-beams'),
      ('Special effects lighting'),
      ('Main speaker'),
      ('Subwoofer'),
      ('Mixing console'),
      ('CO2 Cannon'),
      ('Confetti'),
      ('LED video wall'),
      ('Generator'),
      ('Monitor');

INSERT INTO location(latitude, longitude)
VALUES(34.0575, -118.2459),
      (34.0567, -118.2447),
      (34.0584, -118.2475),
      (34.0561, -118.2438),
      (34.0588, -118.2464),
      (34.0571, -118.2430),
      (34.0589, -118.2482),
      (34.0558, -118.2413),
      (34.0576, -118.2487),
      (34.0573, -118.2498),
      (34.0572, -118.2416),
      (34.0560, -118.2469),
      (34.0596, -118.2456),
      (34.0567, -118.2424),
      (34.0581, -118.2501),
      (34.0551, -118.2459),
      (34.0597, -118.2444),
      (34.0566, -118.2427),
      (34.0545, -118.2454),
      (34.0566, -118.2431),
      (34.0583, -118.2484),
      (34.0598, -118.2488);

INSERT INTO stage(name, size, genre, location_id)
VALUES ('Cosmic Meadows', null, 'Dubstep', 1),
       ('Interstellar Pavilion', null, 'Drum and bass', 2),
       ('Nebula Arena', null, 'Mainstage', 3),
       ('Galaxy Groove Dome', null, 'House', 4),
       ('Starlight Stage', null, 'Trance', 5);

INSERT INTO set(start_time, end_time, date, stage_id)
VALUES ('16:20', '18:20', '2023-08-12', 3),
       ('18:25', '19:55', '2023-08-12', 3),
       ('20:05', '21:35', '2023-08-12', 3),
       ('21:45', '23:00', '2023-08-12', 3),
       ('14:15', '15:30', '2023-08-12', 1),
       ('15:30', '16:45', '2023-08-12', 1),
       ('16:45', '18:20', '2023-08-12', 1),
       ('18:30', '20:00', '2023-08-12', 1),
       ('19:30', '20:30', '2023-08-12', 2),
       ('20:35', '21:45', '2023-08-12', 2),
       ('21:45', '23:00', '2023-08-12', 2),
       ('17:45', '19:00', '2023-08-13', 3),
       ('19:05', '20:20', '2023-08-13', 3),
       ('20:25', '21:40', '2023-08-13', 3),
       ('21:45', '23:00', '2023-08-13', 3),
       ('18:30', '19:30', '2023-08-13', 5),
       ('19:40', '20:55', '2023-08-13', 5),
       ('21:00', '23:00', '2023-08-13', 5),
       ('13:45', '14:45', '2023-08-13', 4),
       ('14:45', '15:55', '2023-08-13', 4);

INSERT INTO artist_set(artist_id, set_id)
VALuES (1, 1),
       (3, 1),
       (2, 2),
       (3, 3),
       (4, 4),
       (5, 4),
       (5, 5),
       (2, 6),
       (1, 6),
       (5, 6),
       (6, 7),
       (7, 8),
       (8, 8),
       (8, 9),
       (9, 9),
       (10, 10),
       (7, 10),
       (11,10),
       (12, 11),
       (13, 12),
       (14, 13),
       (11, 13),
       (2, 14),
       (15, 15),
       (16, 15),
       (17, 16),
       (18, 17),
       (19, 18),
       (20, 19),
       (7, 20),
       (8, 20);

INSERT INTO amenity_location(amenity_id, location_id)
VALUES(1, 6),
      (6, 10),
      (1, 7),
      (5, 8),
      (2, 9),
      (2, 11),
      (3, 12),
      (3, 13),
      (4, 14),
      (4, 15),
      (7, 16),
      (5, 17),
      (7, 8);

INSERT INTO vendor_location(vendor_id, location_id)
VALUES(1, 18),
      (1, 19),
      (2, 20),
      (3, 21),
      (4, 22);

INSERT INTO stage_production(stage_id, prod_id)
VALUES (3, 1),
       (3, 2),
       (3, 3),
       (3, 10),
       (3, 4),
       (3, 5),
       (3, 7),
       (3, 6),
       (3, 8),
       (3, 9),
       (3, 11),
       (1, 4),
       (1, 6),
       (1, 7),
       (1, 2),
       (2, 4),
       (2, 6),
       (2, 2),
       (2, 11);

UPDATE ticket
SET price = 320
WHERE ticket_id = 3;