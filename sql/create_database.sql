CREATE DATABASE honeyurl;

USE honeyurl;

CREATE TABLE users (
	login varchar(255),
	salt varchar(6),
	password varchar(255)
);

CREATE TABLE requests (
	time DATETIME,
	ip VARCHAR(45),
	method VARCHAR(7),
	name TEXT,
	useragent TEXT,
	host TEXT,
	url TEXT,
	params TEXT
);
