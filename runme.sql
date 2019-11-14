ALTER USER 'root'@'localhost' IDENTIFIED BY '123';
FLUSH PRIVILEGES;
CREATE DATABASE Shop;

#unknown
CREATE TABLE Shop.products (id bigint auto_increment primary key, name varchar(256) charset utf8);
INSERT INTO Shop.products VALUES (1, "Nice dress"), (2, "Beautiful dress"), (3, "Handsome tie"), (4, "Fabulous Suit");

#user (name,password,email,handphone,address,creditno,code)
CREATE TABLE Shop.user (id bigint auto_increment primary key, name varchar(128) charset utf8, email varchar(128) charset utf8, password varchar(128) charset utf8, 
handphone varchar(128) charset utf8, address varchar(128) charset utf8, creditno varchar(128) charset utf8, code varchar(128) charset utf8);

INSERT INTO Shop.user VALUES (1, "admin", "admin@example.com", "ch3ckth1sout","1234567","Street 1","1234567","ABC"), (2, "user1","user@example.com","password1","1234567","Street 2","1234567","ABC"), (3, "user2","user2@example.com","password2","1234567","Street 3","1234567","ABC"), (4, "user3","user3@example.com","password3","1234567","Street 4","1234567","ABC");

#baduser (name,password)
CREATE TABLE Shop.baduser (id bigint auto_increment primary key, name varchar(256) charset utf8, password varchar(256) charset utf8);

#subscribe (email)
CREATE TABLE Shop.subscribe (id bigint auto_increment primary key, email varchar(256) charset utf8);

#contact contact(id, Name, Email,Subject,Message)
CREATE TABLE Shop.contact (id bigint auto_increment primary key, email varchar(256) charset utf8, subject varchar(256) charset utf8, message varchar(256) charset utf8);
