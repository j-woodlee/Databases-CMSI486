CREATE DATABASE Gunz;

CREATE TABLE Model (
barrel_length int,
company_name VARCHAR(40) NOT NULL,
type VARCHAR(10) NOT NULL,
weight int,
caliber VARCHAR(5),
model_name VARCHAR(30),
msrp int,
number_manufactured int,
muzzle_velocity_range VARCHAR(20),
action VARCHAR(20),
PRIMARY KEY (model_name)
);

CREATE TABLE Gun (
owner_id int,
year_made int,
model_name VARCHAR(30),
serial_number VARCHAR(30),
store_id int,
PRIMARY KEY (serial_number),
FOREIGN KEY (model_name) REFERENCES model (model_name)
);

CREATE TABLE Owner (
owner_last_name text,
owner_first_name text,
owner_id int,
address text,
PRIMARY KEY (owner_id)
);

CREATE TABLE store (
store_id int,
store_name text,
address text,
PRIMARY KEY (store_id)
);



insert into model (
barrel_length, company_name, type, weight, caliber, model_name, msrp, number_manufactured, muzzle_velocity_range, action)
values
(18.5, 'Ruger', 'Rifle', 7, '5.56 NATO', 'Mini 14 Ranch Rifle', 999, 50708, '3240', 'semi-automatic');


insert into model (
barrel_length, company_name, type, weight, caliber, model_name, msrp, number_manufactured, muzzle_velocity_range, action)
values
(4.9, 'Beretta', 'Handgun', 2.125, '9mm Luger', '92FS', 700, 6969, '1100-1300', 'semi-automatic');

insert into model (
barrel_length, company_name, type, weight, caliber, model_name, msrp, number_manufactured, muzzle_velocity_range, action)
values
(4.724, 'CZ', 'Handgun', 2.2, '9mm Luger', 'CZ75', 600, 420, '1100-1300', 'semi-automatic');

insert into model (
barrel_length, company_name, type, weight, caliber, model_name, msrp, number_manufactured, muzzle_velocity_range, action)
values
(4, 'Glock', 'Handgun', 1.311875, '9mm Luger', 'Glock 19', 600, 3460, '1100-1300', 'semi-automatic');

insert into model (
barrel_length, company_name, type, weight, caliber, model_name, msrp, number_manufactured, muzzle_velocity_range, action)
values
(16.25, 'FN', 'Rifle', 8.0, '7.62x51 NATO', 'Scar 17', 2000, 9999, '2500-2800', 'semi-automatic');

insert into model (
barrel_length, company_name, type, weight, caliber, model_name, msrp, number_manufactured, muzzle_velocity_range, action)
values
(16, 'Smith & Wesson', 'Rifle', 6.7, '5.56x45 NATO', 'M&P15', 1000, 999667, '3200-3400', 'semi-automatic');



-- GUNS

insert into gun (
owner_id, year_made, model_name, serial_number, store_id)
values
(69, 1990, 'Mini 14 Ranch Rifle', '696969', 123);

insert into gun (
owner_id, year_made, model_name, serial_number, store_id)
values
(69, 1991, '92FS', '69420', 123);

insert into gun (
owner_id, year_made, model_name, serial_number, store_id)
values
(69, 1992, 'Glock 19', '6969420', 69);

insert into gun (
owner_id, year_made, model_name, serial_number, store_id)
values
(1, 1995, 'Glock 19', 'GEORGE420GODPUNISHER', 123);

insert into gun (
owner_id, year_made, model_name, serial_number, store_id)
values
(4, 2017, 'Scar 17', '6969molonlabe6969', 312);




-- Stores:

insert into store (store_id, store_name, address)
values (69, 'Bobby''s Big Guns', '22 Twain Street, Alabaster, Alabama 35007');

insert into store (store_id, store_name, address)
values (123, 'Martin B. Retting', '11029 Washington Boulevard, Culver City, California 90232');

insert into store (store_id, store_name, address)
values (312, 'Collectors Armoury', '5405 Sepulveda Boulevard, Culver City, California 90230');

insert into store (store_id, store_name, address)
values (634, 'Collectors Armoury', '5405 Sepulveda Boulevard, Culver City, California 90230');

insert into store (store_id, store_name, address)
values (50, 'CAP Tactical Firearms', '16706 Hawthorne Boulevard, Lawndale, California 90260');

insert into store (store_id, store_name, address)
values (211, 'Turner’’s Outdoorsman', '18305 Hawthorne Boulevard, Torrance, California 90504');

insert into store (store_id, store_name, address)
values (97, 'Crosshairs Gun Store', '3902 Pacific Coast Hwy, Torrance, California 90505');

insert into store (store_id, store_name, address)
values (543, 'Precise Shooter', '19820 40th Ave W #112, Lynnwood, Washington 98036');

insert into store (store_id, store_name, address)
values (544, 'Wade’’s Eastside Guns', '13570 Bel-Red Rd, Bellevue, Washington 98005');

insert into store (store_id, store_name, address)
values (545, 'Lynnwood Gun and Ammunition', '20829 WA-99 #A, Lynnwood, Washington 98306');

insert into store (store_id, store_name, address)
values (546, 'Armageddon Arms', '19991 US-2, Monroe, Washington 98272');

insert into store (store_id, store_name, address)
values (547, 'West Coast Armory', '240 NW Gilman Blvd, Issaquah, Washington 98027');

insert into store (store_id, store_name, address)
values (548, 'Kesselring Gun Shop', '4024 Old Hwy 99 North Rd, Burlington, Washington 98233');

insert into store (store_id, store_name, address)
values (549, '2nd Amendment Industries', '1299 156th Ave NE #170, Bellevue, Washington 98007');

insert into store (store_id, store_name, address)
values (550, 'Surplus Ammo & Arms', '102 Puyallup Ave B, Tacoma, Washington 98421');

insert into store (store_id, store_name, address)
values (551, 'Palmer Ordnance LLC', '14911 NW Holly RD, Seabeck, Washington 98380');

insert into store (store_id, store_name, address)
values (552, 'Keith’’s Sporting Goods', '1595 E Powell Blvd, Gresham, Oregon 97030');
insert into store (store_id, store_name, address)
values (553, 'GunRunner Arms', '93244 OR-99, Junction City, Oregon 97448');

insert into store (store_id, store_name, address)
values (554, 'Rich’’s Gun Shop', '10791 Oak St, Donald, Oregon 97020');

insert into store (store_id, store_name, address)
values (555, 'Oregon Arms & Ammunition', '2020 NW Aloclek Dr, Hillsboro, Oregon 97124');



-- Companies:

insert into company (country_of_origin, year_founded, company_name)
values
('United States of America', 1949, 'Ruger');

insert into company (country_of_origin, year_founded, company_name)
values
('United States of America', 1852, 'Smith & Wesson');

insert into company (country_of_origin, year_founded, company_name)
values
('Germany', 1976, 'Sig Sauer GmbH & Co.KG');

insert into company (country_of_origin, year_founded, company_name)
values
('United States of America', 1919, 'O.F. Mossberg & Sons');

insert into company (country_of_origin, year_founded, company_name)
values
('United States of America', 1894, 'Savage Arms');

insert into company (country_of_origin, year_founded, company_name)
values
('Italy', 1526, 'Beretta');

insert into company (country_of_origin, year_founded, company_name)
values
('Germany', 1811, 'Mauser');

insert into company (country_of_origin, year_founded, company_name)
values
('Germany', 1886, 'Carl Walther GmbH');


insert into company (country_of_origin, year_founded, company_name)
values
('Germany', 1951, 'Feinwerkbau');

insert into company (country_of_origin, year_founded, company_name)
values
('Austria', 1963, 'Glock');

insert into company (country_of_origin, year_founded, company_name)
values
('China', 1980, 'Norinco');

insert into company (country_of_origin, year_founded, company_name)
values
('Czech Republic', 1825, 'Sellier & Bellot');

insert into company (country_of_origin, year_founded, company_name)
values
('United States of America', 1794, 'Springfield Armory, Inc');

insert into company (country_of_origin, year_founded, company_name)
values
('Switzerland', 1908, 'Astra Arms');



insert into company (country_of_origin, year_founded, company_name)
values
('United States of America', 1878, 'Browning');

insert into company (country_of_origin, year_founded, company_name)
values
('United States of America', 1973, 'Bushmaster');

insert into company (country_of_origin, year_founded, company_name)
values
('United States of America', 1816, 'Remington');

insert into company (country_of_origin, year_founded, company_name)
values
('United States of America', 1945, 'Weatherby');



insert into company (country_of_origin, year_founded, company_name)
values
('Argentina', 1950, 'Bersa');

insert into company (country_of_origin, year_founded, company_name)
values
('United States of America', 2007, 'Adams Arms');



Owners:

insert into owner (owner_id, owner_last_name, owner_first_name, address)
values (1, ‘Sarantinos’, ‘George’, ‘7550 Dunbarton Ave, Los Angeles, California, 90045’);

insert into owner (owner_id, owner_last_name, owner_first_name, address)
values
(2, ‘Woodlee’, ‘Jake’, ‘1 LMU Dr., Los Angeles, California, 90045’);

insert into owner (owner_id, owner_last_name, owner_first_name, address)
    values
    (3, ‘Cease’, ‘Adam’, ‘7827 Georgetown Street, Los Angeles, California, 90045’);

insert into owner (owner_id, owner_last_name, owner_first_name, address)
values
(4, ‘Halvorson’, ‘Henry’, ‘8326 Bertona Street, Seattle, Washington 98119’);

insert into owner (owner_id, owner_last_name, owner_first_name, address)
values
(5, ‘Daniels’, ‘Emily’, ‘9829 NE Alberta Street, Portland, Oregon 97210’);

insert into owner (owner_id, owner_last_name, owner_first_name, address)
values
(6, ‘Gillis’, ‘Madison’, ‘4555 Vallejo Way, Sacramento, California 95818’);

insert into owner (owner_id, owner_last_name, owner_first_name, address)
values
(7, ‘Peterson’, ‘Ian’, ‘1798 W 11th St., Jacksonville, Florida 32209’);

insert into owner (owner_id, owner_last_name, owner_first_name, address)
values
(8, ‘Jackson’, ‘Tyler’, ‘1401 W 16th St., Jacksonville, Florida, 32209’);

insert into owner (owner_id, owner_last_name, owner_first_name, address)
values
(9, ‘Allen’, ‘Jack’, ‘515 Dowd St., Durham, North Carolina 27701’);

insert into owner (owner_id, owner_last_name, owner_first_name, address)
values
(10, ‘Prusa’, ‘Tim’, ‘399 W 32nd St., Houston, Texas 77018’);



insert into owner (owner_id, owner_last_name, owner_first_name, address)
values
(11, ‘Miller’, ‘Maddy’, ‘599 E 41st St., Houston, Texas 77022’);

insert into owner (owner_id, owner_last_name, owner_first_name, address)
values
(12, ‘Leary’, ‘William’, ‘300 Marion St., Salt Lake City, Utah 84116’);

insert into owner (owner_id, owner_last_name, owner_first_name, address)
values
(13, ‘Coulson’, ‘Anna’, ‘3001 Fulton Cir, Boulder, Colorado 80301’);
insert into owner (owner_id, owner_last_name, owner_first_name, address)
values
(14, ‘Harper’, ‘Joshua’, ‘300 Canyon St., Lander, Wyoming 82520’);

insert into owner (owner_id, owner_last_name, owner_first_name, address)
values
(15, ‘Harris’, ‘Angela’, ‘1198 W 8th Ave., Eugene, Oregon 97402’);

insert into owner (owner_id, owner_last_name, owner_first_name, address)
values
(16, ‘Smith’, ‘Jeff’, ‘1798 W 12th St., Reno, Nevada 89503’);

insert into owner (owner_id, owner_last_name, owner_first_name, address)
values
(17, ‘Jensen’, ‘Matthew’, ‘5299 Pepin Pl., Madison, Wisconsin 53705’);

insert into owner (owner_id, owner_last_name, owner_first_name, address)
values
(18, ‘Martin’, ‘Evan’, ‘213 S El Rancho Rd., Santa Fe, New Mexico 87501’);


insert into owner (owner_id, owner_last_name, owner_first_name, address)
values
(19, ‘Curtis’, ‘Abel’, ‘698 Wheeler St., Savannah, Georgia 31405’);

insert into owner (owner_id, owner_last_name, owner_first_name, address)
values
(20, ‘Baker’, ‘Sofia’, ‘6801 S Dallas St., Fort Smith, Arkansas
     72903’);


-- Queries:

SELECT * FROM company WHERE country_of_origin = 'Germany';

SELECT * FROM gun WHERE owner_id = 69;

SELECT * FROM owner WHERE owner_id = 69;

SELECT model_name FROM model WHERE type = 'Rifle';

SELECT store_id FROM store WHERE store_name = 'Bobby''s Big Guns';
