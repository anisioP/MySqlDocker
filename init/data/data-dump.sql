CREATE DATABASE IF NOT EXISTS dbname; 
CREATE USER IF NOT EXISTS 'test'@'%' IDENTIFIED BY 'password';

GRANT ALL PRIVILEGES ON dbname.* TO 'test'@'%' IDENTIFIED BY 'password' WITH GRANT OPTION;

USE dbname; 

/*Add tables that need ot be created*/

CREATE TABLE IF NOT EXISTS User(
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
username VARCHAR(30) NOT NULL,
name VARCHAR(30) NOT NULL,
email VARCHAR(50)
)
