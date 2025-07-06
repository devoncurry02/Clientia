USE clientia;

INSERT INTO clients (client_key, first_name, last_name, phone_number)
VALUES (1, "Devon", "Curry", "208-832-1944"),
(2, "Emil", "Thetomp", "208-494-8482"),
(3, "Charles", "Exavier", "412-663-3489"),
(4, "Ammon", "Sheep", "123-456-7890"),
(5, "Alex", "Heck", "375-392-2832"),
(6, "Bean", "Stalk", "382-353-2376"),
(7, "Sue", "Heck", "290-121-9589"),
(8, "Charles", "Brown", "909-311-8195");

ALTER TABLE services MODIFY COLUMN description VARCHAR(150);
INSERT INTO services (service_key, name, description, client_key)
VALUES (1, "Basic Wash", "Just soap and water pressure wash to remove surface grime", 3),
(2, "Premium Wash", "Deep scrub wash with fresh scent technology", 5),
(3, "Deluxe Wash", "Power clean scrubs and sanitizes, staying fresh for days", 2);

INSERT INTO addresses (address_key, street, city, state, zip_code, client_key)
VALUES (1, "580 Tookshire Dr", "Meridian", "ID", "83646", 1),
(2, "89 Westmoor St", "Star", "ID", "83669", 2),
(3, "141 S 1st W", "Rexburg", "ID", "99234", 3),
(4, "5784 Sicamore Ave, Apt 215", "Boston", "MA", "87112", 4),
(5, "789 Wallaby Way", "Sidney", "AU", "89120", 5),
(6, "44 E Terrance Blvd", "Tacoma", "WA", "83772", 6),
(7, "978 S 4th St", "Rexburg", "ID", "83440", 7),
(8, "12765 W 38th St", "Seattle", "WA", "82240", 8);