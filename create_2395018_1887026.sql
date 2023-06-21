DROP SCHEMA IF EXISTS festival CASCADE;
CREATE SCHEMA festival;
SET search_path TO festival;

CREATE DOMAIN email AS text CHECK (VALUE LIKE '%@%.%');
CREATE DOMAIN date_of_birth AS date CHECK (CURRENT_DATE - VALUE::date > 16);

CREATE TABLE country
(
    country_id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    country    text UNIQUE NOT NULL
);

CREATE TABLE city
(
    city_id    integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    city       text                                    NOT NULL,
    country_id integer REFERENCES country (country_id) NOT NULL
);

CREATE TABLE address
(
    address_id    integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    address_line1 text                              NOT NULL,
    address_line2 text,
    district      text                              NOT NULL,
    postal_code   text                              NOT NULL,
    phone         varchar(16)                       NOT NULL,
    city_id       integer REFERENCES city (city_id) NOT NULL
);

CREATE TABLE customer
(
    customer_id             integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    first_name              varchar(255)                            NOT NULL,
    last_name               varchar(255)                            NOT NULL,
    email                   email                                   NOT NULL,
    date_of_birth           date_of_birth                           NOT NULL,
    emerg_contact_firstname varchar(255)                            NOT NULL,
    emerg_contact_lastname  varchar(255)                            NOT NULL,
    emerg_contact_phone     varchar(255)                            NOT NULL,
    address_id              integer REFERENCES address (address_id) NOT NULL
);

CREATE TABLE "order"
(
    order_id       integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    subtotal       decimal(6, 2)                       NOT NULL,
    tax            decimal(6, 2)                       NOT NULL,
    shipping_cost  decimal(6, 2)                       NOT NULL,
    total          decimal(6, 2)                       NOT NULL,
    payment_method varchar(16)                         NOT NULL,
    order_date     timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
    customer_id    integer REFERENCES customer         NOT NULL
);

CREATE TABLE ticket
(
    ticket_id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    type      text UNIQUE NOT NULL,
    price     float
);

CREATE TABLE staff
(
    staff_id      integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    first_name    varchar(255)                            NOT NULL,
    last_name     varchar(255)                            NOT NULL,
    date_of_birth date_of_birth                           NOT NULL,
    email         email                                   NOT NULL,
    role          text,
    hourly_pay    float,
    address_id    integer REFERENCES address (address_id) NOT NULL,
    ticket_id     integer REFERENCES ticket (ticket_id)
);

CREATE TABLE order_ticket
(
    order_id  integer REFERENCES "order" (order_id) NOT NULL,
    ticket_id integer REFERENCES ticket (ticket_id) NOT NULL
);

CREATE TABLE location
(
    location_id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    latitude    decimal(8, 6) NOT NULL,
    longitude   decimal(9, 6) NOT NULL
);

CREATE TABLE stage
(
    stage_id    integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name        text UNIQUE NOT NULL,
    size        text,
    genre       text,
    location_id integer REFERENCES location (location_id)
);

CREATE TABLE artist
(
    artist_id     integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    first_name    varchar(255)                          NOT NULL,
    last_name     varchar(255)                          NOT NULL,
    date_of_birth date                                  NOT NULL,
    email         email                                 NOT NULL,
    stage_name    text,
    address_id    integer REFERENCES address (address_id),
    ticket_id     integer REFERENCES ticket (ticket_id) NOT NULL
);

CREATE TABLE set
(
    set_id     integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    start_time time DEFAULT '13:00:00' NOT NULL,
    date       date                    NOT NULL,
    stage_id   integer REFERENCES stage (stage_id)
);

CREATE TABLE artist_set
(
    artist_id INTEGER REFERENCES artist (artist_id) NOT NULL,
    set_id    INTEGER REFERENCES set (set_id)       NOT NULL
);

CREATE TABLE production
(
    prod_id     INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    type        TEXT NOT NULL,
    description TEXT
);

CREATE TABLE stage_production
(
    stage_id INTEGER REFERENCES stage (stage_id)     NOT NULL,
    prod_id  INTEGER REFERENCES production (prod_id) NOT NULL
);

CREATE TABLE amenity
(
    amenity_id  INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    type        TEXT NOT NULL
);

CREATE TABLE amenity_location
(
    amenity_id  INTEGER REFERENCES amenity (amenity_id)   NOT NULL,
    location_id INTEGER REFERENCES location (location_id) NOT NULL,
    PRIMARY KEY (amenity_id, location_id)
);

CREATE TABLE vendor
(
    vendor_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name      TEXT NOT NULL,
    type      TEXT
);


CREATE TABLE vendor_location
(
    vendor_id   integer REFERENCES vendor (vendor_id)     NOT NULL,
    location_id integer REFERENCES location (location_id) NOT NULL,
    PRIMARY KEY (vendor_id, location_id)
);


