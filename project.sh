#!/bin/bash

# log into mysql using user:root pass:root
mysql -u root -proot

# create new user (user:lucifer,host:localhost,pass:lucifer)
CREATE USER 'lucifer'@'localhost' IDENTIFIED BY 'lucifer';

# show all users in mysql
SELECT User, Host FROM mysql.user;

# show current user
SELECT user();

# grant all privilaeges to user (make superuser, only accessible from localhost)
GRANT ALL PRIVILEGES ON *.* TO 'lucifer'@'localhost' WITH GRANT OPTION;

# grant all privilaeges to user (make superuser, accesible from any host)
GRANT ALL PRIVILEGES ON *.* TO 'lucifer'@'%' WITH GRANT OPTION;

# show grants for lucifer@localhost
SHOW GRANTS FOR 'lucifer'@'localhost';

# show grants for current user
show grants for current_user();

# change access for user
grant SELECT,INSERT,UPDATE,DELETE ON `db`.* TO 'user'@'host';

# create database
CREATE DATABASE test_1;

# DROP DB
DROP database test_1;

# show databases of a particular user
SELECT * from mysql.db where user="lucifer";

# grant specific access to user for a particular db
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE ON eh1.* TO user1@'%' IDENTIFIED BY 'user1_password';


# change db
use testdb_1;

# create table
create table users(id int(10),name varchar(20));

# insert values
insert into users values(1,'lucifer');


# revoke PRIVILEGES of user
revoke insert on *.* from 'lucifer'@'localhost';
