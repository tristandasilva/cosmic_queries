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
       ('789 Maple Boulevard', null, 'Westwood', '90024', '323-555-9012', 5);

INSERT INTO customer (first_name, last_name, email, date_of_birth, emerg_contact_firstname, emerg_contact_lastname,
                      emerg_contact_phone, address_id)
VALUES ('Emily', 'Davis', 'emilydavis@example.com', '1990-01-01', 'Samantha', 'Jones', '555123456', 1),
       ('David', 'Taylor', 'davidtaylor@example.com', '1988-05-12', 'Michael', 'Smith', '555234567', 2),
       ('Melanie', 'Anderson', 'melanieanderson@example.com', '1975-11-21', 'Emily', 'Brown', '555345678', 3),
       ('Jason', 'Moore', 'jasonmoore@example.com', '1995-03-07', 'David', 'Johnson', '555456789', 4),
       ('Sophia', 'Nguyen', 'sophianguyen@example.com', '1982-09-15', 'Jason', 'Clark', '555567890', 5),
       ('John', 'Doe', 'johndoe@example.com', '1990-01-01', 'Samantha', 'Jones', '555123456', 5),
       ('Jane', 'Doe', 'janedoe@example.com', '1988-05-12', 'Michael', 'Smith', '555234567', 6),
       ('Robert', 'Johnson', 'robertjohnson@example.com', '1975-11-21', 'Emily', 'Davis', '555345678', 7),
       ('Sarah', 'Wilson', 'sarahwilson@example.com', '1995-03-07', 'David', 'Taylor', '555456789', 8),
       ('Jessica', 'Clark', 'jessicaclark@example.com', '1982-09-15', 'Jason', 'Moore', '555567890', 9),
       ('Alex', 'Garcia', 'alexgarcia@example.com', '1990-02-14', 'Sophia', 'Nguyen', '555123456', 10);

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
       ('Backstage pass', 500.00);


