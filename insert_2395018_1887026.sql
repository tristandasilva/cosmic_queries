SET search_path TO festival;

INSERT INTO country (country)
VALUES ('Canada'),
       ('United States'),
       ('Australia'),
       ('China'),
       ('Brazil'),
       ('Russia'),
       ('Mexico'),
       ('Japan'),
       ('United Kingdom'),
       ('France');

INSERT INTO city (city, country_id)
VALUES ('Toronto', 1),
       ('Montreal', 1),
       ('Vancouver', 1),
       ('Ottawa', 1),
       ('Los Angeles', 2),
       ('San Francisco', 2),
       ('Miami', 2),
       ('San Diego', 2),
       ('New York', 2),
       ('Sydney', 3),
       ('Brisbane', 3),
       ('Melbourne', 3),
       ('Rio de Janeiro', 5),
       ('Tokyo', 8),
       ('Kyoto', 8),
       ('London', 9),
       ('Manchester', 9),
       ('Paris', 10),
       ('Nice', 10);

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
       ('Sarah', 'Wilson', '1995-03-07', 'sarahwilson@example.com', 'Management', 25.0, 13, null),
       ('Jessica', 'Clark', '1982-09-15', 'jessicaclark@example.com', 'General', 10.0, 14, null),
       ('Timothy', 'James', '1971-12-05', 'timothyjames@example.com', 'Production', 20.0, 15, 8),
       ('Patricia', 'Jackson', '1991-02-10', 'patriciajackson@example.com', 'Management', 25.0, 16, 8);

INSERT INTO artist(first_name, last_name, date_of_birth, email, stage_name, address_id, ticket_id)
VALUES ('Aria', 'Patel', '1985-03-23', 'johnsmith@example.com', null, 17, 7),
       ('Maria', 'Garcia', '1990-07-12', 'mariagarcia@example.com', 'Mystic Mari', 18, 7),
       ('Robert', 'Lee', '1995-11-04', 'robertlee@example.com', 'Bobby Beats', 19, 7),
       ('Lisa', 'Kim', '1988-09-15', 'lisakim@example.com', 'DJ Lisa Love', 20, 7),
       ('David', 'Choi', '1992-04-30', 'davidchoi@example.com', 'Electric Dave', 21, 7);

INSERT INTO stage(name, size, genre, location_id)
VALUES ('Cosmic Meadows', null, 'Dubstep', null),
       ('Interstellar Pavilion', null, 'Drum and bass', null),
       ('Nebula Arena', null, 'Mainstage', null),
       ('Galaxy Groove Dome', null, 'House', null),
       ('Starlight Stage', null, 'Trance', null);

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


