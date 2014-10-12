CREATE DATABASE piler;

\c piler

CREATE TABLE neighborhoods (
id serial primary key,
name varchar(255),
google_name varchar(255)
);

CREATE TABLE reports (
id serial primary key,
user_id integer,
location varchar(255),
subscribe boolean,
votes integer,
picture text,
description text,
<<<<<<< HEAD
created_at timestamp,
neighborhood_id integer
=======
neighborhood_id integer,
created_at timestamp
>>>>>>> 4d4871a0a71c6e1fbe0b70fe0c170dd5dadcb6fd
);

CREATE TABLE comments (
id serial primary key,
user_id integer,
report_id integer,
content text,
created_at timestamp
);

CREATE TABLE users (
id serial primary key,
name varchar(255),
email varchar(255),
subscribe boolean,
subscription_neighborhood_id integer,
picture text,
password varchar(15)
);

