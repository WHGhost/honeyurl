CREATE DATABASE honeyurl;

USE honeyurl;

CREATE TABLE users (
	login varchar(255),
	salt varchar(6),
	password varchar(255)
);

CREATE TABLE requests (
	time DATETIME,
	ipv4 VARCHAR(15),
	ipv6 VARCHAR(45),
	method VARCHAR(7),
	name TEXT,
	userager TEXT,
	host TEXT,
	url TEXT,
	params TEXT
);

-- Create user and grant permissions --
CREATE USER 'honeyurl'@'localhost' IDENTIFIED BY "1&r7wdG0#9N1qe0xRdAta56EY^c3iC3i" ;
GRANT INSERT ON honeyurl.* TO 'honeyurl'@'localhost';
GRANT SELECT ON honeyurl.* TO 'honeyurl'@'localhost';
GRANT UPDATE on honeyurl.users TO 'honeyurl'@'localhost';
