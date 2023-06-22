# Cosmic Queries
#### By: Tristan Dasilva (2395018) & Alexander Grigoratos (1887026)

[Click here to view presentation](https://eduvaniercollegeqc-my.sharepoint.com/:v:/g/personal/2395018_edu_vaniercollege_qc_ca/EYzvdZdkkN1FntUuVDHQmoABOFj7aQk0ajjDXtwW0IzJBA?e=QPA0pX)

Cosmic Queries is a cutting-edge application that is designed specifically to simplify the planning 
and management of a music festival. It serves as a database management system that features a user-friendly
content management system (CMS) that helps organizers keep track and manage important aspects of their festival's
components. Users will have the ability to easily handle important tasks such as scheduling, ticketing, production
and various other aspects of the management process.

The application would be able to connect to the festival's website where customers are able to find information
about the festival as well as purchase tickets. When tickets are bought, this will be reflected and recorded in
the application. 

**The database will be a relational database, with a general structure as follows:**
- A customer will be able to place one or many orders; the "Order" table contains all the information about the order such as
the total cost, shipping and payment method, while the "Customer" table contains information about the user.
- An order will be able to store information regarding the ticket through a relationship table linking "Order" and "Ticket".
- Staff may or may not receive a ticket from the festival, but artists will definitely need a ticket (artist pass) for entry.
- Addresses will be recorded in their own table, with city and country being connected through foreign keys from the "City"
and "Country" table.
- A "Set" will be performed at a "Stage" at a certain time by one or many artists. The use of these tables will help the user
be able to make the festival lineup into a schedule on the application.
- Each stage will have stage production requirements such as lighting, sound, stage props, etc. Types of production requirements
will be recorded in a table, "Production", and connected to one or many stages through a relationship entity.
- Amenities (such as bathrooms, rest areas, water stations, VIP areas, etc.) and vendors (such as food trucks, merch tents, jewlery stands, etc.) will be 
recorded in their own tables. Both vendors and amenities may have multiple of the same type at several locations.
- Amenities, vendors, and stages will all have a location that can be accessed using the foreign key of the "Location"
table. This will facilitate the creation of a festival map for the users of the application.
